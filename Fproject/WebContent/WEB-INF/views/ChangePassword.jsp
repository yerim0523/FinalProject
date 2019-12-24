<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>ChangePassword.jsp</title>
<link rel="stylesheet" href="css/button.css" >
<link rel="stylesheet" href="css/ChangePassword.css" >

<script type="text/javascript">

	function passwordchange()
	{
		/* id = document.getElementById("memId"); */
		/* var memPw = document.getElementById("test").getAttribute("memPw");
		memPw = document.getElementById("test").value; */
		
		f = document.passwordChange;
		
		if(!f.newpw.value)
		{
			alert("비밀번호를 입력하세요.");
			f.newpw.focus();
			return;
		}
		
		if(!f.newpw2.value)
		{
			alert("비밀번호를 한번 더 입력하세요.");
			f.newpw2.focus();
			return;
		}
		
		if(f.newpw.value != f.newpw2.value)
		{
			alert("위의 비밀번호와 일치하지 않습니다.");
			return;
		}
		
		f.submit();
		
		
		
	}

</script>

</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>


<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div class="container">
	<div class="row" style="padding: 0px 200px; height: 480px;">


<div class="col-md-9">
	<br><br><br>
<div class="skin_main" id="mainBody">
	<div id="wrap">
		<div id="container">
			<div id="content">
				<div class="section_pwconfirm">
					<div class="spc_header">
						<h2>비밀번호 변경</h2>
						<p class="contxt">
							<a class="link" target="_blank">안전한 비밀번호로 내정보를 보호</a>하세요
						</p>
						<p class="contxt contxt_list">
							<em>다른 아이디/사이트에서 사용한 적 없는 비밀번호</em>
						</p>
						<p class="contxt contxt_list">
							<em>이전에 사용한 적 없는 비밀번호</em>가 안전합니다.
						</p>
					</div>
					<div class="spc_content">
						<form action="updatePw.action" method="post" name="passwordChange">
							<input name="token_help" type="hidden" value="4dyAbm4qXevONIw0">
							<input name="menu" type="hidden" value="security"> 
							<input name="encPasswd" id="encPasswd" type="hidden"> <input
								name="encNewPasswd" id="encNewPasswd" type="hidden"> <input
								name="encNm" id="encNm" type="hidden"> <input
								name="captcha_type" id="captcha_type" type="hidden"
								value="image"> <input name="chptchakey" id="chptchakey"
								type="hidden" value="RAo8cBYfQMQdpoNA"> <input
								name="tempAutoValue" id="tempAutoValue" type="hidden"> <input
								name="tempChkBlockIp" id="tempChkBlockIp" type="hidden">

							<fieldset>
								
								
								<p class="spc_row2">
									
									<input name="newpw" id="newpw" style="width: 260px"
										type="password" maxlength="20">
								</p>
								<p class="spc_row3">
									 <input
										id="newpw2" name="newpw2" style="width: 260px"
										type="password"
										maxlength="20">
								</p>

								<!--비밀번호 안전도 말풍선-->
							

								
								<div align="center">
									<button id="changeSubmit" type="button" class="btn4" onclick="passwordchange()">확인</button>
									<button type="button" class="btn4">취소</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
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
