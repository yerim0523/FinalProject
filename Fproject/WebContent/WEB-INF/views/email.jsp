<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>email.jsp</title>
<style>
.non_sign {
	padding-bottom: 50px !important;
}

.inquiry.non_sign {
	width: 670px !important;
	margin: 0 auto !important;
}

#content {
	position: relative;
	float: left;
	width: 670px;
	margin: 0 -252px 0 auto;
	padding: 30px 29px 20px 0;
	background-color: #fff;
}

#content {
	float: left;
	position: relative;
	width: 670px;
	margin: 0 -252px 0 auto;
	padding: 29px 29px 20px 0;
	background-color: #fff;
}

.wrap_leave #content {
	float: none;
	width: auto;
	margin: 0;
	padding: 25px 0 20px;
}

#container, .lnb, .top {
	width: 980px;
}

#container {
	position: relative;
	zoom: 1;
	height: 100%;
	margin: 0 auto;
	background:
		url(https://static.nid.naver.com/images/user/images/help/bg_container.png)
		repeat-y 699px 0;
}

#container, .lnb, .top {
	width: 980px;
}

#container {
	position: relative;
	margin: 0 auto;
	padding-bottom: 30px;
	height: auto !important;
	background:
		url(https://static.nid.naver.com/images/web/user/bg_container.png)
		repeat-y 699px 0;
	zoom: 1;
}

.wrap_leave #container {
	background: 0 0;
}

#wrap {
	position: relative;
	width: 100%;
	min-width: 1020px;
	min-height: 100%;
}

#wrap {
	position: relative;
	width: 100%;
	min-width: 1020px;
	min-height: 100%;
}

body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input,
	legend, li, ol, p, select, table, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

body, button, input, select, table, textarea {
	font-family: "돋움", Dotum, Arial, Helvetica, sans-serif;
	font-size: 12px;
}

body {
	width: 100%;
	height: 100%;
}

ol, ul {
	list-style: none;
}

body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input,
	legend, li, ol, p, select, table, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

body, button, input, select, table, textarea {
	font-family: "돋움", dotum, Helvetica, sans-serif;
	font-size: 12px;
}

body, html {
	width: 100%;
	height: 100%;
}

ol, ul {
	list-style: none;
}

body, p, h1, h2, h3, h4, h5, h6, menu, ul, ol, li, dl, dt, dd, table, th,
	td, form, fieldset, legend, input, textarea, button, select {
	margin: 0;
	padding: 0;
}

body, input, textarea, select, button, table {
	font-family: "돋움", Dotum, AppleGothic, sans-serif;
	font-size: 12px;
}

.content_header {
	margin-bottom: 8px;
	border-bottom: 2px solid #e5e5e5;
	*zoom: 1:;
}

.inquiry.non_sign .content_header {
	position: relative;
	margin: 10px 0;
}

.content_summary {
	font-size: 12px;
	line-height: 17px;
	margin-bottom: 30px;
	color: #888;
}

.inquiry.non_sign .content_summary {
	margin: 0;
	padding: 2px 0 41px;
	color: #666;
}

.section {
	position: relative;
	padding-bottom: 40px;
	*zoom: 1:;
}

.section_find {
	margin-top: -19px;
	padding-bottom: 80px;
}

.box6 {
	position: relative;
	z-index: 100;
	padding: 39px 40px 20px;
	border: 1px solid #e5e5e5;
}

.btn_area {
	text-align: center;
}

.section_find .btn_area {
	padding: 17px 0 15px;
}

.find_dsc {
	font-size: 12px;
	padding-top: 15px;
	color: #707070;
}

.find_dsc+.find_dsc {
	padding-top: 15px;
}

.find_dsc.open+.find_dsc, .find_dsc.unfold+.find_dsc {
	margin-top: -2px;
}

.find_dsc h3 {
	font-size: 12px;
	font-weight: 400;
}

.find_dsc.open h3 {
	font-weight: 700;
	letter-spacing: -1px;
}

.find_dsc_sub {
	display: none;
	margin-bottom: 7px;
}

.open .find_dsc_sub, .unfold .find_dsc_sub {
	display: block;
	margin-right: -25px;
}

.find_dsc p {
	font-size: 12px;
	line-height: 17px;
	margin-top: -2px;
	color: #888;
}

.find_dsc_sub p {
	padding-top: 7px;
}

a {
	text-decoration: none;
}

a {
	text-decoration: none;
}

a {
	text-decoration: none;
}

.find_dsc p a {
	text-decoration: underline;
	color: #390;
}

.find_dsc h3 a {
	display: inline-block;
	margin-left: 2px;
	text-decoration: underline;
	color: #707070;
}

address, em {
	font-style: normal;
}

address, em {
	font-style: normal;
}

em, address {
	font-style: normal;
}

.btn_checkid, .btn_confirm2, .btn_ct, .btn_findpw, .btn_login,
	.btn_login2, .btn_next2, .btn_prev, .dash, .edge, .ico_arr, .ico_arr2,
	.ico_help2 {
	position: relative;
	display: inline-block;
	background:
		url(https://static.nid.naver.com/images/web/user/sp_find_idpw.png)
		no-repeat;
}

.ico_arr {
	top: -3px;
	left: 3px;
	width: 5px;
	height: 3px;
	background-position: -120px -210px;
}

.open .ico_arr {
	background-position: -130px -210px;
}

.find_dsc p+p {
	padding-top: 7px;
}

.btn_login2 {
	width: 122px;
	height: 33px;
	background-position: 0 -140px;
}

.btn_findpw {
	width: 112px;
	height: 33px;
	background-position: 0 -70px;
}

.section_find .btn_area a+a {
	margin-left: 2px;
}

.blind, legend {
	position: absolute;
	clip: rect(0px, 0px, 0px, 0px);
	width: 0px;
	height: 0px;
	margin: -1px;
	overflow: hidden;
}

.blind, legend {
	visibility: hidden;
	overflow: hidden;
	position: absolute;
	top: 0px;
	left: 0px;
	width: 0px;
	height: 0px;
	font-size: 0px;
	line-height: 0;
}

.blind {
	display: block;
	overflow: hidden;
	*position: absolute:;
	top: 0px;
	left: 0px;
	width: 0px;
	height: 0px;
	border: 0;
	background: none;
	font-size: 0px;
	line-height: 0;
}

menu, ul, ol {
	list-style: none;
}

.list_id {
	display: inline-block;
	padding-bottom: 11px;
}

.list_id li {
	padding-bottom: 8px;
	text-align: left;
}

.list_id strong {
	display: inline-block;
	min-width: 208px;
	padding-right: 31px;
}

.list_id span {
	color: #333;
}

label {
	cursor: pointer;
}

label {
	cursor: pointer;
}

.list_id .label_rd {
	font-size: 14px;
	color: #333;
}

.content_header h2 {
	position: relative;
	float: left;
	clear: both;
	height: 21px;
	margin-bottom: -2px;
	padding: 0 2px 0 1px;
	border-bottom: 2px solid #4d4d4d;
}

.content_header h2 {
	position: relative;
	float: left;
	clear: both;
	height: 21px;
	margin-bottom: -2px;
	padding: 0 2px 0 1px;
	border-bottom: 2px solid #4d4d4d;
}

fieldset, img {
	border: 0;
}

fieldset, img {
	border: 0;
}

img, fieldset {
	border: 0;
}
</style>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
	<div class="wrap_leave" id="wrap">
		<div id="container" style="height: 851px;">
			<div class="non_sign inquiry " id="content">
				<div>
					<h2>
						<img width="67" height="16" alt="아이디 찾기"
							src="https://static.nid.naver.com/images/user/images/user/h_find_id.gif">
					</h2>
				</div>


				<p class="content_summary">고객님의 정보와 일치하는 아이디 목록입니다.</p>
				<form name="fm1" action="" method="POST">
					<input name="nv_id" type="hidden" value=""> <input
						name="token_help" type="hidden" value="UI8dbH3L8HieIXs0">
					<input name="authType" id="authType" type="hidden" value="RM">
					<div class="section section_find">
						<div class="box6" style="text-align: center">
							<span>회원님의 아이디는 ${memId } 입니다.</span>
						</div>
						<!-- 버튼 영역 -->
						<div class="btn_area">
							<div>
								<a href="login.jsp"><button type="button" class="btn4" id="login" name="login" style="padding: 13px 27px 13px 27px;">로그인하기</button></a>
								<a href="FindPassword.jsp"><button type="button" class="btn4" id="passwordFind" name="passwordFind" style="padding: 14px 20px 12px 20px;">비밀번호 찾기</button></a>
							</div>
						
								
							
						</div>
						<!-- 버튼 영역 -->
						<!-- 상세내용 영역 -->

						
						
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


</body>
</html>
