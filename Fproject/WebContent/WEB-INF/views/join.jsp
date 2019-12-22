<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko_KR" data-react-helmet="lang">
<head>
<title>join.jsp</title>
<link rel="stylesheet" href="css/button.css" >
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

.ksOaZn {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	-webkit-align-content: stretch;
	-ms-flex-line-pack: stretch;
	align-content: stretch;
	margin-right: -12px;
	margin-left: -12px;
}

.kGolec {
	position: relative;
	margin-left: auto;
	margin-right: auto;
}
/* @media all and (min-width:1024px) */
.kGolec {
	max-width: 960px;
}

.iexDaY {
	padding: 64px 0 128px 0;
	background-color: white;
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

html {
	line-height: 1.15;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-ms-overflow-style: scrollbar;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.hBlXcX {
	position: relative;
	min-height: 1px;
	padding-right: 12px;
	padding-left: 12px;
	box-sizing: border-box;
}
/* @media all */
.hBlXcX {
	width: 100%;
}
/* @media all and (min-width:1024px) */
.hBlXcX {
	width: 50%;
	margin-left: 25%;
}

h1 {
	color: #182026;
	font-weight: 600;
	margin: 0 0 10px;
	padding: 0;
	line-height: 40px;
	font-size: 36px;
}

.iexDaY h1 {
	font-size: 32px;
	line-height: 44px;
	-webkit-letter-spacing: -0.6px;
	-moz-letter-spacing: -0.6px;
	-ms-letter-spacing: -0.6px;
	letter-spacing: -0.6px;
	margin: 16px 0 48px;
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

.kVAMqa {
	margin-top: 14px;
}

:not (:disabled ):not (.disabled ).flMyeK {
	cursor: pointer;
}

.iexDaY p {
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

.iexDaY button>span {
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

.hGLglh {
	margin-bottom: 16px;
}

label {
	display: inline-block;
}

label {
	display: inline-block;
}

.fvgNV {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	position: relative;
}

.ekXzKy {
	display: none;
}

input[type='radio'], input[type='checkbox'] {
	box-sizing: border-box;
	padding: 0;
}

.izbsWv {
	font-size: 14px;
	font-weight: normal;
	color: #3e4042;
	line-height: 20px;
	-webkit-letter-spacing: -0.2px;
	-moz-letter-spacing: -0.2px;
	-ms-letter-spacing: -0.2px;
	letter-spacing: -0.2px;
	margin: 0;
	margin-left: 8px;
}

.FDTgq {
	font-weight: bold;
	-webkit-text-decoration: underline;
	text-decoration: underline;
	color: #459fbf;
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

button.btn4
{
	font-weight: bold;
	background-color: #eec4c4;
}
</style>
</head>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<body class="class101-ui-portal">
	<div id="root">
		<div id="wrapper">
			<div class="routes__Body-sc-14o1w9u-0 bFLlZs">
				<main class="routes__Main-sc-14o1w9u-1 eYSVqq">
					<div class="RegisterPage__Container-sc-1vwt6wy-0 iexDaY">
						<div class="sc-fYiAbW kGolec">
							<div class="sc-krvtoX ksOaZn">
								<div class="sc-cbkKFq hBlXcX">
									<h1>회원가입</h1>
									<form>
										<div
											class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*이름</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="name" class="sc-hrWEMg feokCA   " type="text"
													placeholder="홍길동" value="" autocomplete="off">
											</div>
										</div>
										<div
											class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*이메일</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="email" class="sc-hrWEMg feokCA   " type="text" placeholder="example@naver.com" value="" autocomplete="off">
											</div>
										</div>
										<div
											class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*휴대폰 번호</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="phoneNumber" class="sc-hrWEMg feokCA   "
													type="text" placeholder="-를 제외한 휴대폰 번호를 입력해주세요" value=""
													autocomplete="off" style="width: 60%;">
												<button type="button" name="num" class="btn4" style="height: 45px; width: 35%;">인증번호</button>
											</div>
											
											
										</div>
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<div class="sc-eTuwsz cIWDpP">
												<input name="phoneNumber" class="sc-hrWEMg feokCA   "
													type="text"  value=""
													autocomplete="off" style="width: 60%;">
												<button type="button" name="num" class="btn4" style="height: 45px; width: 35%;">인증 확인</button>
											</div>
											
											
										</div>
										<div
											class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*비밀번호 (8자 이상)</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="password" class="sc-hrWEMg feokCA   "
													type="password" placeholder="********" value=""
													autocomplete="off">
											</div>
										</div>
										<div
											class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*비밀번호 확인</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="password2" class="sc-hrWEMg feokCA   "
													type="password" placeholder="********" value=""
													autocomplete="off">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*성별</label>
											<div>
												<input type="radio" name="gender" id="male2" value="남성"> 
												<label for="male">남성</label>
												<input type="radio" name="gender" id="female" value="여성"> 
												<label for="female">여성</label> 
												<input type="radio" name="gender" id="no" value="선택안함"> 
												<label for="no">선택안함</label>
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*직장</label>
											<div>
												<input type="text"  class="sc-hrWEMg feokCA   " name="company" id="company">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">관심 카테고리</label>
											<div>
												<label class="checkbox-inline">
												<input type="checkbox" id="show" name="show" value="전시"> 전시
												</label>
												<label class="checkbox-inline">
												<input type="checkbox" id="play" name="play" value="연극"> 연극
												</label>
												<label class="checkbox-inline">
												<input type="checkbox" id="performance" name="performance" value="공연"> 공연
												</label>
												<label class="checkbox-inline">
												<input type="checkbox" id="food" name="food" value="식당"> 식당
												</label>
												<label class="checkbox-inline">
												<input type="checkbox" id="cafe" name="cafe" value="카페"> 카페
												</label>
											</div>
										</div>
										
										
										<div>
											<label class="sc-RefOD fvgNV"><svg
													xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
													width="24" height="24">
													<path fill="#3e4042" fill-rule="evenodd"
														d="M 19 19 H 5 V 5 h 14 v 14 Z M 5 3 c -1.1 0 -2 0.9 -2 2 v 14 c 0 1.1 0.9 2 2 2 h 14 c 1.1 0 2 -0.9 2 -2 V 5 c 0 -1.1 -0.9 -2 -2 -2 H 5 Z" /></svg><input
												name="agreedTerms" class="sc-iQKALj ekXzKy" type="checkbox"><span
												class="sc-bwCtUz izbsWv"><a
													class="RegisterPage__StyledAnchor-sc-1vwt6wy-1 FDTgq"
													href="https://docs.google.com/document/d/1QfM61dBfDRfiL_7E7dbMqSpzcJO6MF0eOEpFgnpVO10"
													target="_blank" rel="noopener noreferrer">이용약관</a> 및 <a
													class="RegisterPage__StyledAnchor-sc-1vwt6wy-1 FDTgq"
													href="https://docs.google.com/document/d/1VlL2MopA-EFJGQrqyKFc4Fkwvi0k1Wd069hIA5EScvQ"
													target="_blank" rel="noopener noreferrer">개인정보 처리방침</a> 동의
													(필수)</span></label>
										</div>
										<br>
										
										<div align="center">
										<button class="btn4" type="submit" color="orange" fill="true" >
											<span class="sc-fjdhpX kCztpU">가입하기</span>
										</button>
										</div>
									</form>
									
								</div>
							</div>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>
