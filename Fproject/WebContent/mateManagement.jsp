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
<title>Insert title here</title>

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

button.btn4 {
	
	background-color: #eec4c4;
	width:100px;
	height:50px;
	padding-left: 0px;
	padding-right: 0px;
	
}
	
#warning:hover {
  color: red;
  background-position: right center;
  /* box-shadow: 0px 10px 30px 0px rgba(193, 34, 10, 0.2); */
}

</style>
    
    
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<br>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div class="container">
		
		<div class="row">
			<c:import url="sidebar.jsp"></c:import>
			
			<div class="col-md-9">
				<div class="container" style="margin-left: 50px;">
				
					<div class="page-header">
						<div>
							<h3>메이트 관리</h3>
						</div>
					</div>
					
					<br>
					
					<div class="page-header">
						<div>
							<h5>모임 관리 > 메이트 관리</h5>
						</div>
					</div>
					
					<div>
						<table class="table">
							<tr>
								<td>메이트 이름</td>
								<td colspan="2">경고 내역</td>
							</tr>
							
							<tr>
								<td>
									<div align="left">
									<img src="images/me.png" class="rounded-circle" style="width: 50px; height: 50px;">
										&nbsp;&nbsp;&nbsp; 백호진
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							
							<tr>
								<td>
									<div align="left">
									<img src="images/iu.jpg" class="rounded-circle" style="width: 50px; height: 50px;">
										&nbsp;&nbsp;&nbsp; 박지혜
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							
							<tr>
								<td>
									<div align="left">
									<img src="images/iu2.jpg" class="rounded-circle" style="width: 50px; height: 50px;">
										&nbsp;&nbsp;&nbsp; 이예림
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							
							<tr>
								<td>
									<div align="left">
									<img src="images/ma.jpg" class="rounded-circle" style="width: 50px; height: 50px;"> 
										&nbsp;&nbsp;&nbsp; 이성조
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							
							<!-- 
							<tr>
								<td>
									<div align="left">
									<img src="images/iu.jpg" class="rounded-circle" style="width: 50px; height: 50px;">
										&nbsp;&nbsp;&nbsp; 박지혜
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							
							<tr>
								<td>
									<div align="left">
									<img src="images/me.png" class="rounded-circle" style="width: 50px; height: 50px;">
										&nbsp;&nbsp;&nbsp; 백호진
									</div>
								</td>
								<td style="width: 150px; padding-top: 23px;">2회</td>
								<td>
									<button type="button" class="btn4" id="warning">경고</button>
									<button type="button" class="btn4" style="padding-left: 0px; padding-right: 0px;">경고취소</button>
								</td>
							</tr>
							 -->
						
						</table>
					</div>
					
				</div>
			</div>
			
		</div>
		
	</div>
	
	<br><br><br><br>
	
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>