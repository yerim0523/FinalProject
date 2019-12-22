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
<title>paylist.jsp</title>

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

<div>
	
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

<div class="container">
	<div class="row">
	<c:import url="sidebar.jsp"></c:import>
	<div class="col-md-9">
	<br>
	
	<div class="col-md-4" >
	<div class="input-group" style="margin-left: 660px;">
      <input type="text" class="form-control" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" >Go!</button>
      </span>
    </div><!-- /input-group -->
    </div>
    <br><br>
	
	<table class="table" style="margin-left: 100px;">
		<tr class="active">
			<th>모임명</th>
			<th>날짜</th>
			<th>결제금액</th>			
		</tr>
		<tr class="success">
			<td>맥주모임</td>
			<td>2019-12-06</td>
			<td>30000원</td>			
		</tr>
		<tr class="success">
			<td>칵테일모임</td>
			<td>2019-11-23</td>
			<td>30000원</td>			
		</tr>
		<tr class="success">
			<td>소주모임</td>
			<td>2019-07-23</td>
			<td>30000원</td>			
		</tr>
		<tr class="success">
			<td>막걸리모임</td>
			<td>2019-05-06</td>
			<td>30000원</td>			
		</tr>
	</table>
	<br><br><br>
	<div style="margin-left: 350px;">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</div>
	
	</div>
	</div>
</div>
<br><br><br><br>
<div>
   <c:import url="footer.jsp"></c:import>
</div>

</section>
</body>
</html>