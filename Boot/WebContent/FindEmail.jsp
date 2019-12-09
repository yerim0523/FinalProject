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
	<h3 style="margin-left:620px;">이메일찾기</h3>  
	<!-- 콘텐츠 영역 -->
	
	<div style="margin-left:420px;">
		<form action="login.action" method="post" id="loginForm">
			  <div style="margin-left:200px;">  이름<input type="text" id="id" name="id" placeholder="아이디">
			  </div>
				<div style="margin-left:200px;">
				전화번호<input type="text" placeholder="전화번호">
				</div>	
				<div>
						<input type="submit"  style=" margin-left:185px;    width:20%;
        height: 40px; background-color: #2478FF; color:white;" value="인증번호 발송">
							</div>		
					<div style="margin-left:200px;">
				인증번호<input type="text" " placeholder="인증번호">
				<input type="submit"  style="   width:10%;
        height: 40px; background-color: #2478FF; color:white;" value="인증번호 확인">
				</div>
		</form>
	</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>