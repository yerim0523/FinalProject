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
<title>mylist.jsp</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="js/jquery-1.12.1.min.js"></script>
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
    <!-- custom js -->
    <script src="js/custom.js"></script>
    
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
						<h3>내 모임 </h3>
					</div>
				</div>
				<br>
				
					<div class="page-header">
						<h5>참여 모임</h5>
					</div>
					<br>
					<div class="row" >
						<c:forEach var="nowGroup" items="${nowGroup }">
						<div class="thumbnail " style="padding: 10px;">
							<img class="image" src="images/iu.jpg">
							<br><br>
							<div class="caption">
								<span class="title">${nowGroup.grName }</span>
								<p>ㅁㄴㅇㄹ</p>
								<div align="center">
									<button type="button" class="btn4" data-toggle="modal" data-target="#feedbackPopup" onclick="fn_">피드백</button>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
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
<div class="modal" id="feedbackPopup">
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
					<i class="fas fa-clipboard-list fa-7x"></i>
					</div>
					<br><br><br><br>
					<!-- 
					<div style="width: 400px;" align="left">
						<ul class="fb">
							<li>모임 내용에 알맞게 모임이 진행되었다.</li>
								<input type="radio" name="feed" class="yes"> 예
								<input type="radio" name="feed" class="no"> 아니요
							<li>이번회차 모임에 정산이 정상적으로 이루어졌다.</li>
						</ul>
					</div>
					 -->
					<div class="feed">
						<span style="font-size: 19px;"><i class="fas fa-star"></i></span> &nbsp;
						<span class="text">모임 내용에 알맞게 모임이 진행되었다.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label for="yes" style="margin-left: 76px;"><input type="radio" name="feed" id="yes" value="예"> 예</label>&nbsp;&nbsp;
							<label for="no"><input type="radio" name="feed" id="no"> 아니요</label>
					</div>
					<br>
					<div class="feed">
						<span style="font-size: 19px;"><i class="fas fa-star"></i></span> &nbsp;
						<span class="text">이번 회차 모임에 정산이 정상적으로 이루어졌다.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<label for="yes"><input type="radio" name="feed" id="yes" value="예"> 예</label>&nbsp;&nbsp;
							<label for="no"><input type="radio" name="feed" id="no"> 아니요</label>
					</div>
					<br><br>
					<div align="center">
						<button type="button" class="btn4" value="제출">제출</button>&nbsp;
						<button type="button" class="btn4" value="취소">취소</button>
					</div>
					
				</div>
			</section>
        </div>
        <div class="modal-footer border-top-0">
        	<button type="button" class="btn" data-dismiss="modal">닫기</button>
        </div>
       
    </div>
  </div>
</div>



</body>
</html>