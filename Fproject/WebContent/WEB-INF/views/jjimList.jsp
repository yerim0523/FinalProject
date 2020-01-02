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
						<h3>> 찜 목록</h3>
					</div>
				</div>
				<br><br>
				
					<div class="page-header">
						<h5 style="font-weight: bold;">찜 모임</h5>
					</div>
					<br>
					<div class="row">
						<c:if test="${!empty jjimGroup }">
						<c:forEach var="jjimG" items="${jjimGroup}">
						<div class="thumbnail" style="padding-right: 20px; max-width: 200px;">
							<div class="text-center">
								<img class="image" src="<%=cp%>/images/${jjimG.ngPic}">
							</div>
<!-- 									<i id="emptyHeart" class="far fa-heart"></i> -->
<!-- 									<i id="fullHeart" class="fas fa-heart"></i> -->
									<i id="emptyHeart" class="far fa-heart"></i>
									<a href="#모임상세페이지?grCode=${jjimG.ngCode }" class="justify-content-between d-flex"> 
									<span class="color" style="text-align: left;">
									<c:if test="${jjimG.grCate2Name != null }">
									<span style="font-weight: bold; font-size: 13px; color: gray;">${jjimG.grCate1Name } | ${jjimG.grCate2Name }</span>
									</c:if>
									<c:if test="${jjimG.grCate2Name == null }">
										${jjimG.grCate1Name }
									</c:if>
									</span>
									<span style="text-align: right; font-size: 13px; color: gray;"><span style="color: orange; font-weight: bold; ">${jjimG.grCount }</span>회차</span>
									</a>
								<div style="height: 50px;">
								<span style="margin-top:10px; font-size: 18px; font-weight: bold;">${jjimG.grName }</span>
								</div>
								<div>
								<p class="text-right">${jjimG.memName }</p>
								</div>
						</div>
						</c:forEach>
						</c:if>
					</div>
					<c:if test="${empty jjimGroup }">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;찜 모임 목록이 비어있습니다. 모임을 찜해주세요 ~ !</p>
						</div>
						</c:if>
					<br><br>
					<div class="page-header">
					<div>
						<h5 style="font-weight: bold;">찜 호스트 </h5>
					</div>
					<br>
					</div>
					<div class="row">
						<c:forEach var="jjimH" items="${jjimHost }">
						<div class="host" style="padding-right: 20px;">
							<img src="<%=cp%>/images/${jjimH.memPic}" class="rounded-circle" ><br>
							<i class="far fa-heart"></i>
							${jjimH.memName }
						</div>
						</c:forEach>
					</div>
					<c:if test="${empty jjimHost }">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;찜 호스트 목록이 비어있습니다. 호스트를 찜해주세요 ~ !</p>
						</div>
					</c:if>
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