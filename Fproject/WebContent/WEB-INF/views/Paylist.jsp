<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paylist.jsp</title>

<script src="js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<!-- jquery plugins here-->
<!-- jquery -->
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
<script type="text/javascript"></script>

</head>
<body>

	<div>
		<c:import url="bar.jsp"></c:import>
	</div>

	<br>
	<br>
	<section class="course_details_area section_padding"
		style="padding-bottom: 0;">

		<div class="container">
			<div class="row">
				<c:import url="sidebar.jsp"></c:import>
				<div class="col-md-9">
					<div class="container" style="margin-left: 50px;">
						<div class="page-header">
							<div>
								<h3>> 결제 내역</h3>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="input-group" style="margin-left: 660px;">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
					<br>

					<table class="table" style="margin-left: 50px;">
						<tr class="active">
							<th>NUM</th>
							<th>모임명</th>
							<th>결제날짜</th>
							<th>결제방법</th>
							<th>결제금액</th>
							<th>비고</th>
						</tr>
						<c:forEach var="list" items="${payList}">
							<tr class="success" id="paycontent">
								<td>${list.rNum }</td>
								<td>${list.grName }</td>
								<td>${list.payDate }</td>
								<td>${list.pmName }</td>
								<td><fmt:setLocale value="ko_KR" />
									<fmt:formatNumber type="currency" value="${list.ngCost }" /></td>
								<td><c:if test="${list.rfCode != 0 }">
										<span style="color: red;">환불</span>
									</c:if></td>
							</tr>
							<tr>
								<td>${list.pmDetail }</td>
							</tr>
						</c:forEach>
					</table>
					<br><br><br>
					<div style="margin-left: 350px;">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</div>
				</div><!-- end div.col-md-9 -->
			</div><!-- end div.row -->
		</div><!-- end div.container -->
		<br><br><br><br>
		<div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</section>
</body>
</html>