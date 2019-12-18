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
<link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css"  />
<script type="js/bootstrap-select.min.js" ></script>
<script type="js/bootstrap-select.js" ></script>
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
    <!-- <script src="js/jquery.nice-select.min.js"></script> -->
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    
    
<style type="text/css">

.no{
	color: red;
	
}

.ex{
	font-size: 13px;
}

.select-arrow-image {
    width: 100px;
    border: none;
    box-shadow: none;
    appearance: none;
    -moz-appearance: none;
    -webkit-appearance: none;
    /* font-size: 1.2em; */
    background-color: transparent;
    background-image: url(images/arrow.png);
    background-position: center right;
    background-repeat: no-repeat;
    background-size: 20px 15px;
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
							<h3>피드백 내역</h3>
						</div>
					</div>
					
					<br>
					
					<div class="row">
						<div class="col-md-4">
							<h5>모임 관리 > 피드백 내역</h5>
						</div>
						<div class="col-md-8" align="right">
							<span class="ex">
								항목 1 : 모임 내용에 알맞게 모임이 진행되었다.<br>
								항목 2 : 이번 회차 모임에 정산이 정상적으로 이루어졌다.
							</span>
						</div>
					</div>
					
					<br>
					
					<div>
						<table class="table" style="text-align: center;">
							<tr>
								<td>모임명</td>
								<td>회차</td>
								<td>항목1</td>
								<td>항목2</td>
							</tr>
							
							<tr>
								<td>맥주 모임</td>
								<td>
									<select name="" class="select-arrow-image">
									    <option value="테스트">1회차</option>
									    <option value="테스트">2회차</option>
									    <option value="테스트">3회차</option>
									</select>
									</td>
								<td>YES(90%)<br><span class="no">NO(10%)</span></td>
								<td>YES(80%)<br><span class="no">NO(20%)</span></td>
							</tr>
							
							<tr>
								<td>맥주 모임</td>
								<td>
									<select name="" class="select-arrow-image">
									    <option value="테스트">1회차</option>
									    <option value="테스트">2회차</option>
									    <option value="테스트">3회차</option>
									</select>
								</td>
								<td>YES(90%)<br><span class="no">NO(10%)</span></td>
								<td>YES(80%)<br><span class="no">NO(20%)</span></td>
							</tr>
							
							<tr>
								<td>맥주 모임</td>
								<td>
									<select name="" class="select-arrow-image">
									    <option value="테스트">1회차</option>
									    <option value="테스트">2회차</option>
									    <option value="테스트">3회차</option>
									</select>
								</td>
								<td>YES(90%)<br><span class="no">NO(10%)</span></td>
								<td>YES(80%)<br><span class="no">NO(20%)</span></td>
							</tr>
							
							
							<tr>
								<td>맥주 모임</td>
								<td>
									<select name="" class="select-arrow-image">
									    <option value="테스트">1회차</option>
									    <option value="테스트">2회차</option>
									    <option value="테스트">3회차</option>
									</select>
								</td>
								<td>YES(90%)<br><span class="no">NO(10%)</span></td>
								<td>YES(80%)<br><span class="no">NO(20%)</span></td>
							</tr>
						
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