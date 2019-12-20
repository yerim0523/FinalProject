<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko_KR" data-react-helmet="lang">
<head>
<title>login.jsp</title>
<link rel="stylesheet" href="css/Login.css">
</head>

<div>
	<c:import url="bar.jsp"></c:import>
</div>
<br><br><br><br>

<body class="class101-ui-portal">
	<div id="root">
		<div id="wrapper">
			<div class="routes__Body-sc-14o1w9u-0 bFLlZs">
				<main class="routes__Main-sc-14o1w9u-1 eYSVqq">
					<div class="LoginPage__LoginContainer-co2bls-1 kfHOmn">
						<div class="LoginPage__LoginInnerContainer-co2bls-0 cbVgkG">
							<h2 class="LoginPage__LoginTitleText-co2bls-5 jtKWHE">로그인</h2>
							<div class="LoginPage__InvitationCalloutSkeleton-co2bls-8 fnZqte"></div>
							<form>
								<div class="sc-hwwEjo jzndrT">
									<label class="sc-iyvyFf kBgtyY">이메일</label>
									<div class="sc-eTuwsz cIWDpP">
										<input name="email" class="sc-hrWEMg feokCA   " type="email"
											placeholder="example@naver.com" value="" autocomplete="off">
									</div>
								</div>
								<div class="sc-hwwEjo jzndrT">
									<label class="sc-iyvyFf kBgtyY">비밀번호</label>
									<div class="sc-eTuwsz cIWDpP">
										<input name="password" class="sc-hrWEMg feokCA   "
											type="password" placeholder="********" value=""
											autocomplete="off">
									</div>
								</div>
								<div>
									<a class="LoginPage__ResetPasswordButton-co2bls-4 cgoDOa"
										href="memberfindform.action">아이디를 잊으셨나요?</a><a
										class="LoginPage__SignUpButton-co2bls-3 keyGVD"
										href="/register?redirect=%2Flogin">회원가입하기</a>
									<a class="LoginPage__ResetPasswordButton-co2bls-4 cgoDOa"
										href="/reset-password">비밀번호를 잊으셨나요?</a>
								</div>
								<button
									class="sc-jTzLTM flMyeK sc-ckVGcZ fhPrqq LoginPage__LoginButton-co2bls-2 eLfQiK"
									type="submit" color="orange" fill="true">
									<span class="sc-fjdhpX kCztpU">로그인</span>
								</button>
							</form>
							
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>

<div>
	<c:import url="footer.jsp"></c:import>
</div>	

</body>
</html>
