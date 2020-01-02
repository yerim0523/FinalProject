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
<title>Pay.jsp</title>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

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
    
    button.btn4{
    background-color: #5cb196;
    }
    
    </style>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div>
	<c:import url="MeetingBar.jsp"></c:import>
</div>
</section>

<br><br><br><br>
<div>
	<h3 align="center">[결제하기]</h3>
	<br><br>
	<h5 align="center">결제 금액은 ${ngCost }원 입니다.</h5>
	<h5 align="center">원하는 결제 수단을 선택해주세요.</h5>
</div>

<br><br><br><br>

<div class="container">
	<div class="row" align="center" >
	  <div class="col-sm-6 col-md-4" style="background-size: 50%;">
	    <div class="thumbnail">
	      <span><i class="fas fa-mobile-alt fa-7x"></i></span>
	      <br><br>
	      <div class="caption">
	        <!-- <p><a href="phonepage.action" class="btn4" role="button">휴대폰결제</a></p> -->
	        <button type="button" class="btn4" value="1" name="phonePay" id="phonePay" style="background-color: #5cb196" onclick="location.href='phonepage.action'">휴대폰결제</button>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-6 col-md-4" style="background-size: 50%;">
	    <div class="thumbnail">
	      <span><i class="fas fa-credit-card fa-7x"></i></span>
	      <br><br>
	      <div class="caption">
	        <!-- <p><a href="cardpage.action" class="btn4" role="button">카드결제</a></p> -->
	        <button type="button" class="btn4" value="2" name="cardPay" id="phonePay" style="background-color: #5cb196" onclick="location.href='cardpage.action'">카드결제</button>
	      </div>
	    </div>
	  </div>
	  <div class="col-sm-6 col-md-4" style="background-size: 50%;">
	    <div class="thumbnail">
	      <span><i class="fas fa-dollar-sign fa-7x"></i></span>
	      <br><br>
	      <div class="caption">
	        <!-- <p><a href="bankpage.action" class="btn4" role="button">가상계좌결제</a></p> -->
	        <button type="button" class="btn4" value="3" name="bankPay" id="bankPay" style="background-color: #5cb196" onclick="location.href='bankpage.action'">가상계좌결제</button>
	      </div>
	    </div>
	  </div>
	</div>
</div>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>