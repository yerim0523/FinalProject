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
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<style type="text/css">

/* Style the sidebar - fixed full height */
.sidebar {
  height: 100%;
  width: 220px;
  /* position: fixed; */
  z-index: 1;
  top: 0;
  left: 0;
  background-color: white;
  overflow-x: hidden;
  padding-top: 16px;
}

/* Style sidebar links */
.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  font-weight: bold;
  color: #818181;
  display: block;
  height: 50px;
}

/* Style links on mouse-over */
.sidebar a:hover {
  color: #eec4c4;
}

/* Style the main content */
.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

/* Add media queries for small screens (when the height of the screen is less than 450px, add a smaller padding and font-size) */
@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

</style>

</head>
<body>

<div class="col-md-2" align="left">
 <div class="sidebar">
  <a href="#home"><i class="fa fa-fw fa-user"></i> 개인정보수정</a>
  <a href="#services"><i class="fa fa-fw fa-lock"></i> 비밀번호 재설정</a>
  <a href="#clients"><i class="fa fa-fw fa-heart"></i> 찜목록</a>
  <a href="#contact"><i class="fa fa-fw fa-users"></i> 참여중인 모임</a>
  <a href="#contact"><i class="fa fa-fw fa-calendar-alt"></i> 일정관리</a>
  <a href="#contact"><i class="fa fa-fw fa-users-cog"></i> 모임관리</a>
  <a href="#contact"><i class="fa fa-fw fa-receipt"></i> 결제내역</a>
</div>
</div>
</body>
</html>