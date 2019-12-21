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
<style>
.section_pwconfirm {
	line-height: 14px;
	width: 400px;
	margin: 0 auto;
	padding: 32px 29px 32px;
	border: 1px solid #dadada;
	/* background: #fff; */
}

#content {
	position: relative;
	padding: 32px 51px 95px;
}

#container {
	position: relative;
	z-index: 20;
	max-width: 954px;
	height: 100%;
	margin: 0 auto;
}

#wrap {
	position: relative;
	min-width: 700px;
	height: 100%;
	padding-bottom: 30px;
}

body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input,
	legend, li, ol, p, select, table, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

body, button, input, select, table, textarea {
	font-family: Dotum, sans-serif;
	font-size: 12px;
}

body {
	width: 100%;
	height: 100%;
	-webkit-text-size-adjust: none;
}

.skin_main {
	/* background: #f5f6f8; */
}

.spc_content {
	position: relative;
	margin-top: 43px;
}

fieldset, img {
	border: 0;
}

.blind, legend {
	position: absolute;
	clip: rect(0px, 0px, 0px, 0px);
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
}

.spc_row, .spc_row+.spc_row2 {
	margin-bottom: 8px;
}

.spc_row3 {
	margin-top: -1px;
	border-top: 1px solid #f0f0f0;
}

.spc_content [class^=spc_row] {
	position: relative;
	height: 43px;
	border: 1px solid #ccc;
}

.help {
	position: absolute;
	display: none;
	width: 270px;
}

.spc_content fieldset>div.captcha_member {
	padding: 30px 0 0;
	border: none;
}

.spc_content fieldset>div.login_check {
	margin: 32px 0 31px;
	border: none;
}

.spc_content .btn_area_btm {
	margin-top: 31px;
}



button {
	border: 0;
	background-color: transparent;
	-webkit-appearance: none;
	appearance: none;
	cursor: pointer;
}

.spc_content .btn_area_btm button {
	font-size: 14px;
	font-weight: 700;
	line-height: 16px;
	width: 300px;
	height: 47px;
	margin-top: 8px;
	padding: 16px 0 15px;
	text-align: center;
	color: #333;
	border: 1px solid #bfbfbf;
	/* background: #fff; */
}

.spc_content .btn_area_btm button:first-child {
	margin-top: 0px;
	color: #fff;
	border: none;
	background: #1fbc02;
}

.section_pwconfirm input[type=checkbox] {
	width: 13px;
	height: 13px;
	vertical-align: top;
}

.spc_content label {
	font-weight: 700;
	position: absolute;
	top: 16px;
	left: 9px;
	color: #8e8e8e;
}

.login_check .lbl {
	font-weight: 400;
	position: relative;
	top: 0px;
	left: 0px;
	padding-left: 7px;
	vertical-align: top;
	color: #666;
}

a {
	text-decoration: none;
}

.check_txt {
	line-height: 19px;
	width: 100%;
	margin-bottom: -4px;
	padding-top: 12px;
	color: #8e8e8e;
}

.check_txt strong {
	font-weight: 400;
	color: #ff6020;
}

.spico, .spimg, .sptxt {
	line-height: 999px !important;
	display: inline-block;
	overflow: hidden;
	width: 0px;
	height: 0px;
	vertical-align: top;
	background-repeat: no-repeat;
	background-position: 0 999px;
}

.spico {
	background-image:
		url("https://static.nid.naver.com/images/ui/myinfo/pc_sp_ico_shape_20170807.png");
}

.ico_arr4_dn {
	width: 13px;
	height: 13px;
	background-position: -15px -20px;
}

.int_box {
	display: block;
}

input[type=image], input[type=password], input[type=submit], input[type=text]
	{
	-webkit-border-radius: 0;
	-webkit-appearance: none;
}

.captcha_member .spc_row input[type=text] {
	font-size: 14px;
	font-weight: 700;
	line-height: 16px;
	height: 16px;
	margin: 15px 9px 0;
	vertical-align: top;
	color: #333;
	border: 0;
}

.captcha_member .captcha_txt {
	font-size: 12px;
	line-height: 16px;
	padding: 1px 0 12px;
	color: #666;
}

.captcha_box {
	position: relative;
	display: block;
	width: 354px;
	margin-bottom: 8px;
	border: 1px solid #d9d9d9;
	background: #fff;
}

.captcha_img {
	display: block;
	height: 87px;
	margin-right: 119px;
	text-align: center;
	border-right: 1px solid #d9d9d9;
}

.capcha_sound .captcha_img {
	margin: -1px 119px -1px -1px;
	border: solid 1px #1fbb02;
}

.captcha_box>a {
	font-size: 12px;
	position: absolute;
	top: 0px;
	right: 0px;
	display: block;
	width: 119px;
	height: 43px;
	text-decoration: none;
	color: #8e8e8e;
}

.captcha_box>a.btn_img, .captcha_box>a.btn_sound {
	top: 43px;
	border-top: 1px solid #f0f0f0;
}

.captcha_box>a span {
	line-height: 20px;
	display: block;
	height: 20px;
	margin: 13px 0 0 12px;
	padding-left: 22px;
}

.captcha_member .sp {
	background:
		url(https://static.nid.naver.com/images/web/user/sp_ico_captcha.gif)
		no-repeat;
}

.captcha_box>a.btn_img span {
	margin-top: 12px;
	background-position: -36px -50px;
}

.captcha_box>a.btn_refresh span {
	background-position: -36px 0;
}

.captcha_img .speaker {
	display: block;
	width: 27px;
	height: 36px;
	margin: 0 auto;
	padding: 10px 0 9px;
	background-position: -1px 9px;
}

.captcha_img a {
	text-decoration: none;
	color: #8e8e8e;
}

.captcha_img .audio_txt {
	color: #8e8e8e;
}

.captcha_box>a.btn_sound span {
	margin-top: 12px;
	background-position: -36px -26px;
}

.help .txt {
	line-height: 19px;
	position: relative;
	z-index: 3;
	text-align: left;
	color: #666;
	border: 1px solid #ccc;
	background: #fff;
}

.left .arrow {
	position: absolute;
	z-index: 4;
	top: 8px;
	left: -6px;
	display: block;
	overflow: hidden;
	width: 7px;
	height: 12px;
	background:
		url(https://static.nid.naver.com/images/web/user/bu_help_left_140811.gif)
		no-repeat;
}

.help .txt p {
	line-height: 14px;
	padding: 16px 15px 11px;
	letter-spacing: -1px;
	color: #666;
}

.help .txt .topline {
	line-height: 19px;
	margin-top: -5px;
	padding: 2px 15px 11px;
	color: #8e8e8e;
}

.help .txt p>span {
	line-height: 19px;
	display: inline-block;
	margin-top: 10px;
	color: #8e8e8e;
}

.help .txt p>.ex {
	line-height: 19px;
	display: inline-block;
	margin-top: 10px;
	color: #8e8e8e;
}

.help .txt p>span:first-child {
	padding-top: 0px;
	color: #666;
}

.help .txt .topline>.ex2 {
	display: block;
	min-width: 236px;
	margin-top: 11px;
	padding: 13px 0 1px;
	letter-spacing: -1px;
	color: #666;
	border-top: 1px solid #ccc;
}

.help .txt p strong {
	color: #ff6020;
}

.help .txt .ex+.ex2 {
	display: block;
	min-width: 236px;
	margin: 11px 0 -2px;
	padding: 13px 0 0;
	letter-spacing: -1px;
	color: #666;
	border-top: 1px solid #ccc;
}

address, em {
	font-style: normal;
}

.help .txt em {
	display: inline-block;
	width: 1px;
	height: 11px;
	margin: 0 3px 0 2px;
	color: #ccc;
}

.help .txt p img {
	margin: 5px 0 0 1px;
	vertical-align: top;
}

.spc_content [class^=spc_row] input[type=password], .spc_row .txt_userid
	{
	font-size: 14px;
	font-weight: 700;
	line-height: 16px;
	height: 16px;
	margin: 15px 9px 0;
	vertical-align: top;
	color: #333;
	border: 0;
}

.spc_header h2 {
	font-size: 20px;
	line-height: 22px;
	color: #333;
}

.spc_header .contxt {
	line-height: 19px;
	margin-top: 10px;
	letter-spacing: -1px;
	color: #666;
}

.spc_header .contxt_list {
	margin-top: 8px;
	padding-left: 5px;
	color: #666;
	background:
		url(https://static.nid.naver.com/images/web/user/bg_contxt_list.gif)
		no-repeat 0 7px;
}

.spc_header .contxt em, .spc_header .contxt_list em {
	color: #ff6020;
}

.link {
	text-decoration: underline;
	color: #004790;
}

.link:active, .link:hover, .link:visited, .spc_header .contxt .link:link
	{
	color: #336fc9;
}
</style>
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
						<form name="fm" id="fm">
							<input name="token_help" type="hidden" value="4dyAbm4qXevONIw0">
							<input name="menu" type="hidden" value="security"> <input
								name="encPasswd" id="encPasswd" type="hidden"> <input
								name="encNewPasswd" id="encNewPasswd" type="hidden"> <input
								name="encNm" id="encNm" type="hidden"> <input
								name="captcha_type" id="captcha_type" type="hidden"
								value="image"> <input name="chptchakey" id="chptchakey"
								type="hidden" value="RAo8cBYfQMQdpoNA"> <input
								name="tempAutoValue" id="tempAutoValue" type="hidden"> <input
								name="tempChkBlockIp" id="tempChkBlockIp" type="hidden">

							<fieldset>
								
								
								<p class="spc_row2">
									<label id="lb_new_pw" for="new_pw">새 비밀번호</label> <input
										name="new_pw" title="새 비밀번호 입력" id="new_pw"
										style="width: 260px" onkeydown="checkShiftDownNoMsg(event);"
										onkeyup="checkShiftUp(event);checkpwd_login('new_pw','now_pw');"
										onkeypress="capslock(event);"
										onfocus="convertDiv('new_pw','none');checkpwd_login('new_pw','now_pw');"
										onblur="convertDiv('new_pw','block');showhelpmsg(-1);"
										type="password" maxlength="20">
								</p>
								<p class="spc_row3">
									<label id="lb_conf_pw" for="conf_pw">새 비밀번호 확인</label> <input
										title="새 비밀번호 확인 입력" id="conf_pw" style="width: 260px"
										onfocus="convertDiv('conf_pw','none');"
										onblur="convertDiv('conf_pw','block');" type="password"
										maxlength="20">
								</p>

								<!--비밀번호 안전도 말풍선-->
							

								
								<div align="center">
									<button id="changeSubmit" type="submit" class="btn4">확인</button>
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
