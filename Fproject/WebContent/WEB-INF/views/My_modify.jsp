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
		var gender = ${myInfo.memGender};
		var cate1 = ${myInfo.memCate1};
		var cate2 = ${myInfo.memCate2};
		
		$("input[name='radio']:radio[value='"+ gender +"']").attr("checked","checked");
		$("input[name='check']:checkbox[value='"+ cate1 +"']").attr("checked","checked");
		$("input[name='check']:checkbox[value='"+ cate2 +"']").attr("checked","checked");
	});
	

	  
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
			<div>
				<form role="form" name="memberForm" >
				<div class="col-lg-10">
					<div class="form-group">
						<br>
						<p>이름</p> <input type="text"
							class="form-control" id="inputName" value="${myInfo.memName }">
					</div>
					
					<div class="form-group">
						<p>소개글</p> <textarea rows="3" cols="10" class="form-control">${myInfo.memIntro }</textarea>
					</div>
					
					<div class="form-group">
						<p>이메일 주소</p><input type="email"
							class="form-control" id="InputEmail" value="${myInfo.memId }" readonly="readonly">
					</div>
					
					<div class="form-group">
						<p>휴대폰 번호</p><input type="tel"
							class="form-control" id="inputMobile" value="${myInfo.memTel }">
					</div>
					
					<div class="form-group">
						<p>성별</p>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio1" value="1" > 남자
						</label>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio2" value="2"> 여자
						</label>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio3" value="3"> 선택안함
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
	  						<input type="checkbox" id="inlineCheckbox1" value="5"> 카페
						</label>
				</div>
				</div>
					<div class="form-group text-center">
						<button type="submit" id="join-submit" class="btn4" onclick="formCheck()">
							수정&nbsp;&nbsp;<i class="fa fa-check spaceLeft"></i>
						</button>
					</div>
				</form>
			
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