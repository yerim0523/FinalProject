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
	width: 90%;
	height: 170px;
	padding: 0.4em;
}

.cate {
	color: black;
}

.modal-dialog.modal-80size {
	width: 90%;
	height: 90%;
	margin: 0;
	padding: 0;
}

.modal-content.modal-80size {
	min-height: 90%;
}

.modal.modal-center {
	text-align: center;
}

@media screen and (min-width: 500px) {
	.modal.modal-center:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog.modal-center {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

.center-block {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.modal-dialog {
	overflow-y: initial !important
}

.modal-body {
	height: 100%;
	overflow-y: auto;
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

	<section class="course_details_area section_padding"
		style="padding-bottom: 0;">

		<div id="menu" class="container">



			<br> <br> <br>

			<div class="container" align="center">
				<div class="row">
					<div class="col">
						<p style="font-size: 20pt;">[고객센터]</p>
						<ul class="nav nav-pills">
							<li class="nav-item"><a class="nav-link"
								href="center.action">투레저 소개</a></li>
							<li class="nav-item"><a class="nav-link" href="news.action">투레저
									소식</a></li>
							<li class="nav-item"><a class="nav-link" href="event.action">투레저
									이벤트</a></li>
							<li class="nav-item"><a class="nav-link active">FAQ</a></li>
						</ul>
					</div>
				</div>
			</div>

			<br>

			<div class="container" align="center">
				<div class="row">
					<div class="col">
			
						<a class="cate" href="#" style="font-weight: bold;">전체</a> | <a
							class="cate" href="faquse.action">이용안내</a> | <a class="cate"
							href="faquser.action">회원정보</a> | <a class="cate"
							href="faqpay.action">결제/환불</a> | <a class="cate"
							href="faqetc.action">기타</a>

					</div>
				</div>
			</div>

			<br> <br> <br>
			<div align="center">
				<div id="accordion">
					<c:forEach var="faq" items="${faqList}" varStatus="status">
						<div class="card">
							<div class="card-header">
								<a class="card-link d-flex justify-content-start"
									data-toggle="collapse" href="#collapse${faq.boardNum}">
									[${faq.faqName}] ${faq.boardTitle} </a>
							
							</div>
							<div id="collapse${faq.boardNum}" class="collapse"
								data-parent="#accordion">
								<div class="card-body d-flex justify-content-start"
									style="text-align: left;">${faq.boardCont}</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			
			
		</div>

	</section>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>





</body>
</html>
