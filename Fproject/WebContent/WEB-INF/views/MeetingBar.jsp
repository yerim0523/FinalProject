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
<title>MeetingBar.jsp</title>


<style type="text/css">

.dropmenu{
border:none;
border:0px;
margin:0px;
padding:0px;
font: "sans-serif";
font-size:18px;
}

.dropmenu ul{

height:100px;
list-style:none;
margin:0;
padding:0;
color: black;
}

.dropmenu li{
float : left;
padding:0px;
color: black;
}

.dropmenu li a{
color:black;
display:block;
line-height:70px;
margin:0px;
margin-right: 75px;
padding:0px 25px;
text-align:center;
text-decoration:none;
width: 100%;
}

.dropmenu li a:hover, .dropmenu ul li:hover a{
color:black;
text-decoration:none;
}

.dropmenu li ul{
background: #D4F4FA;
display:none; 
height:100px;
border:0px;
position:absolute;
width:150px;
z-index:200;
/*top:1em;
/*left:0;*/
}

.dropmenu li:hover ul{
display:block;
}

.dropmenu li li {
background: #D4F4FA;
display:block;
float:none;
margin:0px;
padding:0px;
width:150px;
text-align: center;
}

.dropmenu li:hover li a{
background:none;
}

.dropmenu li ul a{
display:block;
height:50px;
font-size:14px;
margin:0px;
padding:0px 10px 0px 10px;
text-align:center;
}

.dropmenu li ul a:hover, .dropmenu li ul li:hover a{
background: rgb(171,171,171);
border:0px;
color:black;
text-decoration:none;
}

.dropmenu p{
clear:left;
}

.dmenu
{
	justify-content: center;
}


</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
</head>
<body>

<div class="container">
	<div class="dropmenu">
		<ul class="dmenu">

		<!-- 	<li><a href="AllMeeting.jsp">전체</a></li> -->
			<li><a href="all.action">전체</a></li>

			<li><a href="culture.action" id="current">문화생활</a>
				<ul>
					<li><a href="exhibit.action">전시</a></li>
					<li><a href="show.action">공연</a></li>
					<li><a href="play.action">연극</a></li>
				</ul>
			</li>
			<li><a href="food.action" id="current">맛집</a>
				<ul>
					<li><a href="restaurant.action">식당</a></li>
					<li><a href="cafe.action">카페</a></li>
				</ul>
			</li>
			<li><a href="theme.action" id="current">테마별</a>
				<ul>
					<li><a href="theme.action">인기모임</a></li>
					<li><a href="newgroup.action">신규모임</a></li>
					<li><a href="closing.action">마감임박</a></li>
					<li><a href="hothost.action">인기호스트</a></li>
					<li><a href="recommend.action">추천모임</a></li>
				</ul>
			</li>
			<li><a href="map.action">내주변</a></li>
			<li><a href="mainboard.action" id="current">전체 게시판</a>
		</ul>
	</div> 
</div>

</body>
</html>