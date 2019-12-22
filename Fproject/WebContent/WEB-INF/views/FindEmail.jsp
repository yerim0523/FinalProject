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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="css/FindEmail.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>

<script type="text/javascript">

	$(function()
	{
		$(".findInfo").click(function()
		{
			var params = {};
			params.memName = $("#memName").val();
			params.memTel = $("#memTel").val();
			
			$.ajax({
                type : "POST"
                , url : "selectEmp.action"
                , data : params
                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
                 , success: function(data){
                    var isMember = data;
                    if(isMember === "Y"){
                    	alert("일치하는 정보가 있음!");
                    }else{
                    	alert("일치하는 정보가 없음!!");
                    }
                 }
             });
		});
	});
	
	/* 
	function sms()
	{
		
		result = Math.floor(Math.random() * 1000000) + 100000;
		if (result > 1000000)
		{
			result = result - 100000;
		}
		
		alert("인증번호를 전송하였습니다." + result);
		//alert(result);

	}
 */
	function sms_ok()
	{
		otp = $('#otp').val();

		f = document.FindEmailForm;

		if (!f.memName.value)
		{
			alert("이름을 입력하세요.");
			f.memName.focus();
			return;
		}

		if (!f.memTel.value)
		{
			alert("전화번호를 입력하세요.");
			f.memTel.focus();
			return;
		}
		
		if(result == otp)
		{
			f.submit();
		}
		
		else
		{
			alert("인증번호가 일치하지 않습니다");
		}

		/* alert(result); */

		/* alert(otp); */

	}
 
</script>



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
				<form action="efind.action" method="get" role="form" id="memberForm" name="FindEmailForm">
				<div class="login_container" data-v-3eb3c17e="">
					<input class="findid_id_input" name="memName" id="memName" type="text" placeholder="이름" > 
					<input class="findid_hp_input" name="memTel" id="memTel" style="ime-mode: disabled; width: 475px;" type="tel" placeholder="휴대폰 번호 입력"> 
						<button type="button" class="findid findInfo">인증번호</button>
						<span class="findid_txt" data-v-3eb3c17e="" style="font-size: 12px;">가입 시 입력하신 휴대전화 번호와 동일하게 입력하셔야 인증번호를 받을 수 있습니다.</span> 
						<input class="findid_id_input" id="otp" type="tel"  placeholder="인증번호 숫자 6자리" data-v-3eb3c17e=""> 
						<br data-v-3eb3c17e="">
					<!---->
					
					<!-- <a class="findid_btn reg_btn" data-v-3eb3c17e="" style="background: #FFFFFF;" type="submit">확인</a> -->
					<button type="button" class="btn4" onclick="sms_ok()">확인</button>
					<!-- <button type="submit" class="btn4">확인</button> -->
				</div>
				</form>
				
				<!-- <p>
			    고객님의 인증번호는 <span id="auth"></span> 입니다.
			    </p> -->
			</div>
		</div>
	</div>
</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>
