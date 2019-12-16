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

<style type="text/css">

.title
{
	font-size: 20px;
	
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
			<div class="container">
				<div class="page-header">
					<div>
						<h3>찜 목록</h3>
					</div>
				</div>
				<br><br>
				<div>
					<div class="row">
							<div class="thumbnail" style="width: 30%;">
								<img src="images/me.png" style="width: 100%;">
									<div class="caption">
										<span class="title">맥주모임</span>
										<p>ㅁㄴㅇㄹ</p>
									</div>
								
							</div>
							
							<div class="thumbnail" style="width: 30%;">
								<img src="images/me.png" style="width: 100%;">
									<div class="caption">
										<span class="title">맥주모임</span>
										<p>ㅁㄴㅇㄹ</p>
									</div>
								
							</div>
							
							<div class="thumbnail" style="width: 30%;">
								<img src="images/me.png" style="width: 100%;">
									<div class="caption">
										<span class="title">맥주모임</span>
										<p>ㅁㄴㅇㄹ</p>
									</div>
								
							</div>
							
							<div class="thumbnail" style="width: 30%;">
								<img src="images/me.png" style="width: 100%;">
									<div class="caption">
										<span class="title">맥주모임</span>
										<p>ㅁㄴㅇㄹ</p>
									</div>
								
							</div>
							
							
						</div>
					</div>
				
				</div>	
			
				
				
				
			</div>
		</div>
	</div>
	
<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>