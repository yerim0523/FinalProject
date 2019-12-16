<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Test.css">
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#submitBtn").click(function()
		{
			/* $("#err").css("display", "none"); */
			
			if($("#id").val()=="" || $("#pw").val()=="")
			{
				$("#err").html("항목을 모두 입력해야 합니다.").css("display", "inline");
				return;
			}
			
			$("#loginForm").submit();
		});
		
	});
</script>

</head>
<body>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>로그인</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form  method="post" id="loginForm">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input id="id" name="id" type="text" style="width:30px;" class="form-control" placeholder="username"><h4><a style="color:white;">@</a></h4>
							<!-- <select class="form-control" multiple style="width:30px;"> -->
							
							<select class="form-control" style="width:30px;">
							  <option>이메일</option>
							  <option>naver.com</option>
							  <option>yahoo.co.kr</option>
							  <option>daum.net</option>
							  <option>nate.com</option>
							  <option>gmail.com</option>
							</select>
				
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input id="pw" name="pw" type="password" class="form-control" placeholder="password">
						</div>
						<!-- <div class="row align-items-center remember">
							<input type="checkbox">Remember Me
						</div> -->
						<div class="form-group"> 
							<input type="button" value="Login" id="submitBtn" class="btn float-right login_btn">
						</div>
						<span id="err" style="color: red; display: none;"></span>
					</form>
				</div>
				<div class="form-group">
							<input type="submit" value="회원가입" style="margin-right:40px;" class="btn float-right subbtn">
							<input type="submit" value="ID찾기" style="margin-right:40px;"class="btn float-right subbtn">
							<input type="submit" value="PW찾기" style="margin-right:40px;"class="btn float-right subbtn">
				</div>
			
			</div>
		</div>
	</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>
</body>
</html><%@ page contentType="text/html; charset=UTF-8"%>
