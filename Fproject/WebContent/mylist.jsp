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
		width: 570px;
		height: 150px;
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
						<div class="thumbnail " style="width: 30%; padding: 30px;">
							<img class="image" src="images/iu.jpg">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
								<div align="center">
									<button type="button" class="btn4">피드백</button>
								</div>
							</div>
						</div>
						
						<div class="thumbnail" style="width: 30%; padding: 30px;">
							<img class="image" src="images/me.png">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
								<div align="center">
									<button type="button" class="btn4">피드백</button>
								</div>
							</div>
						</div>
						
						<div class="thumbnail" style="width: 30%; padding: 30px;">
							<img class="image" src="images/me.png">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
								<div align="center">
									<button type="button" class="btn4">피드백</button>
								</div>
							</div>
						</div>
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

</body>
</html>