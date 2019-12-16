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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
</head>
<body>

<div class="col-md-2" align="left">
	<!-- 사이드 바 메뉴-->
	<!-- 패널 타이틀1 -->
	<div class="panel panel-info">
		<div class="panel-heading">
			<h3 class="panel-title" align="center">My page</h3>
		</div>
		<!-- 사이드바 메뉴목록1 -->
		<ul class="list-group">
			<li class="list-group-item"><a href="#">개인정보수정</a></li>
			<li class="list-group-item"><a href="#">비밀번호 재설정</a></li>
			<li class="list-group-item"><a href="#">찜 목록</a></li>
			<li class="list-group-item"><a href="#">참여중인 모임</a></li>
			<li class="list-group-item"><a href="#">일정 관리</a></li>
			<li class="list-group-item"><a href="#">모임 관리</a></li>
		</ul>
	</div>
	
</div>

</body>
</html>