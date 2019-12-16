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

<style type="text/css">

</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
</head>
<body>

<%-- <div>
	<div>
		<c:import url="mainbar.jsp"></c:import>
	</div>
	
	<div>
		<c:import url="sidebar.jsp"></c:import>	
	
	
	<div class="container">
		<div class="page-header">
			<div class="col-md-6 col-md-offset-3">
				<h3>개인정보 수정</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form role="form">
				<div class="form-group">
					<label for="inputName">성명</label> <input type="text"
						class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="InputEmail">이메일 주소</label> <input type="email"
						class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요">
				</div>
				<div class="form-group">
					<label for="inputPassword">비밀번호</label> <input type="password"
						class="form-control" id="inputPassword"
						placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="form-group">
					<label for="inputPasswordCheck">비밀번호 확인</label> <input
						type="password" class="form-control" id="inputPasswordCheck"
						placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
				</div>
				<div class="form-group">
					<label for="inputMobile">휴대폰 번호</label> <input type="tel"
						class="form-control" id="inputMobile"
						placeholder="휴대폰번호를 입력해 주세요">
				</div>
				<div class="form-group">
					<label for="inputtelNO">사무실 번호</label> <input type="tel"
						class="form-control" id="inputtelNO" placeholder="사무실번호를 입력해 주세요">
				</div>
		
				<div class="form-group text-center">
					<button type="submit" id="join-submit" class="btn btn-primary">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="submit" class="btn btn-warning">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		
		</div>


	</div>
	</div>
</div> --%>

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
			<div class="page-header">
				<div>
					<h3>개인정보 수정</h3>
				</div>
			</div>
			<div>
				<form role="form">
					<div class="form-group">
						<label for="inputName">이름</label> <input type="text"
							class="form-control" id="inputName">
					</div>
					
					<div class="form-group">
						<label for="inputName">소개글</label> <textarea rows="3" cols="10" class="form-control"></textarea>
					</div>
					
					<div class="form-group">
						<label for="InputEmail">이메일 주소</label> <input type="email"
							class="form-control" id="InputEmail" >
					</div>
					
					<div class="form-group">
						<label for="inputMobile">휴대폰 번호</label> <input type="tel"
							class="form-control" id="inputMobile">
					</div>
					
					<div class="form-group">
						<label for="inputMobile">성별</label><br>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio1" value="male"> 남자
						</label>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio2" value="female"> 여자
						</label>
						<label class="radio-inline">
							<input type="radio" name="radio" id="inlineRadio3" value="none"> 선택안함
						</label>
	
					</div>
					
					<div class="form-group" id="">
						<div class="col-lg-10">
					<p>카테고리</p>
						<label class="checkbox-inline">
	  						<input type="checkbox" id="inlineCheckbox1" value="option1"> 공연
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" id="inlineCheckbox1" value="option1"> 전시
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" id="inlineCheckbox1" value="option1"> 연극
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" id="inlineCheckbox1" value="option1"> 식당
						</label>
						<label class="checkbox-inline">
	  						<input type="checkbox" id="inlineCheckbox1" value="option1"> 카페
						</label>
				</div>
			</div>
					
			
					<div class="form-group text-center">
						<button type="submit" id="join-submit" class="btn btn-primary">
							수정<i class="fa fa-check spaceLeft"></i>
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