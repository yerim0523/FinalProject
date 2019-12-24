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
<title>Insert title here</title>
<style type="text/css">
.pagination {
	justify-content: center;
}
.nav-pills
{
	justify-content: center;
}

.table{
	border: none;
}

.time{
	font-size: small;
	color: #888888;
	font-weight: lighter;
}
.name{
	font-size: 13px;
	font-weight: lighter;
	
}


</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
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

	<div align="center">
		<div class="row">
			<div class="col">
				<p>[고객센터]</p>
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link" href="center.action">투레저 소개</a>
					</li>
					<li class="nav-item"><a class="nav-link active">투레저 소식</a></li>
					<li class="nav-item"><a class="nav-link"href="event.action">투레저 이벤트</a></li>
					<li class="nav-item"><a class="nav-link" href="faq.action">FAQ</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
 
	<br>
	<br>
	<br>
	
	<div class="container" align="center">
		<table class="table" style="width: 750px;" >
			<tr>
				<th>
					<span>제목제목제목제목</span>
				</th>
				<th style="text-align: right;">
					<span class="time">2019.12.24 14:16</span>
				</th>
			</tr>
			<tr>
				<th>
					<span class="name">관리자</span>
				</th>
				<th style="text-align: right">
					<span class="name">
						<a href="#">수정</a>&nbsp;&nbsp;
						<a href="#">삭제</a>&nbsp;&nbsp;
						<a href="#">목록</a>
					</span>
			</tr>
			<tr>
				<td colspan="2" style="border-style: none;">
					<textarea style="width: 100%; border-style: none;"></textarea>
					<span>내용내용내용</span>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					이전글 : 
				</td>
			</tr>
			<tr>
				<td colspan="2">
					다음글 : 
				</td>
			</tr>
				
		
		</table>
	
	</div>

</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>