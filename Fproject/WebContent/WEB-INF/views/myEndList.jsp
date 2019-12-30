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
<title>myEndList.jsp</title>

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
	.image
	{
		width: 170px;
		height: 150px;
	}
	
	button.btn4{
	    width: 90px;
    	height: 50px;
    	padding-left: 0;
    	padding-right: 0;
	}
</style>


</head>
<body>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<br><br>
<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div class="container">
	<div class="row">
		<c:import url="sidebar.jsp"></c:import>
		<div class="col-md-9">
			<div class="container" style="margin-left: 50px;">
				<div class="page-header">
					<div>
						<h3>> 내 모임 목록</h3>
					</div>
				</div>
				<br><br>
				
					<div class="page-header">
						<h5 style="font-weight: bold;">종료 모임</h5>
					</div>
					<br><br>
					<div class="row" >
						<c:forEach var="endGroup" items="${endGroup}">
						<div class="thumbnail" style="padding-right: 20px; max-width: 200px;">
							<div class="text-center">
								<img class="image" src="<%=cp%>/images/${endGroup.ngPic}">
							</div>
									<i id="emptyHeart" class="far fa-heart"></i>
									<a href="#모임상세페이지?grCode=${endGroup.ngCode }" class="justify-content-between d-flex"> 
									<span class="color" style="text-align: left;">
									<c:if test="${endGroup.grCate2Name != null }">
									<span style="font-weight: bold; font-size: 13px; color: gray;">${endGroup.grCate1Name } | ${endGroup.grCate2Name }</span>
									</c:if>
									<c:if test="${endGroup.grCate2Name == null }">
										${endGroup.grCate1Name }
									</c:if>
									</span>
									<span style="text-align: right; font-size: 13px; color: gray;"><span style="color: orange; font-weight: bold; ">${endGroup.grCount }</span>회차</span>
									</a>
								<div style="height: 40px;">
								<span style="margin-top:10px; font-size: 18px; font-weight: bold;">${endGroup.grName }</span>
								</div>
								<div align="center" style="margin-top: -20px;">
								<p class="text-right">${endGroup.memName }</p>
								</div>
						</div>
						</c:forEach>
					</div>
					<c:if test="${empty endGroup }">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;종료된 모임이 존재하지 않습니다. <br><br>현재 참여중인 모임이 종료되면 이곳에 모임 리스트가 표시됩니다 ~ ! <br><br>(※ 단, 환불된 모임은 표시되지 않습니다.)</p>
						</div>
					</c:if>
					<br><br>
			</div>
		</div>
	</div>
</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>