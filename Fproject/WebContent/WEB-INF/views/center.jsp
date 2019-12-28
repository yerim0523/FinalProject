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

<div class="header">
	<jsp:include page="bar.jsp"></jsp:include>
</div>



<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div id="menu" class="container">
<br>
<br>
<br>

	<div class="container" align="center">
		<div class="row">
			<div class="col">
				<p style="font-size: 20pt;">[고객센터]</p>
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link active">투레저 소개</a></li>
					<li class="nav-item"><a class="nav-link" href="news.action">소식</a></li>
					<li class="nav-item"><a class="nav-link" href="event.action">이벤트</a></li>
					<c:if test="${empty sessionScope.member}">
								<li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#loginNeed">FAQ</a></li>
								</c:if>
					<c:if test="${!empty sessionScope.member}">
								<li class="nav-item"><a class="nav-link" href="faq.action">FAQ</a></li>
								</c:if>
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

<div class="modal modal-center fade" id="loginNeed" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">※ 로그인 경고 ※</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
			<p class="text-center">로그인이 필요한 서비스입니다.</p>
			<div class="">
				<a href="login.action"><button type="button" class="btn_1" >로그인</button></a>
				<button type="button" class="btn_1" data-dismiss="modal">닫기</button>
			</div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

</body>
</html>