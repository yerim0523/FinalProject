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
<title>faq.jsp</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
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
.pagination {
	justify-content: center;
}

.nav-pills {
	justify-content: center;
}

.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.accordion:hover {
	background-color: #ccc;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}

.toggler {
	width: 100%;
	height: 200px;
}

#effect {
	position: relative;
	width: 70%;
	height: 170px;
	padding: 0.4em;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		function runEffect() {
			$("#effect").toggle("blind", null, 700);
		}
		;

		$("#btn_toggle").on("click", function() {
			runEffect();
		});
	});
</script>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

<div id="menu" class="container">

	

	<br> <br> <br>

	<div class="container" align="center">
		<div class="row">
			<div class="col">
				<p style="font-size: 20pt;">[고객센터]</p>
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link"
						href="center.action">투레저 소개</a></li>
					<li class="nav-item"><a class="nav-link"
						href="news.action">투레저 소식</a></li>
					<li class="nav-item"><a class="nav-link"
						href="event.action">투레저 이벤트</a></li>
					<li class="nav-item"><a class="nav-link active">FAQ</a></li>
				</ul>
			</div>

		</div> 
	</div>

	<br> <br> <br>
	<div align="center">
		<div id="accordion">
			<c:forEach var="faq" items="${faqList}" varStatus="status">
				<div class="card">
				    <div class="card-header">
				      <a class="card-link d-flex justify-content-start" data-toggle="collapse" href="#collapse${faq.boardNum}">
				        <!-- #${status.index+1}.  -->${faq.boardTitle}
				      </a>
				    </div>
				    <div id="collapse${faq.boardNum}" class="collapse" data-parent="#accordion">
				      <div class="card-body d-flex justify-content-start" style="text-align:left;">
				        ${faq.boardCont} 
				      </div>
				    </div>
			  	</div>
			</c:forEach>
		</div>
	</div>
	<button type="button" onclick="location='faqinsertform.action'" class="btn4" style="float: right;">글쓰기</button>
	<button type="button" onclick="location='qnainsertform.action'" class="btn4" style="float: left;">1:1 문의</button>
</div>

</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>
