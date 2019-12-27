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
<title>jjimList.jsp</title>

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
	
	.host{
		padding: 5px; 
		margin-bottom: 10px; 
		text-align: center;
		font-weight: bold;
		font-size: 13pt;
		
	
	}
	
	.rounded-circle
	{
		width: 150px; 
		height: 150px; 
		margin-bottom: 5px;
	}
	
</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>


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
						<h3>찜 목록</h3>
					</div>
				</div>
				<br>
				
					<div class="page-header">
						<b><h5>찜 모임</h5></b>
					</div>
					<br>
					<div class="row">
						<c:forEach var="jjim" items="${jjimGroup}">
						<div class="thumbnail" style="padding-right: 20px; max-width: 200px;">
							<div class="text-center">
								<img class="image" src="<%=cp%>/images/${jjim.ngPic}">
							</div>
								<i class="far fa-heart"></i>
									<a class="justify-content-between d-flex"> 
									<span class="color" style="text-align: left;">
									<c:if test="${jjim.grCate2Name != null }">
									<span style="font-weight: bold; font-size: 13px; color: gray;">${jjim.grCate1Name } | ${jjim.grCate2Name }</span>
									</c:if>
									<c:if test="${jjim.grCate2Name == null }">
										${jjim.grCate1Name }
									</c:if>
									</span>
									<span style="text-align: right; font-size: 13px; color: gray;"><span style="color: orange; font-weight: bold; ">${jjim.grCount }</span>회차</span>
									</a>
								<span style="margin-top:10px; font-size: 18px; font-weight: bold;">${jjim.grName }</span>
								<div>
								<p class="text-right">${jjim.memName }</p>
								</div>
						</div>
						</c:forEach>
					</div>
					<br><br>
					<div class="page-header">
					<div>
						<h3>찜 호스트</h3>
					</div>
					<br>
					</div>
					<div class="row">
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle" ><br>
						백호진
					</div>
					
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle" ><br>
						백호진
					</div>
					
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle"><br>
						백호진
					</div>
					
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle"><br>
						백호진
					</div>
					
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle"><br>
						백호진
					</div>
					
					<div class="host">
						<img src="images/gd.jpg" class="rounded-circle"><br>
						백호진
					</div>
					
					</div>
					
					<br><br><br>
				
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