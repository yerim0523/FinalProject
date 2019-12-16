<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OpenForm.jsp</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
<link href="css/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<script src="js/bootstrap-select.min.js"></script>

<!-- jquery plugins here-->
<!-- jquery -->
<script src="js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- easing js -->
<script src="js/jquery.magnific-popup.js"></script>
<!-- swiper js -->
<script src="js/swiper.min.js"></script>
<!-- swiper js -->
<script src="js/masonry.pkgd.js"></script>
<!-- particles js -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<!-- swiper js -->
<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/waypoints.min.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<script type="text/javascript">

$(function() { $("#postcodify_search_button").postcodifyPopUp(); });

</script>

</head>
<body>

	<div class="header">
		<div>
			<c:import url="bar.jsp"></c:import>
		</div>
	</div>

	<section class="course_details_area section_padding"
		style="padding-bottom: 0;">
		<div class="container">
		
			<form name="inputForm" action="" method="post">

				<div class="form-group col-lg-10" id="">
					<label for="name" class="col-lg-2 control-label">모임명</label>
					<input type="text" class="form-control" id="name"
						placeholder="모임명을 입력해주세요.">
					
					<br>	
					
					<label for="inputMax" class="col-lg-2 control-label">모집인원수</label>
					<input type="text" class="form-control" id="inputMax"
						placeholder="모집인원수를 입력해주세요.">
						
					<br>
						
					<label for="inputMin" class="col-lg-2 control-label">최소인원수</label>
					<input type="text" class="form-control" id="inputMin"
						placeholder="최소인원수를 입력해주세요.">
				
					<br>
				
					<label for="inputPay" class="col-lg-2 control-label">예상활동비</label>
					<input type="text" class="form-control" id="inputPay"
							placeholder="금액을 입력해주세요.">
							
					<br>
					
					<label for="inputStart" class="col-lg-2 control-label">시작날짜</label>
					<input type="date" class="form-control" id="inputStart">
					<br>
					<select name="startTime">
						<option value="10">10:00</option>
						<option value="11">11:00</option>
					</select>
					
					<br>
					
					<label for="inputEnd" class="col-lg-2 control-label">종료날짜</label>
					<input type="date" class="form-control" id="inputEnd">
					<select class="form-control">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
					
					<br>
					
				</div>

				<div class="form-group" id="">
					<div class="col-lg-10">
						<p>카테고리</p>
						<label class="checkbox-inline"> <input type="checkbox"
							id="inlineCheckbox1" value="option1"> 공연
						</label> <label class="checkbox-inline"> <input type="checkbox"
							id="inlineCheckbox1" value="option1"> 전시
						</label> <label class="checkbox-inline"> <input type="checkbox"
							id="inlineCheckbox1" value="option1"> 연극
						</label> <label class="checkbox-inline"> <input type="checkbox"
							id="inlineCheckbox1" value="option1"> 식당
						</label> <label class="checkbox-inline"> <input type="checkbox"
							id="inlineCheckbox1" value="option1"> 카페
						</label>
					</div>
				</div>



				<div class="form-group" id="">
					<label for="inputId" class="col-lg-2 control-label">대표이미지</label>
				</div>

				<div class="form-group" id="">
					<label for="inputId" class="col-lg-2 control-label">소개글</label>
					<div class="col-lg-10">
						<textarea class="form-control col-sm-5" rows="5"
							placeholder="모임에 대한 소개글입니다!"></textarea>
					</div>
				</div>

				<div class="form-group" id="">
					<label for="inputId" class="col-lg-2 control-label">본인소개</label>
					<div class="col-lg-10">
						<textarea class="form-control col-sm-5" rows="5"
							placeholder="내용을 입력해주세요."></textarea>
					</div>
				</div>

				<div class="form-group" id="">
					<label for="inputId" class="col-lg-2 control-label">준비물</label>
					<div class="col-lg-10">
						<textarea class="form-control col-sm-5" rows="5"
							placeholder="내용을 입력해주세요."></textarea>
					</div>
				</div>

				<div class="form-group" id="">
					<label for="inputId" class="col-lg-2 control-label">유의사항</label>
					<div class="col-lg-10">
						<textarea class="form-control col-sm-5" rows="5"
							placeholder="내용을 입력해주세요."></textarea>
					</div>
				</div>

				<div class="container">
					<button type="button" class="btn btn-info">개설</button>
					<button type="button" class="btn btn-info">취소</button>
				</div>
			</form>
		</div>

	</section>
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>



</body>
</html>