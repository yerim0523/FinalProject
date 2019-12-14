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
<title>center.jsp</title>
<style type="text/css">
.pagination {
	justify-content: center;
}
.nav-pills
{
	justify-content: center;
}
</style>
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


</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>



<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div id="menu" class="container">
<br>
<br>
<br>

	<div class="container" align="center">
		<div class="row">
			<div class="col">
				<p>[고객센터]</p>
				<ul class="nav nav-pills">
				<li class="nav-item"><a class="nav-link active">투레저 소개</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=cp %>/news.jsp">소식</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=cp %>/event.jsp">이벤트</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=cp %>/faq.jsp">FAQ</a>
				</li>
				</ul>
			</div>
			
			<div align="center">
				<img alt="소개 이미지" src="images/about.png">
			</div>
		</div>
	</div>

<br>
<br>
<br>
</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>