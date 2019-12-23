<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>FindPassword.jsp</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="css/FindPassword.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>

<script type="text/javascript">
	
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

    $(function()
    {
       $(".findInfo").click(function()
       {
          var params = {};
          params.memName = $("#memName").val();
          params.memId = $("#memId").val();
          
          $.ajax({
                 type : "POST"
                 , url : "selectPmp.action"
                 , data : params
                 , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
                  , success: function(data){
                     var isMember = data;
                     if(isMember === "Y"){
                        alert("일치하는 정보가 있음!");
                        sms();
                     }else{
                        alert("일치하는 정보가 없음!!");
                     }
                  }
              });
       });
    });
    
    

    function sms_ok()
    {
       otp = $('#otp').val();

       f = document.FindPasswordForm;

       if (!f.memName.value)
       {
          alert("이름을 입력하세요.");
          f.memName.focus();
          return;
       }

       if (!f.memId.value)
       {
          alert("아이디를 입력하세요.");
          f.memId.focus();
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
		<div>
			<div class="frame">
				<div class="pagetitle">
					<h1 data-v-3eb3c17e="">비밀번호 찾기</h1>
				</div>
				<form action="password.action" method="get" role="form" name="FindPasswordForm">
				<div class="login_container" data-v-3eb3c17e="">
					<input class="findid_id_input" type="text" id="memName" name="memName" placeholder="이름" data-v-3eb3c17e=""> 
					<input class="findid_hp_input" id="memId" name="memId" style="ime-mode: disabled; width: 475px;" type="email" placeholder="아이디 입력"> 
						<button type="button" class="findid findInfo" >인증번호</button>
						<span class="findid_txt" style="font-size: 12px;">가입 시 입력하신 이메일과 동일하게 입력하셔야 인증번호를 받을 수 있습니다.</span> 
						<input class="findid_id_input" id="otp" type="tel" placeholder="인증번호 숫자 6자리"> 
						<br>
					<!---->
					
					<button type="button" class="btn4" onclick="sms_ok()">확인</button>
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
