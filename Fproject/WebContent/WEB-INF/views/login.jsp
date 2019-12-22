
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
<style>
p, ul {
	padding: 0;
	margin: 0;
}

a {
	-webkit-text-decoration: none;
	text-decoration: none;
	color: inherit;
}

*, *::before, *::after {
	box-sizing: border-box;
}

.cbVgkG {
	max-width: 376px;
	width: 100%;
}

.kfHOmn {
	padding: 64px 0 128px 0;
	margin: 0 auto;
	background-color: #fff;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	min-height: calc(-72px + 100vh);
}
/* @media all and (max-width:1023px) */
.kfHOmn {
	min-height: calc(-64px + 100vh);
}

article, aside, dialog, figcaption, figure, footer, header, hgroup, main,
	nav, section {
	display: block;
}

.bFLlZs {
	position: relative;
	margin-top: 0px;
}

body {
	margin: 0;
	text-align: left;
	text-transform: none;
	line-height: 1.5;
	-webkit-letter-spacing: 0;
	-moz-letter-spacing: 0;
	-ms-letter-spacing: 0;
	letter-spacing: 0px;
	font-family: -apple-system, "BlinkMacSystemFont", "Segoe UI", "Roboto",
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	background: #f8f8f9;
	position: relative;
	margin: 0;
}
/* @media all and (max-width:1023px) */
body {
	background: white;
}

html {
	line-height: 1.15;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-ms-overflow-style: scrollbar;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

h2 {
	color: #182026;
	font-weight: 600;
	margin: 0 0 10px;
	padding: 0;
	line-height: 32px;
	font-size: 28px;
}

.jtKWHE {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin-bottom: 16px;
}

.fnZqte {
	margin-bottom: 36px;
}

hr {
	box-sizing: content-box;
	height: 0px;
	overflow: visible;
}

hr {
	margin: 20px 0;
	border: none;
	border-bottom: 1px solid rgba(16, 22, 26, 0.15);
}

button {
	border-radius: 0;
}

input, button, select, optgroup, textarea {
	margin: 0;
	font-size: inherit;
	line-height: inherit;
}

button, input {
	overflow: visible;
}

button, select {
	text-transform: none;
}

.dPbiof {
	border-radius: 2px;
	margin-bottom: 16px;
	-webkit-transition: filter 0.1s;
	transition: filter 0.1s;
	background-color: #ffe812 !important;
	color: #3e4042;
}

.bRQEnB {
	border-radius: 2px;
	margin-bottom: 16px;
	-webkit-transition: filter 0.1s;
	transition: filter 0.1s;
	background-color: #00c73c !important;
	color: #fff;
}

.ixHDid {
	border-radius: 2px;
	margin-bottom: 16px;
	-webkit-transition: filter 0.1s;
	transition: filter 0.1s;
	background-color: #1877f2 !important;
	color: #fff;
}

.koQaIk {
	border-radius: 2px;
	margin-bottom: 16px;
}

.fhPrqq {
	width: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	vertical-align: middle;
	border-radius: 3px;
	color: #fff;
	background-color: #ff922b;
	font-weight: 700;
	font-size: 16px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	padding: 0 20px;
	height: 48px;
	-webkit-transition: background-color 0.1s;
	transition: background-color 0.1s;
	-webkit-text-decoration-line: none;
	text-decoration-line: none;
}

button, html [type='button'], [type='reset'], [type='submit'] {
	-webkit-appearance: button;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font-family: -apple-system, "BlinkMacSystemFont", "Segoe UI", "Roboto",
		"Helvetica Neue", Arial, sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol";
	line-height: inherit;
}

.flMyeK {
	border: 0;
	outline: none;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	-webkit-flex: initial;
	-ms-flex: initial;
	flex: initial;
	box-sizing: border-box;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
}

.gyFpnS {
	width: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	vertical-align: middle;
	border-radius: 3px;
	color: #3e4042;
	background-color: #f8f8f9;
	font-weight: 700;
	font-size: 16px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	padding: 0 20px;
	height: 48px;
	-webkit-transition: background-color 0.1s;
	transition: background-color 0.1s;
	-webkit-text-decoration-line: none;
	text-decoration-line: none;
}

.eLfQiK {
	margin: 16px 0;
}

:not (:disabled ):not (.disabled ).flMyeK {
	cursor: pointer;
}

.kfHOmn p {
	font-size: 12px;
	line-height: 1.45;
	text-align: left;
	color: #a8aeb3;
	text-align: center;
}

.fSoDfq {
	width: 100%;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	vertical-align: middle;
	border-radius: 3px;
	color: #fff;
	background-color: #5faec9;
	font-weight: 700;
	font-size: 16px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	padding: 0 20px;
	height: 48px;
	-webkit-transition: background-color 0.1s;
	transition: background-color 0.1s;
	-webkit-text-decoration-line: none;
	text-decoration-line: none;
}

.kCztpU {
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.kfHOmn button>span {
	vertical-align: middle;
}

img {
	vertical-align: middle;
	border-style: none;
}

.koQaIk img {
	width: 24px;
	height: 24px;
	margin-right: 4px;
}

.jwdpRj {
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	font-size: 0px;
	width: 24px;
	height: 24px;
	margin-right: 4px;
}

svg:not (:root ) {
	overflow: hidden;
}

.bRQEnB img {
	width: 24px;
	height: 24px;
	margin-right: 4px;
}

.jzndrT {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	margin: 0 0 16px;
}

.cgoDOa {
	font-size: 11px;
	font-weight: normal;
	color: #3e4042;
	line-height: 16px;
	-webkit-letter-spacing: normal;
	-moz-letter-spacing: normal;
	-ms-letter-spacing: normal;
	letter-spacing: normal;
	margin: 0;
	display: block;
	float: left;
	color: #a8aeb3;
	-webkit-text-decoration: underline;
	text-decoration: underline;
}

.keyGVD {
	font-size: 11px;
	font-weight: normal;
	color: #3e4042;
	line-height: 16px;
	-webkit-letter-spacing: normal;
	-moz-letter-spacing: normal;
	-ms-letter-spacing: normal;
	letter-spacing: normal;
	margin: 0;
	display: block;
	text-align: right;
	color: #a8aeb3;
	-webkit-text-decoration: underline;
	text-decoration: underline;
}

label {
	display: inline-block;
}

label {
	display: inline-block;
}

.kBgtyY {
	font-size: 14px;
	font-weight: normal;
	color: #3e4042;
	line-height: 20px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	margin: 0;
	margin: 0 0 4px;
	color: #3e4042;
}

.cIWDpP {
	display: block;
}

.feokCA {
	font-size: 14px;
	font-weight: normal;
	color: #3e4042;
	line-height: 20px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	margin: 0;
	border: solid 1px #dde0e2;
	border-radius: 1px;
	background-color: white;
	height: 48px;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	width: 100%;
	color: #3e4042;
	box-sizing: border-box;
	padding: 0 16px;
	border-radius: 3px;
}
</style>
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
					<div class="LoginPage__LoginContainer-co2bls-1" align="center" style="padding: 90px 0px 90px 0px;">
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
										href="findemail.action">아이디를 잊으셨나요?</a><a
										class="LoginPage__SignUpButton-co2bls-3 keyGVD"
										href="join.action">회원가입하기</a>
									<a class="LoginPage__ResetPasswordButton-co2bls-4 cgoDOa"
										href="findpassword.action">비밀번호를 잊으셨나요?</a>
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
