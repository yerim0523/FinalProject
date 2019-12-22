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
<title>MyPage.jsp</title>
<style type="text/css">

.a_layer
{
	display: table;
	width: 100%;
	height: 600px;
}
.a_layer_inner
{
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.a_content
{
	display: inline-block;
}

.box
{
	width: 200px;
	height: 200px;
	text-align: center;
	float: left;
	margin-right: 5px;
}

.menu
{
	font-weight: bold;
	font-size: 25px;
}

.page
{
	font-weight: bold;
	font-size: 30px;
	text-align: center;
}


</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
</head>
<body>

<%-- <div>
	
	<div>
		<c:import url="mainbar.jsp"></c:import>
	</div>
	
	<div>
	
	</div>
	
	<br><br>
	
	<div class="container">
		<div class="d-flex justify-content-center h-100 left">
			<div class="image_outer_container">
				<div class="green_icon"></div>
				<div class="image_inner_container">
					<img src="images/me.png">
				</div>
			</div>
			<div class="container right" style="width: 50%;">
				<input type="text" class="form-control" value="닉네임">
				<br><br>
				<textarea rows="3" cols="10" class="form-control">자기소개</textarea>
			</div>
		</div>
	</div>
	
	<br><br>
	
	<div class="container" align="center">
		<div class="a_layer">
			<div class="a_layer_inner">
				<div class="a_content">
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-user fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-lock fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-heart fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
				</div>
				<br>
				<div class="a_content">
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-users fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					<div class="box"><a href=""><span style="color: black;"><i class="far fa-calendar-alt fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-users-cog fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					<div class="box"><a href=""><span style="color: black;"><i class="fas fa-receipt fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
				</div>
			</div>
		</div>
	</div>

</div> --%>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<br><br>
<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div class="container">
		<div class="row">
			<div class="col-md-2" align="left">
				<span class="page">MyPage</span>
			</div>
			<div class="col-md-10">
				<div class="container">
				<br><br>
			<div class="d-flex justify-content-center h-100 left">
				<div class="image_outer_container">
					<div class="green_icon"></div>
					<div class="image_inner_container">
						<img src="images/me.png">
					</div>
				</div>
				<div class="container right" style="width: 50%;">
					<input type="text" class="form-control" value="닉네임">
					<br><br>
					<textarea rows="3" cols="10" class="form-control">자기소개</textarea>
				</div>
			</div>
		</div>
				
			</div>
			
		</div>
		
		
		
		<br><br>
		
		<div class="container" align="center">
			<div class="a_layer">
				<div class="a_layer_inner">
					<div class="a_content">
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-user fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-lock fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-heart fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					</div>
					<br>
					<div class="a_content">
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-users fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
						<div class="box"><a href=""><span style="color: black;"><i class="far fa-calendar-alt fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-users-cog fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
						<div class="box"><a href=""><span style="color: black;"><i class="fas fa-receipt fa-7x"></i><br><br><p class="menu">개인정보</p></span></a></div>
					</div>
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