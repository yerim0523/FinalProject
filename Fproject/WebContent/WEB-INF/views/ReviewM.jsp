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
<title>모임후기(메이트)</title>

<!-- css -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="css/star.css" rel="stylesheet" type="text/css" />


<!-- 에디터영역을 만드는 역할 -->
<script src="js/jquery-1.12.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-select.min.js"></script>

<!-- jquery plugins here-->
<!-- swiper js -->
<script src="js/swiper.min.js"></script>
<!-- swiper js -->
<script src="js/masonry.pkgd.js"></script>
<!-- particles js -->
<script src="js/owl.carousel.min.js"></script>
<!-- swiper js -->
<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script> 

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<style type="text/css">

	.starR1{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float: right;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	.starR2{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float: right;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	
	.balloon {  
		 position:relative; 
		 padding: 20px;
		 margin: 20px;
		 width: 700px; 
		 background: #eec4c4; 
		 border-radius: 10px;
	}
	
	.balloon:after { 
		 border-top:0px solid transparent; 
		 border-left: 10px solid transparent; 
		 border-right: 10px solid transparent; 
		 border-bottom: 10px solid 	#eec4c4; 
		 content:""; 
		 position: absolute;
		 top:-10px;
		 left: 100px;  
	}
	
	.review
	{
	  border: 1px solid gray;
	  border-radius: 30px;
	  padding: 30px;
	  margin: 10px;
	  align-self: center;
	  width: 700px;
	}
	
	.review p, .balloon p
	{
		font-weight: bold;
		font-size: 11pt;
		padding-left: 20px;
		color: #333333;
	}
	
	.review a, .balloon a
	{
		font-weight: bold;
		font-size: 13pt;
		padding-left: 20px;
		color: #333333;
	}
	
	.groupCnt
	{
		font-weight: bold;
		font-size: 11pt;
		color: gray;
	}
	
	.feedback-input {
		color: black;
		font-family: Helvetica, Arial, sans-serif;
	  font-weight:500;
		font-size: 15px;
		border-radius: 0;
		line-height: 22px;
		background-color: #fbfbfb;
		padding: 13px 13px 13px 54px;
		margin-bottom: 10px;
		width:100%;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		-ms-box-sizing: border-box;
		box-sizing: border-box;
	  border: 1 solid gray;
	}
	
	.feedback-input:focus{
		background: #fff;
		box-shadow: 0;
		border: 3px solid pink;
		color: black;
		outline: none;
	  padding: 13px 13px 13px 54px;
	}
	
	.focused{
		color:#30aed6;
		border:#30aed6 solid 3px;
	}
	
	#comment{
		background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
		background-size: 30px 30px;
		background-position: 11px 8px;
		background-repeat: no-repeat;
	}
	
	textarea {
	    width: 100%;
	    height: 150px;
	    line-height: 150%;
	    resize:vertical;
	}
	
	
	div.modal-body.center-block {
	  display: block;
	  margin-left: 20px;
	  margin-right: 20px;
	}
	
	.siren {
	border: 0px;
	background-color: white;
	padding: 0px;
}

.modal-dialog.modal-80size {
  width: 80%;
  height: 80%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  height: auto;
  min-height: 80%;
}

.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) { 
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

.reporttext
{
	height: calc(1.5em + .75rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
    font-weight: 400;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}

</style>

<script type="text/javascript">
	
	$(function()
	{
		$('[type*="radio"]').change(function () {
			var rate = $(this).val();
			
			$("#reviewStar").val(rate);
			
		});
		
		
		$(".goReview").click(function() {
			//alert($("#modalNg").val());
			
			var params = {};
			params.memId = $("#memId").val();
			params.ngCode = $("#ngCode").val();
			
			//alert(params.memId);

	         $.ajax({
	                type : "POST"
	                , url : "selectreview.action"
	                , data : params
	                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
	                 , success: function(data){
	                    var isReview = data;
	                    if(isReview === "Y"){
	                       alert("작성 권한 있음.");
	                       $('.reviewM').modal('show');
	                    }else{
	                    	alert("\n\n　　　모임에 가입한적이 있는 회원들만 가능합니다~!\n　　　모임을 가입해주세요!~");
	                       $('.reviewM').modal('hide');
	                    }
	                 }
	             });
		});

	});
	
	
	function formCheck()
	{
		//alert("폼체크합니다^^");

		var star = $("#reviewStar").val();
		
		if(star=="")
		{
			alert("후기작성 시, 별점은 꼭 선택하셔야 합니다.");
			return;
		}
		
		if(confirm("후기를 제출하시겠습니까 ? \n제출하신 후에는 수정이 불가능합니다.") == true)
		{
			var cont = $("#comment").val();
			var star = $("#reviewStar").val();
			var ngCode = $("#ngCode").val();
			var memId = $("#memId").val();
			
			var params = {};
				params.memId = memId;
				params.ngCode = ngCode;
			
				$.ajax({
	                type : "POST"
	                , url : "findjoincode.action"
	                , data : params
	                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
	                //, dataType:"text" // text, xml, json, script, html 등 : 서버에서 받을 데이터 형식(default - MIME 타입)
	                 , success: function(data){
	                	var joinCode = data;
	                	alert("후기 작성이 완료되었습니다.");
	                	location="reviewinsert.action?joinCode="+joinCode+"&reviewStar="+star+"&reviewCont="+cont+"&ngCode="+ngCode;
	                 }
	                ,error: function(data){
	                	 var joinCode = data;
	                	alert(data);
	                }
	             });
			
			alert("별점 : " + star + "\n내용 : " + cont + "\nngCode : " + ngCode + "\nmemId : " + memId + " \njoinCode : " + joinCode);
			
		}
		else
		{
			return;
		}
	}
	
	function report()
	{
		var reportId = document.getElementById("reportId").value;
		var reviewNum = document.getElementById("reviewNum1").value;
		
		document.getElementById("reportId").value = reportId;
		document.getElementById("reviewNum").value = reviewNum;
	}
	
	function reviewReport()
	{
		f = document.reviewForm;
		
		var repCateSel = document.getElementById("repCateSel");
		//alert(repCateSel.options[repCateSel.selectedIndex].value);
		var cateVal = repCateSel.options[repCateSel.selectedIndex].value;
		
		if(cateVal == 0)
		{
			alert("신고 사유를 선택해주세요.");
			return;
		}
		
		if(cateVal == 1 || cateVal == 2 || cateVal == 3 || cateVal == 4)
		{
			document.getElementById("repCate").value = cateVal;
			f.submit();
		}
		
		
		
		
	}
	
	
</script>

</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div>
		<c:import url="MeetingBar.jsp"></c:import>
	</div>
	
	<div class="container">
		<br><br>
		
		<div class="col-2">
			<p style="font-weight: bold; font-size: 18pt; color:#000000;">| 모임후기</p>
		</div>
		
		<div class="col-12 d-flex">
        <div class="col-12 p-0 d-flex align-items-center justify-content-end">
           			<div class="starRev">
           			${AvgStar} 
           			
           			<c:if test="${AvgStar eq 0}">
           				<c:forEach begin="0" end="4">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			<c:if test="${AvgStar ne 0}">
           				<c:forEach begin="1" end="${AvgStar/1}">
           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           				<c:if test="${AvgStar%1 ne 0}">
           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:if>
           				<c:forEach begin="1" end="${5 - AvgStar/1}">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			
            		</div>
        		</div>
        <div class="col-2 p-0 d-flex align-items-center justify-content-start">&nbsp;&nbsp;<span style="font-weight: bold;">${AvgStar} /${TotalPeople}  명</span></div>
    	</div>
    	
    	<br>    
		
		<div align="right">
			<c:if test="${empty sessionScope.member}">
				<input type="button" class="btn4" value="후기 작성하기" data-toggle="modal" data-target="#loginNeed" style="width: 200px;">
			</c:if>
			<c:if test="${!empty sessionScope.member}">
				<input type="button" class="btn4 goReview" value="후기 작성하기" data-toggle="modal" style="width: 200px;">
			</c:if>
		</div>
		
		<br>
		
		<br>
		
		<c:forEach var="reviewM" items="${reviewM}">
		<div align="center">
			<div class="review" align="left">
			<div align="left">
				<img src="uploads/${reviewM.memPic }" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">${reviewM.memName }</a>
				<form action="allreportpage.action" method="post">
				<div style="float: right;">
					<button type="button" class="siren" data-toggle="modal" data-target="#myModal" onclick="report()">
						<img src="<%=cp%>/images/siren.png"	style="width: 30px; height: 30px;">									
					</button>
					<input type="text" name="memId" id="memId" value="${reviewM.memId }">
					<input type="text" name="reviewNum" id="reviewNum" value="${reviewM.reviewNum }">
				</div>
				</form>
				<div class="col-12 p-0 d-flex align-items-center justify-content-end">
           			<div class="starRev">
           			${reviewM.reviewStar }
           			
           			<c:if test="${reviewM.reviewStar eq 0}">
           				<c:forEach begin="0" end="4">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			<c:if test="${reviewM.reviewStar ne 0}">
           				<c:forEach begin="1" end="${reviewM.reviewStar/1}">
           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           				<c:if test="${reviewM.reviewStar%1 ne 0}">
           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:if>
           				<c:forEach begin="1" end="${5 - reviewM.reviewStar/1}">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			
            		</div>
        		</div><br>
				<p>${reviewM.reviewCont }</p>
			</div>
			</div>
			
			<c:if test="${empty reviewM.reviewComCont }">
				<div class="balloon" align="left"><br>
					<p style="font-size: 15px;"><i class="fas fa-thumbtack"></i>&nbsp;&nbsp;&nbsp; 호스트가 답변을 아직 작성하지 않았어요.</p>
				</div>
			</c:if>
			
			<c:if test="${!empty reviewM.reviewComCont }">
			<div class="balloon" align="left">
				<img src="images/${reviewM.hostPic }" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">${reviewM.hostName }</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<br><br>
				<p>
				${reviewM.reviewComCont }
				</p>
			</div>
			</c:if>
		</div>
		<br><br>
		</c:forEach>
		
	</div>

</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


<!-- 후기작성 모달창 -->
<div class="modal modal-center fade reviewM" id="reviewWrite" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">후기 작성하기</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
			<p class="text-center">후기로 남기고 싶은 글을 작성해주세요~!</p>
			<form action="reviewmeetinsert.action" method="post" name="reviewForm" id="reviewForm">
				<fieldset class="rating">
				    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
				    <input type="radio" id="star4half" name="rating" value="4.5" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
				    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
				    <input type="radio" id="star3half" name="rating" value="3.5" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
				    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
				    <input type="radio" id="star2half" name="rating" value="2.5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
				    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
				    <input type="radio" id="star1half" name="rating" value="1.5" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
				    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
				    <input type="radio" id="starhalf" name="rating" value="0.5" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
				    <input type="hidden" name="reviewStar" id="reviewStar">
				</fieldset>
			<p class="text">
		        <textarea name="text reviewCont" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="리뷰를 작성해주세요~!"></textarea>
		        <input type="hidden" name="memId" id="memId" value="${member.memId }">
		        <input type="hidden" name="ngCode" id="ngCode" value="${ngCode }">
     	 	</p>
     	 	</form>
     	 	<div align="center">
     	 	<button class="btn4" onclick="formCheck()">작성</button>
     	 	<button class="btn4" data-dismiss="modal">취소</button>
     	 	</div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>


<!-- 로그인 모달창 -->
<div class="modal modal-center fade" id="loginNeed" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">※ 로그인 경고 ※</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
			<p class="text-center">로그인이 필요한 서비스입니다.</p>
			<div align="right">
				<a href="login.action"><button type="button" class="btn_1" >로그인</button></a>
				<button type="button" class="btn_1" data-dismiss="modal">닫기</button>
			</div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<!-- 
<div class="modal modal-center fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-80size modal-center" role="document">
		<form action="allreportinsert.action" method="post" name="reviewForm">
		<div class="modal-content modal-80size">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">후기 신고</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				신고 ID : <input type="text" class="reporttext" id="reportId" name="reportId" value="" readonly="readonly"><br><br>
				<input type="text" id="reviewNum" name="reviewNum" value="">
				신고 사유 :
				<select id="repCateSel" name="repCateSel" class="reporttext" style="width: 300px;">
					<option id="repCateSel" value="0">선택</option>
					<option id="repCateSel" value="1">욕설</option>
					<option id="repCateSel" value="2">광고</option>
					<option id="repCateSel" value="3">타인비하</option>
					<option id="repCateSel" value="4">기타</option>
				</select>
				<input type="text" id="repCate" name="repCate" value="">
			</div>
			<div class="modal-footer">
				<button type="button" class="btn4" onclick="reviewReport()">신고</button> 
				<button type="button" class="btn4" data-dismiss="modal">닫기</button>
			</div>
		</div>
		</form>
	</div>
</div>
 -->
</body>
</html>