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
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/join.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" type="text/javascript"></script>

<script type="text/javascript">

	$(function()
	{
		$(".idcheck").click(function()
		{
			var params = {};
			params.memId = $("#memId").val();
			var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			
			if(regEmail.test($("#memId").val()))
			{
				$.ajax({
					type : "POST"
					, url : "idCheck.action"
					, data : params
					, contentType :"application/x-www-form-urlencoded; charset=UTF-8"
					, success: function(data){
						idCheckYn = data;
						if(idCheckYn === "Y"){
							alert("이미 존재하는 아이디입니다.");
						}else{
							alert("사용 가능한 아이디입니다.");
							$("#idchk").val("Y");
						}
					}
				});
			}
			else
			{
				alert("이메일 주소가 유효하지 않습니다.");
				$("#memId").focus();
			}
			
		});
	});
	
	
	
	function sms()
	{
		var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		
		if(!regExp.test($('#memTel').val()))
		{
			alert("잘못된 전화번호입니다.");
			return;
		}
		
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
		}
		else
		{
			alert("인증번호가 일치하지 않습니다.");
		}
		
	}
	
	function memberjoin()
	{
		f = document.memberJoinForm;
		var chk1 = f.agree.checked;
		var telOtp = document.getElementById("telOtp").value;
		var idchk = document.getElementById("idchk").value;
		idCheckYn = "N";
		
		if(!f.memName.value)
		{
			alert("이름을 입력하세요.");
			f.memName.focus();
			return;
		}
		
		if(!f.memId.value)
		{
			alert("아이디를 입력하세요.");
			f.memId.focus();
			return;
		}
		
		if (!f.memPw.value)
		{
			alert("패스워드를 입력하세요.");
			f.memPw.focus();
			return;
		}
		
		if(f.memPw.value != f.memPw2.value)
		{
			alert("위의 비밀번호와 일치하지 않습니다.");
			f.memPw2.focus();
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
		
		if(idCheckYn == "Y")
		{
			alert("아이디를 확인해주세요.");
			f.memId.focus();
			return;
		}
		
		if(idchk == "N")
		{
			alert("이메일 인증이 필요합니다.");
			return;
		}
		
		if(telOtp == "N")
		{
			alert("휴대폰 인증이 필요합니다.");
			return;
		}
		
		var temp = new Array();
		count = 0;
		
		var str1 = document.getElementById("memCate1").value;
		var str2 = document.getElementById("memCate2").value;
		
		cate = document.getElementsByName("inlineCheckbox");
		
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
		
		if(!chk1)
		{
			alert("약관에 동의해주세요.");
			return;
		}
		
		f.submit();
	}
	
	
	
</script>

</head>

<body>
<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div id="root">
		<div id="wrapper">
			<div class="routes__Body-sc-14o1w9u-0 bFLlZs">
					<div class="RegisterPage__Container-sc-1vwt6wy-0 iexDaY">
						<div class="sc-fYiAbW kGolec">
							<div class="sc-krvtoX ksOaZn">
								<div class="sc-cbkKFq hBlXcX">
									<h1>회원가입</h1>
									<form action="memberinsert.action" role="form" method="post" name="memberJoinForm" enctype="multipart/form-data" >
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*이름</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="memName" id="memName" class="sc-hrWEMg feokCA" type="text"	placeholder="홍길동" value="" autocomplete="off">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*이메일</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="memId" id="memId" class="sc-hrWEMg feokCA" type="email" placeholder="example@naver.com" value="" autocomplete="off" style="width: 70%">&nbsp;&nbsp;
												<input type="hidden" id="idchk" name="idchk" value="N">
												
												<button type="button" name="idCheck" class="btn4 idcheck" style="height: 45px; width: 25%; padding: 0px;">중복확인</button>
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*비밀번호 (8자 이상)</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="memPw" id="memPw" class="sc-hrWEMg feokCA" type="password" placeholder="********" value=""	autocomplete="off">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*비밀번호 확인</label>
											<div class="sc-eTuwsz cIWDpP">
												<input name="memPw2" id="memPw2" class="sc-hrWEMg feokCA" type="password" placeholder="********" value="" autocomplete="off">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*휴대폰 번호</label>
											<div class="sc-eTuwsz cIWDpP">
												<input id="memTel" name="memTel" class="sc-hrWEMg feokCA" type="text"
														placeholder="-를 포함한 휴대폰 번호를 입력해주세요" value="" autocomplete="off" style="width: 70%;">&nbsp;&nbsp;
												<button type="button" name="num" class="btn4" style="height: 45px; width: 25%; padding: 0px;" onclick="sms()">인증번호</button>
												<input type="hidden" id="telOtp" name="telOtp" value="N">
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<div class="sc-eTuwsz cIWDpP">
												<input id="otp" class="sc-hrWEMg feokCA" type="text" value="" autocomplete="off" style="width: 70%;">&nbsp;&nbsp;
												<button type="button" name="num" class="btn4" style="height: 45px; width: 25%; padding: 0px;" onclick="sms_ok()">인증 확인</button>
											</div>
										</div>
										
										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*성별</label>
											<div>
												<input type="radio" name="memGen" id="male" value="1">
												<label for="male">남성</label> 
												<input type="radio" name="memGen" id="female" value="2"> 
												<label for="female">여성</label> 
												<input type="radio" name="memGen" id="no" value="3">
												<label for="no">선택안함</label>
											</div>
										</div>
										
<!-- 										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh"> -->
<!-- 											<label class="sc-iyvyFf kBgtyY">생년월일</label> -->
<!-- 											<div> -->
<!-- 												<input type="text" class="sc-hrWEMg feokCA"	name="memBirth" id="memBirth" placeholder="ex) 19960523 "> -->
<!-- 											</div> -->
<!-- 										</div> -->

										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">*직장</label>
											<div>
												<input type="text" class="sc-hrWEMg feokCA"	name="memComp" id="memComp">
											</div>
										</div>

										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">관심 카테고리</label>
												<div>
													<label class="checkbox-inline">
														<input type="checkbox" name="inlineCheckbox" value="1"> 공연
													</label> 
													<label class="checkbox-inline"> 
														<input type="checkbox" name="inlineCheckbox" value="2"> 전시
													</label> 
													<label class="checkbox-inline"> 
														<input type="checkbox" name="inlineCheckbox" value="3"> 연극
													</label> 
													<label class="checkbox-inline"> 
														<input type="checkbox" name="inlineCheckbox" value="4"> 식당
													</label> 
													<label class="checkbox-inline"> 
														<input type="checkbox" name="inlineCheckbox" value="5"> 카페
													</label>
												</div>
												<input type="hidden" id="memCate1" name="memCate1" value="0">
      											<input type="hidden" id="memCate2" name="memCate2" value="0"> 
											</div>
										 <div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
										 <label class="sc-iyvyFf kBgtyY">프로필 사진</label>
										 <input type="file" class="sc-hrWEMg feokCA" id="memPic" name="file"><p>
										 <div class="select_img"><img src="" /></div>
								
										</div>

										<script>
										
										  $("#memPic").change(function(){
											   if(this.files && this.files[0]) {
											    var reader = new FileReader;
											    reader.onload = function(data) {
											     $(".select_img img").attr("src", data.target.result).width(500);        
											    }
											    reader.readAsDataURL(this.files[0]);
											   }
											  });  
										  
										</script>
										
										
										

										<div class="sc-hwwEjo jzndrT RegisterPage__StyledFormGroup-sc-1vwt6wy-2 hGLglh">
											<label class="sc-iyvyFf kBgtyY">소개글</label>
											<div>
												<input type="text" class="sc-hrWEMg feokCA"	name="memIntro" id="memIntro">
											</div>
										</div>
										

										<div>
								
											<input type="checkbox" id="agree" class="custom-control-input" name="agree">
											<label class="custom-control-label" for="agree">
												<span class="sc-bwCtUz izbsWv">
												<a class="RegisterPage__StyledAnchor-sc-1vwt6wy-1 FDTgq"
													href="https://docs.google.com/document/d/1QfM61dBfDRfiL_7E7dbMqSpzcJO6MF0eOEpFgnpVO10"
													target="_blank" rel="noopener noreferrer">이용약관</a> 
													및 
													<a class="RegisterPage__StyledAnchor-sc-1vwt6wy-1 FDTgq"
													href="https://docs.google.com/document/d/1VlL2MopA-EFJGQrqyKFc4Fkwvi0k1Wd069hIA5EScvQ"
													target="_blank" rel="noopener noreferrer">개인정보 처리방침</a> 
													동의 (필수)
												</span>
											</label>
										</div>
										
										<br>

										<div align="center">
											<button class="btn4" type="button" color="orange" fill="true">
												<span class="sc-fjdhpX kCztpU" onclick="memberjoin()">가입하기</span>
											</button>
										</div>
										
									</form>

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
