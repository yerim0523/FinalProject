<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>pw_modify</title>
<link rel="stylesheet" href="css/button.css" >
<link rel="stylesheet" href="css/pw_modify.css" >
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>

<script type="text/javascript">

	$(function()
	{
		$(".pwChange").click(function()
		{
			if($("#memPw").val()==null)
			{
				alert("비밀번호를 입력하세요.");
				$("#memPw").focus();
				return;
			}
			
			if($("#newPw").val()==null)
			{
				alert("새로운 비밀번호를 입력하세요.");
				$("#newPw").focus();
				return;
			}
			
			if($("#newPw2").val()==null)
			{
				alert("비밀번호를 한번 더 입력하세요.");
				$("#newPw2").focus();
				return;
			}
			
			if($("#newPw").val() == $("#newPw2").val())
			{
				var params = {};
				params.memId = $("#memId").val();
				params.memPw = $("#memPw").val();
				
				$.ajax({
					type : "POST"
					, url : "pwCheck.action"
					, data : params
					, contentType :"application/x-www-form-urlencoded; charset=UTF-8"
					, success : function(data)
					{
						pwCheck = data;
						/* 
						alert(pwCheck);
						alert($("#mempw").val());
						 */
						 
						if(pwCheck == $("#memPw").val()){
							alert("일치");	
							change();
						}else{
							alert("현재 비밀번호가 일치하지 않습니다.");
						}
							
					} 
				});
			}
			
			else
			{
				alert("위의 비밀번호와 일치하지 않습니다.");
				return;
			}
			
			
			
			
		});
	});
	
	function change()
	{
		f = document.memPwModify;
		
		/* 
		var memPw = document.getElementById("memPw").value();
		var newPw = document.getElementById("newPw").value();
		 */

		 document.getElementById("memPw").value = document.getElementById("newPw").value;
		 
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
	<div class="row">
	
		<c:import url="sidebar.jsp"></c:import>

<div class="col-md-9">
	<br><br><br>
<div class="skin_main" id="mainBody">
	<div id="wrap">
		<div id="container" style="height: 817px;">
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
						<form action="memPwModify.action" method="post" name="memPwModify" id="memPwModify">
								<p class="spc_row1">
									<input type="hidden" id="memId" name="memId" value="${member.memId }">
									<input name="memPw" id="memPw" style="width: 260px"
										type="password" maxlength="20">
								</p>
								<p class="spc_row2">
									<input name="newPw" id="newPw" style="width: 260px"
										type="password" maxlength="20">
								</p>
								<p class="spc_row3">
									 <input
										id="newPw2" name="newPw2" style="width: 260px"
										type="password"
										maxlength="20">
								</p>
								<!--비밀번호 안전도 말풍선-->
							

								
								<div align="center">
									<button id="pwChange" type="button" class="btn4 pwChange">확인</button>
									<button type="button" class="btn4">취소</button>
								</div>
						</form>
					</div>
				</div>
				<div>${member.memId }</div>
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
