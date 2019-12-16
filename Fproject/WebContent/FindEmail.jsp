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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
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

<section class="course_details_area section_padding" style="padding-bottom: 0;">
	<div class="container">
		<div class="card-header">
			<h3>이메일 찾기</h3>
		</div>
	
	<div>
		<form action="login.action" method="post" id="loginForm">
			  <div style="margin-left:200px;">  
			  	이름<input type="text" id="id" name="id" placeholder="아이디">
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
				<input type="submit"  style="   width:100%;
        height: 40px; background-color: #2478FF; color:white;" value="인증번호 확인">
				</div>
		</form>
	</div>
		
</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>