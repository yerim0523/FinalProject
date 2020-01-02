<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style type="text/css">
p
{
	font-weight: bold;
	font-size: 18pt;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<script type="text/javascript">
	$(function()
	{
		//alert(${myInfo.memGender});
		var gender = ${myInfo.memGen};
		var cate1 = ${myInfo.memCate1};
		var cate2 = ${myInfo.memCate2};
		
		//alert(cate1 + " " + cate2);
		
		$("input[name='memGen']:radio[value='"+ gender +"']").attr("checked","checked");
		$("input[name='check']:checkbox[value='"+ cate1 +"']").attr("checked","checked");
		$("input[name='check']:checkbox[value='"+ cate2 +"']").attr("checked","checked");
		
		
	});
	
	function sms()
	{
		result = Math.floor(Math.random() * 1000000) + 100000;
		if (result > 1000000)
		{
		   result = result - 100000;
		}
		
		alert("인증번호를 전송하였습니다." + result);
	}

	function sms_ok()
	{
		otp = $('#otp').val();
		
		f = document.memberJoinForm;
		
		if(result == otp)
		{
			alert("본인인증이 완료되었습니다.");
			document.getElementById("telOtp").value = "Y";
			document.getElementById("comTel").value = document.getElementById("memTel").value;
			document.getElementById("comName").value = document.getElementById("memName").value;
		}
		else
		{
			alert("인증번호가 일치하지 않습니다.");
		}
		
	}
	
	function formCheck()
	{
		f = document.memberForm;
		var telOtp = document.getElementById("telOtp").value;
		var tel = document.getElementById("comTel").value;
		var name = document.getElementById("comName").value;
		
		if(tel != document.getElementById("memTel").value)
		{
			alert("번호를 변경하신 경우, \n휴대폰 인증이 필요합니다.");
			telOtp = "N";
			return;
		}
		
		if(name != document.getElementById("memName").value)
		{
			alert("이름을 변경하신 경우, \n휴대폰 인증이 필요합니다.");
			telOtp = "N";
			return;
		}
		
		if(!f.memName.value)
		{
			alert("이름을 입력하세요.");
			f.memName.focus();
			return;
		}
		
		if(!f.memTel.value)
		{
			alert("전화번호를 입력하세요.");
			f.memTel.focus();
			return;
		}
		
		if(!f.memGen.value)
		{
			alert("성별을 선택해주세요.");
			f.memGen.focus();
			return;
		}
		
		if(!f.memComp.value)
		{
			alert("직장을 입력해주세요.");
			f.memComp.focus();
			return;
		}
		
		if(telOtp == "N")
		{
			alert("휴대폰 인증이 필요합니당.");
			telOtp = "Y";
			return;
		}
		
		var temp = new Array();
		count = 0;
		
		var str1 = document.getElementById("memCate1").value;
		var str2 = document.getElementById("memCate2").value;
		
		cate = document.getElementsByName("check");
		
		for (var i = 0; i < cate.length; i++)
		{
			if(cate[i].checked==true)          
			{
				temp[count] = cate[i].value;   
				count++;
				
				if(count==3)
				{
					alert("관심 카테고리는 2개까지만 선택하실 수 있습니다.");
					return;
				}
			}
		}
		
		str1 = parseInt(temp[0]);
		str2 = parseInt(temp[1]);
		
		if(isNaN(str1))
		{
			str1 = 0;
		}
		
		if(isNaN(str2))
		{
			str2 = 0;
		}
		
		document.getElementById("memCate1").value = str1;
		document.getElementById("memCate2").value = str2;
		
		alert(document.getElementById("memCate1").value);
		alert(document.getElementById("memCate2").value);
		
		
		alert("변경이 완료되었습니당.");
		
		f.submit();
	}
	
</script>

</head>
<body>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div class="container">
		<div class="row">
			<c:import url="sidebar.jsp"></c:import>
			<!-- 9단길이의 첫번째 열 -->
			<div class="col-md-9">
				<div class="container">
				<div>
					<h3 style="font-weight: bold;">개인정보 수정</h3>
					<hr>
				</div>
			<form action="infoupdate.action" method="post" role="form" id="memberForm" name="memberForm" >
			<div>
				<div class="col-lg-10">
					<div class="form-group">
						<br>
						<p>이름</p> <input type="text"
							class="form-control" name="memName" id="memName" value="${myInfo.memName }">
							<input type="hidden" id="comName" name="comName" value="${myInfo.memName }">
					</div>
					
					<div class="form-group">
						<p>소개글</p> <textarea rows="3" cols="10" class="form-control" name="memIntro" id="memIntro" >${myInfo.memIntro }</textarea>
					</div>
					
					<div class="form-group">
						<p>이메일 주소</p><input type="email"
							class="form-control" name="memId" id="memId" value="${myInfo.memId }" readonly="readonly">
					</div>
					
					<div class="form-group">
						<p>직장</p> <input type="text" class="form-control" name="memComp" id="memComp" value="${myInfo.memComp }">
					</div>
					
					<div class="form-group sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
						<label class="sc-iyvyFf kBgtyY">*휴대폰 번호</label>
						<div class="sc-eTuwsz cIWDpP">
							<input id="memTel" name="memTel" class="sc-hrWEMg feokCA" type="text"
														placeholder="-를 포함한 휴대폰 번호를 입력해주세요" value="${myInfo.memTel }" autocomplete="off" style="width: 70%;">&nbsp;&nbsp;
							<input type="hidden" id="comTel" name="comTel" value="${myInfo.memTel }">
							<button type="button" name="num" class="btn4" style="height: 45px; width: 25%; padding: 0px;" onclick="sms()">인증번호</button>
							<input type="hidden" id="telOtp" name="telOtp" value="Y">
						</div>
					</div>
										
					<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
						<div class="sc-eTuwsz cIWDpP">
							<input id="otp" class="sc-hrWEMg feokCA" type="text" value="" autocomplete="off" style="width: 70%;">&nbsp;&nbsp;
							<button type="button" name="num" class="btn4" style="height: 45px; width: 25%; padding: 0px;" onclick="sms_ok()">인증 확인</button>
						</div>
					</div>
					
					<div class="form-group">
						<p>성별</p>
						<label class="radio-inline">
							<input type="radio" name="memGen" id="memGen" value="1" > 남자
						</label>
						<label class="radio-inline">
							<input type="radio" name="memGen" id="memGen" value="2"> 여자
						</label>
						<label class="radio-inline">
							<input type="radio" name="memGen" id="memGen" value="3"> 선택안함
						</label>
	
					</div>
					
					<div class="form-group" id="">
					<p>관심 카테고리</p>
						<label class="checkbox-inline">
	  						<input type="checkbox" name="check" id="inlineCheckbox1" value="1"> 공연
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" name="check" id="inlineCheckbox1" value="2"> 전시
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" name="check" id="inlineCheckbox1" value="3"> 연극
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" name="check" id="inlineCheckbox1" value="4"> 식당
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" name="check" id="inlineCheckbox1" value="5"> 카페
						</label>
						
						<input type="hidden" id="memCate1" name="memCate1" value="0">
      					<input type="hidden" id="memCate2" name="memCate2" value="0"> 
					</div>
				</div>
				</div>
				</form>
					<div class="form-group text-center">
						<button type="button" id="join-submit" class="btn4" onclick="formCheck()">
							수정&nbsp;&nbsp;<i class="fa fa-check spaceLeft"></i>
						</button>
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