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
						<h3>찜한 목록 </h3>
					</div>
				</div>
				<br>
				
					<div class="page-header">
						<h5>찜한 모임</h5>
					</div>
					<br>
					<div class="row" >
						<div class="thumbnail " style="padding: 10px;">
							<img class="image" src="images/iu.jpg">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
							</div>
						</div>
						
						<div class="thumbnail" style="padding: 10px;">
							<img class="image" src="images/me.png">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
							</div>
						</div>
						
						<div class="thumbnail" style="padding: 10px;">
							<img class="image" src="images/me.png">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
							</div>
						</div>
						
						<div class="thumbnail" style="padding: 10px;">
							<img class="image" src="images/me.png">
							<br><br>
							<div class="caption">
								<span class="title">맥주모임</span>
								<p>ㅁㄴㅇㄹ</p>
							</div>
						</div>
					</div>
					<br><br>
					<div class="page-header">
					<div>
						<h3>찜한 호스트 </h3>
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