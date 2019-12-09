<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">


</head>
<body>

	<div>
		<h1>로고</h1>
		<hr>
	</div>
	
	
	
	<br><br><br><br><br><br><br><br><br><br>
	<h3 style="margin-left:820px;">로그인</h3>  
	<!-- 콘텐츠 영역 -->
	
	<div id="wrapper">
		<form action="login.action" method="post" id="loginForm">
			<table>
				<tr>
				<th>이메일</th>
					<td>
						<input type="text" id="id" name="id" placeholder="아이디">@
						<input type="text" id="email" name="email" placeholder="주소">
						<select name="job">
					    <option value="">이메일</option>
					    <option value="naver">naver.com</option>
					    <option value="yahoo">yahoo.co.kr</option>
					    <option value="nate">nate.com</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<th>PW</th>
					<td>
						<input type="password" id="pw" name="pw" placeholder="패스워드">
					</td>
				</tr>
				<tr>
					<th>
						<input type="submit"  style="font-weight: bold; color:white; background-color: #35B62C;" value="로그인" class="bigbtn">		
					</th>
				</tr>
			</table>
			      <div id="sb">
			       <input type="button" style="margin-left:135px; background-color: #2478FF; color:white;"
			       value="이메일찾기" class="midbtn">		
					<input type="button" style="margin-left:185px; background-color: #2478FF; color:white;" 
					value="비밀번호찾기"  class="midbtn" >	
					<input type="button" style="margin-left:185px; background-color: #2478FF; color:white;" 
					value="회원가입" class="midbtn">	
				  </div>
		</form>
	</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>