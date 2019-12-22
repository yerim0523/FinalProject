<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback.jsp</title>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/button.css" >

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

.fb
{
	list-style: circle;
}

.feed
{
	margin-left: 250px;
}
.text
{
	font-weight: bold;
	font-size: 18px;
}

</style>

</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

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

<br><br><br><br>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>