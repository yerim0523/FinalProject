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
<title>Map.jsp</title>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>

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

<style>

    div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        
    }
      input.img-button {
        background: url("img/lense.JPG") no-repeat;
        border: none;
    /*     width: 32px;
        height: 32px; */
       /*  cursor: pointer; */
      }
</style>


</head>
<body>

<div>
	<c:import url="mainbar.jsp"></c:import>
</div> 

 <div>
	<c:import url="MeetingBar.jsp"></c:import>
</div> 

<br><br>

<div class="container">
	
	
	<div>
		<div class="left">
			<button type="button" style="margin-right:135px;"class="btn btn-default">내위치</button>
			<button type="button" class="btn btn-default"><img src="img/loc.JPG" alt="" style="width:30px; height:30px;"></button>
		</div>
		<div class="right" align="right">
			
		</div>
	</div>
	

  	<br><br>
  	
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/map.JPG" alt="썸네일" style="width: 100%;">
			<div class="caption">
			
			</div>
			</div>
		</div>
		<!-- <div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%; height: 200px;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div> -->
		
		<div class="col-sm-6 col-md-4">
		<br><br>
			<div class="thumbnail">
				<input type="text">
				<button type="button" class="btn btn-default"><img src="img/lense.JPG" alt="" style="width:35px; height:35px;"></button>
			
			<br><br><br><br><br>
			
			<div class="caption">
				주소 : <input type="text">
			</div>
			</div>
		</div>
	</div>
	
	<br>
<!-- 	<div class="left">
			<button type="button" class="btn btn-default">내위치</button>
		</div>
		<br> -->
		<button type="button" class="btn btn-default">내 주변 모임</button>
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
		
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%; height: 200px;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
	</div>

</div>

</body>
</html>