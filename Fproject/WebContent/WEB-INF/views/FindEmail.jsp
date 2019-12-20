<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>FindEmail.jsp</title>

<!-- <script type="text/javascript">

	$(function()
	{
		$(".btn4").on("click", function()
		{
			$("#title").text("아이디 찾기");
			$("#memName").val("");
			$("#memTel").val("");
			
			$("#memberForm").attr("action", "efind.action");
			$("#memName").focus();
		});
		
	});
 
</script> -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<style>
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

* {
	font-family: "Spoqa Han Sans", "Sans-serif";
}

.frame {
	width: 100%;
	max-width: 1300px;
	margin: 0px auto;
	clear: both;
	padding: 0px 30px;
	overflow: hidden;
}

/* .footer_sec1, .footer_sec2, .footer_sec3, .footer_sec4, #app>div>div.frame
	{
	position: relative;
	z-index: 2;
} */

body {
	margin: 0px;
	padding: 0px;
	font-size: 13px;
	word-break: keep-all;
}

.pagetitle {
	text-align: center;
	padding: 40px 0px 20px 0px;
	clear: both;
}

.pagetitle {
	padding-bottom: 0px;
}

.login_container {
	width: 100%;
	max-width: 600px;
	margin: 10px auto;
	padding: 16px;
}

.login_container {
	padding-top: 0px;
}

[data-v-3eb3c17e].login_container {
	margin: 0 auto;
}

[type=button], [type=submit], [type=text], [type=tel], [type=password],
	[type=email], textarea {
	-webkit-appearance: none;
	border-radius: 0;
}

.findid_id_input {
	background: #ffffff;
	border: 1px solid #bdbdbd;
	width: 100%;
	padding: 10px;
	margin: 5px 0px;
	border-radius: 5px;
	height: 40px;
}

.findid_hp_input {
	background: #ffffff;
	border: 1px solid #bdbdbd;
	width: calc(-105px + 100%);
	padding: 10px;
	margin: 5px 0px;
	border-radius: 5px;
	height: 40px;
}

[readonly] {
	background: #f1f1f1;
}

.findid_id_input, .findid_hp_input, .findid_id_input_2,
	.findid_id_input_3 {
	border: 1px solid #e1e1e1;
}

_:-ms-lang(x), .findid_hp_input {
	width: calc(-64px + 100%);
}

.login_container>[type=text], .login_container>[type=tel],
	.login_container>[type=password], .login_container>[type=email] {
	font-size: 14px;
}

.findid_hp_input {
	width: calc(-64px + 100%);
	margin-right: 3px;
}

.findid_hp_img {
	vertical-align: top;
	height: 39px;
	margin-top: 5px;
}

.findid_txt {
	padding: 10px 0px;
	color: #4c4c4c;
}

.login_container [data-v-3eb3c17e].findid_txt {
	padding: 7px 0 16px;
	display: inline-block;
}

.findid_txtbox {
	border-top: 1px solid #dfdfdf;
	border-bottom: 1px solid #dfdfdf;
	padding-bottom: 15px;
	margin: 40px 0px 20px 0px;
	color: #4c4c4c;
	font-size: 0.95em;
}

.findid_txtbox {
	letter-spacing: -1px;
}

.login_container [data-v-3eb3c17e].findid_txtbox {
	margin-top: 15px;
}

.findid_btn {
	background: #000000;
	border: 0px;
	width: 100%;
	max-width: 250px;
	padding: 10px;
	margin: 30px auto 2px auto;
	color: #ffffff;
	display: block;
	text-align: center;
	border: 1px solid #000000;
	border-radius: 5px;
}

.reg_btn {
	background: #000000;
	color: #ffffff;
	display: block;
	text-align: center;
	border: 1px solid #000000;
	width: 170px;
	height: 50px;
	padding: 0;
	border-radius: 4px;
	font-size: 17px;
	line-height: 46px;
}

.login_container [data-v-3eb3c17e].findid_btn {
	cursor: pointer;
}

.findid_txtbox h2 {
	font-size: 1.2em;
}

.findid_txtbox>h2 {
	letter-spacing: 0px;
}

.login_container .findid_txtbox img[data-v-3eb3c17e] {
	width: 3px;
	vertical-align: middle;
	margin: 0 3px 3px 0;
}

.pagetitle h1 {
	font-size: 2.2em;
	font-weight: normal;
	text-align: center;
	margin-bottom: 15px;
}

.pagetitle h1[data-v-3eb3c17e] {
	margin-bottom: 50px;
}
</style>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
	<div id="app">
		<div data-v-3eb3c17e="">
			<div class="frame" data-v-3eb3c17e="">
				<div class="pagetitle" data-v-3eb3c17e="" id="title">
					<h1 data-v-3eb3c17e="">아이디 찾기</h1>
				</div>
				<form action="efind.action" method="get" role="form" id="memberForm">
				<div class="login_container" data-v-3eb3c17e="">
					<input class="findid_id_input" name="memName" id="memName" type="text" placeholder="이름" > 
					<input class="findid_hp_input" name="memTel" id="memTel" style="ime-mode: disabled; width: 475px;" type="tel" placeholder="휴대폰 번호 입력"> 
						<button type="button" class="findid">인증번호</button>
						<span class="findid_txt" data-v-3eb3c17e="" style="font-size: 12px;">가입 시 입력하신 휴대전화 번호와 동일하게 입력하셔야 인증번호를 받을 수 있습니다.</span> 
						<input class="findid_id_input" id="otp" style="ime-mode: disabled;" type="tel" readonly="readonly" placeholder="인증번호 숫자 6자리" data-v-3eb3c17e=""> 
						<br data-v-3eb3c17e="">
					<!---->
					
					<!-- <a class="findid_btn reg_btn" data-v-3eb3c17e="" style="background: #FFFFFF;" type="submit">확인</a> -->
					<button type="submit" class="btn4">확인</button>
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
