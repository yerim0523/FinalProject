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
<title>AllMeeting.jsp</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

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

<!-- jquery plugins here-->
   
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
	
	.img-responsive
	{
		height: 200px;
		width: 500px;
	}
	
	.left
	{
		width: 50%;
		float: left;
		font-size: 30px;
		font-weight: bold;
	}
	.right 
	{
		width: 50%;
		float: ri
	}
	
	/* div.name
   {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    div.heart
    {
    	width: 50%;
    	float: right;
    	box-sizing: border-box;
    } */
    
</style>

</head>
<body>

<div class="header">
	<jsp:include page="bar.jsp"></jsp:include>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div>
	<c:import url="MeetingBar.jsp"></c:import>
</div>
</section>


<div class="container">
	<div>
		<div align="left" class="left">
			<span style="color: orange;">${member.memName }</span> 님의 모임 히스토리
		</div>
	</div>
	
  	<br><br><br>
  	
	<div class="row">
		<c:forEach var="group" items="${group}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${group.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;" >
				<div class="caption">
					<div>
						<div class="starRev">
						</div>
						<div>
							<img alt="" src="images/star.png" style="width: 20px;">
							<span> 9.5</span>
						</div>
					</div>
					<br>
					<div>
						<span style="font-size: 12px;">1회차|</span>
						<div>
							<div class="name">
							<h5>${group.grName }</h5>
							</div>
							<div class="heart" align="right">
								<i class="far fa-heart"></i>
							</div>
							<br>
						</div>
						<h6 style="text-align: right; font-size: 10px;">"${group.memName }"</h6>
					</div>
				
				</div><!-- end div.caption -->
			</div><!-- end div.thumbnail -->
		</div><!-- end div.col-sm-6 col-md-4 -->
		</c:forEach>	
		
		
  	
	</div><!-- end div.row -->

</div><!-- end div.container -->

<div>
   <c:import url="footer.jsp"></c:import>
</div>

</body>
</html>