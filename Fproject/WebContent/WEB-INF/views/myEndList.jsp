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

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

    <!-- jquery plugins here-->
    <!-- jquery -->
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
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
    <script src="js/waypoints.min.js"></script>
    
<style type="text/css">
	.image
	{
		width: 170px;
		height: 150px;
	}
	
	button.btn4{
	    width: 90px;
    	height: 50px;
    	padding-left: 0;
    	padding-right: 0;
	}
</style>

<script type="text/javascript">
	$(function() {
		
		$(".gomodal").click(function() {
			//alert($("#modalNg").val());
			
			var params = {};
			params.memId = $("#memId").val();
			params.ngCode = $("#modalNg").val();
			
			//alert(params.memId);

	         $.ajax({
	                type : "POST"
	                , url : "selectfeed.action"
	                , data : params
	                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
	                 , success: function(data){
	                    var isFeed = data;
	                    if(isFeed === "Y"){
	                       alert("이미 피드백을 작성하셨습니다.");
	                       $('.feedback').modal('hide');
	                    }else{
	                       $('.feedback').modal('show');
	                    }
	                 }
	             });
		});
		
	});

	function ngCodeSend(Code) {
		var ngCode = Code;
		
		$("#modalNg").val(ngCode);
		
		//alert($("#modalNg").val());
	}
	
	function feedSubmit() {
		//alert($("#memId").val());
		//alert($("#modalNg").val());
		
		if (confirm("피드백을 제출하시겠습니까 ? \n제출하신 후에는 수정이 불가능합니다.") == true)
		{    
			var params = {};
				params.memId = $("#memId").val();
				params.ngCode = $("#modalNg").val();
				
				alert($("#memId").val());
				alert($("#modalNg").val());
			
			$.ajax({
                type : "POST"
                , url : "findjoincode.action"
                , data : params
                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
                //, dataType:"text" // text, xml, json, script, html 등 : 서버에서 받을 데이터 형식(default - MIME 타입)
                 , success: function(data){
                	var joinCode = data;
                	var goodPro = $(":input:radio[name=goodpro]:checked").val();
                	var goodCal = $(":input:radio[name=goodcal]:checked").val();
                	alert("피드백 작성이 완료되었습니다.");
                	location="feedinsert.action?joinCode="+joinCode+"&goodPro="+goodPro+"&goodCal="+goodCal;
                 }
                ,error: function(data){
                	 var joinCode = data;
                	alert(data);
                }
             });
			
		}else{   //취소
		    return;
		}	
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
						<h3>> 내 모임 목록</h3>
					</div>
				</div>
				<br><br>
				
					<div class="page-header">
						<h5 style="font-weight: bold;">종료 모임</h5>
					</div>
					<br><br>
					<div class="row" >
						<c:forEach var="endGroup" items="${endGroup}">
						<div class="thumbnail" style="padding-right: 20px; max-width: 200px;">
							<div class="text-center">
								<img class="image" src="uploads/${endGroup.ngPic}">
							</div>
									<i id="emptyHeart" class="far fa-heart"></i>
									<a href="#모임상세페이지?ngCode=${endGroup.ngCode }" class="justify-content-between d-flex"> 
									<span class="color" style="text-align: left;">
									<c:if test="${endGroup.grCate2Name != null }">
									<span style="font-weight: bold; font-size: 13px; color: gray;">${endGroup.grCate1Name } | ${endGroup.grCate2Name }</span>
									</c:if>
									<c:if test="${endGroup.grCate2Name == null }">
										${endGroup.grCate1Name }
									</c:if>
									</span>
									<span style="text-align: right; font-size: 13px; color: gray;"><span style="color: orange; font-weight: bold; ">${endGroup.grCount }</span>회차</span>
									</a>
								<div style="height: 40px;">
								<span style="margin-top:10px; font-size: 18px; font-weight: bold;">${endGroup.grName }</span>
								</div>
								<div align="center" style="margin-top: -20px;">
								<p class="text-right">${endGroup.memName }</p>
								</div>
								<div align="center" style="margin-top: -20px;">
									<input type="hidden" name="memId" id="memId" value="${endGroup.memId }">
									<input type="hidden" name="ngCode" id="ngCode" value="${endGroup.ngCode }">
									<button type="button" class="btn4 gomodal" data-target="#feedbackPopup" onclick="ngCodeSend(${endGroup.ngCode})">피드백</button>
								</div>
						</div>
						</c:forEach>
					</div>
					<c:if test="${empty endGroup }">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;종료된 모임이 존재하지 않습니다. <br><br>현재 참여중인 모임이 종료되면 이곳에 모임 리스트가 표시됩니다 ~ ! <br><br>(※ 단, 환불된 모임은 표시되지 않습니다.)</p>
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

			
<!-- 피드백 모달 --> 
<div class="modal feedback" id="feedbackPopup">
    <div class="modal-dialog modal-lg shadow-sm mt-10p">
      <div class="modal-content">
        <div class="modal-header">
          <b class="font-14">피드백</b>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
			<section class="course_details_area section_padding" style="padding-bottom: 0;">
				<div class="container">
					<div align="center">
						<h3>모임 평가</h3>
					</div>
					<br><br>
					
					<div align="center">
					<i class="fas fa-clipboard-list fa-5x"></i>
					</div>
					<br><br><br><br>
					<div class="feed">
						<input type="hidden" id="modalNg">
						<span style="font-size: 19px;"><i class="far fa-check-circle" style="color:blue; font-size: 22px;"></i></span> &nbsp;
						<span class="text">모임 내용에 알맞게 모임이 진행되었다.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label for="yes" style="margin-left: 76px;">
							<input type="radio" name="goodpro" id="goodpro" value="2"> 예</label>&nbsp;&nbsp;
							<label for="no">
							<input type="radio" name="goodpro" id="goodpro" value="3"> 아니요</label>
					</div>
					<br>
					<div class="feed">
						<span style="font-size: 19px;"><i class="far fa-check-circle" style="color:blue; font-size: 22px;"></i></span> &nbsp;
						<span class="text">이번 회차 모임에 정산이 정상적으로 이루어졌다.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label for="yes"><input type="radio" name="goodcal" id="goodcal" value="2"> 예</label>&nbsp;&nbsp;
						<label for="no"><input type="radio" name="goodcal" id="goodcal" value="3"> 아니요</label>
						
					</div>
					<br><br>
					<div align="center">
						<button type="button" class="btn4" value="제출" onclick="feedSubmit()">제출</button>&nbsp;
						<button type="button" class="btn4" data-dismiss="modal">취소</button>
					</div>
				</div>
			</section>
        </div>
       
    </div>
  </div>
</div>


</body>
</html>