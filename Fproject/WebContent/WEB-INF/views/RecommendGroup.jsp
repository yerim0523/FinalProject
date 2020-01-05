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
<title>Theme.jsp</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
    <!-- jquery -->
    
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



<style>

    div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    /* 
    div.center {
        width: 60%;
        float: center;
        box-sizing: border-box;
        
    }
     */
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        
    }
    
    .img-responsive
	{
		height: 200px;
		width: 500px;
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
 
<div class="container">

	<div>
		<div class="left" >
			<button type="button" class="btn btn-default">테마별 > 추천모임</button>
		</div>
		<div class="right" align="right"> 
			<a href="theme.action">인기모임</a> | <a href="newgroup.action">신규모임</a> | <a href="hothost.action">인기호스트</a> 
			| <a href="closing.action">마감임박</a> | <a style="font-weight: bold;">추천모임</a>
		</div>
	</div>
	<br>
	<div align="right">
	</div>
	
	<div align="right">
  	</div>
  	<br><br><br>
  	
	<div class="row">
		<c:forEach var="RecommendGroup" items="${RecommendGroupListAll}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${RecommendGroup.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;"
					onclick="location.href='groupdetail.action?ngCode=${RecommendGroup.ngCode}'">
			<div class="caption">
			<div>
				
				<div>
					<img alt="" src="images/star.png" style="width: 20px;">
					<span> 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name" onclick="location.href='groupdetail.action?ngCode=${RecommendGroup.ngCode}'">
					<h5>${RecommendGroup.grName }</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">${RecommendGroup.memName }</h6>
			</div>
			
			</div>
			</div>
		</div>
		</c:forEach>
		
  	
</div>

</div>

<div>
   <c:import url="footer.jsp"></c:import>
</div>

</body>
</html>