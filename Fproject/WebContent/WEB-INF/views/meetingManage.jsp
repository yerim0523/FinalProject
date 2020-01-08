<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myEndList.jsp</title>

<script type="text/javascript" src="<%=cp%>/js/highcharts.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.js"></script>

    <!-- jquery plugins here-->
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    
<style type="text/css">
	.image {
		width: 170px;
		height: 150px;
	}
	
	button.btn4 {
		width: 90px;
		height: 44px;
		padding-left: 0;
		padding-right: 0;
	}
	
	.modal-dialog.modal-80size {
	  width: 50%;
	  height: 50%;
	  margin: 0;
	  padding: 0;
	}
	
	.modal-content.modal-80size {
	  min-height: 40%;
	}
	
	.modal.modal-center {
	  text-align: center;
	}
	
	@media screen and (min-width: 500px) {
	  .modal.modal-center:before {
	    display: inline-block;
	    vertical-align: middle;
	    content: " ";
	    height: 100%;
	  }
	}
	
	.modal-dialog.modal-center {
	  display: inline-block;
	  text-align: left;
	  vertical-align: middle;
	}
	
	.center-block {
	  display: block;
	  margin-left: auto;
	  margin-right: auto;
	}

</style>

<script type="text/javascript">
	
	grCodeList = new Array();
	
	$(function()
	{
		
	});
	
	function formCheck()
	{
		//alert("확인");
		var grCode = document.getElementsByName("grList");
		$('#chartFind').modal("hide");
		$(".modal-backdrop").remove(); 
		if($("input:checkbox[name='grList']").is(":checked")==false)
		{
			alert("모임을 최소 한 개는 선택해주셔야 합니다.");
			return;
		}

		count = 0; // 배열 방 컨트롤 위한 변수
		
		for (var i = 0; i < grCode.length; i++)
		{
			if (grCode[i].checked == true) // 체크 된 값만 
			{
				grCodeList.push(grCode[i].value); // value 를 임시 배열에 삽입(최소1개, 최대2개)
				//alert(grCodeList[count]); 
				count++;

				if (count == 4)
				{
					alert("통계 표시 모임은 3개까지 선택 가능합니다.");
					return;
				}
			}
		}
		
		$("#grCode1").val(grCodeList[0]);
		$("#grCode2").val(grCodeList[1]);
		$("#grCode3").val(grCodeList[2]);
		
		var params = new Array();
		var grCode1 = $("#grCode1").val();
		var grCode2 = $("#grCode2").val();
		var grCode3 = $("#grCode3").val();
		
		if (grCode1!="")
		{
			params.push(grCode1);
		}
		if (grCode2!="")
		{
			params.push(grCode2);
		}
		if (grCode3!="")
		{
			params.push(grCode3);
		}
		
		//alert(params);
		
		
		
		// ★★★
		for (var i = 0; i < 3; i++)
		{
			$("#genderSpace"+(i+1)).empty();
			$("#ageSpace"+(i+1)).empty();
		}
		
		//alert(params.length);
		
			alert(params[i]);
			
			 $.ajax({
	                type : "GET"
	                , url : "genderfind.action?grCode="+params[0]
	                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
	                 , success: function(data){
		                    console.log(data.grCode);
		                    console.log(data.men);
		                    console.log(data.women);
		                    console.log(data.unknown);
	                 }
	                ,error:function(request, error) {

		        		alert("fail");
		        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

	        		}
	             });
			
			showGenderChart(params[0], 1);
			showAgeChart(params[0], 1);
		
		grCodeList = new Array();
	}
	
	
	function showGenderChart(grCode, num)
	{
			Highcharts.chart('genderSpace'+num, {
			    chart: {
			        plotShadow: false,
			        type: 'pie'
			    },
			    title: {
			        text: grCode
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.2f}%</b>'
			    },
			    series: [{
			        name: 'Language',
			        colorByPoint: true,
			        data: [{
			            name: '남자',
			            y: 8,
			            sliced: true,
			            selected: true
			        }, {
			            name: '여자',
			            y: 5
			        }, {
			            name: '알수없음',
			            y: 2
			        }]
			    }]
			});
	}
	

	function showAgeChart(grCode, num)
	{
		
			Highcharts.chart('ageSpace'+num, {
			    chart: {
			        plotShadow: false,
			        type: 'pie'
			    },
			    title: {
			        text: grCode
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.2f}%</b>'
			    },
			    series: [{
			        name: 'Language',
			        colorByPoint: true,
			        data: [{
			            name: '10대',
			            y: 3,
			            sliced: true,
			            selected: true
			        }, {
			            name: '20대',
			            y: 5
			        }, {
			            name: '30대',
			            y: 3
			        }, {
			            name: '40대',
			            y: 1
			        }, {
			            name: '50대',
			            y: 2
			        }, {
			            name: '기타',
			            y: 1
			        }]
			    }]
			});

	}
	
</script>

</head>
<body>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<br><br>
<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div class="container">
	<div class="row">
		<c:import url="sidebar.jsp"></c:import>
		<div class="col-md-9">
			<div class="container" style="margin-left: 50px;">
				<div class="page-header">
					<div>
						<h3>> 모임 관리</h3>
						<hr>
					</div>
				</div>
				<br><br>

					<c:if test="${empty sessionScope.member}">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;관리중인 모임이 존재하지 않습니다. <br><br>모임 확정 개설된 이력이 있으면 이곳에 표시됩니다 ~ !</p>
						</div>
					</c:if>
					
					<c:if test="${!empty sessionScope.member}">
					<div>
						<button class="btn4" type="button" data-toggle="modal" data-target="#chartFind" style="width: 130px;">모임선택하기</button>
						<br><br>
						<h4>성별 통계</h4>
						<div class="row">
							<div id="genderSpace1" style="width: 250px;"></div>
							<div id="genderSpace2" style="width: 250px;"></div>
							<div id="genderSpace3" style="width: 250px;"></div>
						</div>
						<br><br>
						<h4>연령별 통계</h4>
						<div class="row">
							<div id="ageSpace1" style="width: 250px;"></div>
							<div id="ageSpace2" style="width: 250px;"></div>
							<div id="ageSpace3" style="width: 250px;"></div>
						</div>
					</div>
					</c:if>
					
					<br><br>
			</div>
		</div>
	</div>
</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


<!-- 차트 확인할 모임 선택(최대 3개) -->
<div class="chartFind modal modal-center fade" id="chartFind" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">~ 통계 모임 선택 ~</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
			<p class="text-center">통계를 확인할 모임을 선택해주세요.</p>
			<div>
				<c:forEach var="grList" items="${grCodeList }">
					<input type="checkbox" id="grList" name="grList" value="${grList.grCode }">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${grList.grName }<br>
				</c:forEach>
				<br><br>
				<button class="btn4" onclick="formCheck()" style="width: 130px;">차트보기</button>&nbsp;
				<button type="button" class="btn_1" data-dismiss="modal">닫기</button>
				<input type="hidden" id="grCode1">
				<input type="hidden" id="grCode2">
				<input type="hidden" id="grCode3">
			</div>
      </div>
    </div>
  </div>
</div>


</body>
</html>