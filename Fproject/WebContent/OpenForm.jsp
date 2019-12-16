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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
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
<!-- swiper js -->
<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/waypoints.min.js"></script>
<!-- custom js -->
<script src="js/custom.js"></script>

<script type="text/javascript">

	$(function(){
		$("#postcodify_search_button").postcodifyPopUp(); 
	});

</script>

</head>
<body>

	<div class="header">
		<div>
			<c:import url="bar.jsp"></c:import>
		</div>
	</div>
	
	<section class="course_details_area section_padding" style="padding-bottom: 0;">
	<div class="container">
	
	<form class="form-horizontal">
		<div align="right">
			* 은 필수항목입니다.
		</div>
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;">* 모임명</label>
				<input type="text" class="form-control" id="name" style="width: 700px;" placeholder="모임명을 입력해주세요.">
		</div>
		
		<br>
		
		<div class="form-inline">
		    <label for="inputMax" class="col-sm-2 control-label"  style="font-weight: bold;">* 모집인원수</label>
    		<input type="text" class="form-control" id="inputMax" style="width: 250px;" placeholder="모집인원수를 입력해주세요.">
    		<label for="inputMin" class="col-sm-2 control-label"  style="font-weight: bold;">* 최소인원수</label>
    		<input type="text" class="form-control" id="inputMin" style="width: 250px;" placeholder="모집인원수를 입력해주세요.">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="money" class="col-sm-2 control-label" style="font-weight: bold;">* 예상활동비</label>
				<input type="text" class="form-control" id="money" style="width: 700px;" placeholder="예상 활동 금액을 입력해주세요.(한회차)">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="startDate" class="col-sm-2 control-label" style="font-weight: bold;">* 시작날짜</label>
			<input type="date" class="form-control" id="startDate" style="width: 250px;">
			<select class="form-control" style="width: 200px;">
				<option>10:00</option>
				<option>11:00</option>
				<option>12:00</option>
				<option>13:00</option>
				<option>14:00</option>
				<option>15:00</option>
				<option>16:00</option>
				<option>17:00</option>
				<option>18:00</option>
				<option>19:00</option>
				<option>20:00</option>
			</select>
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="endDate" class="col-sm-2 control-label" style="font-weight: bold;">* 종료날짜</label>
			<input type="date" class="form-control" id="endDate" style="width: 250px;">
			<select class="form-control" style="width: 200px;">
				<option>10:00</option>
				<option>11:00</option>
				<option>12:00</option>
				<option>13:00</option>
				<option>14:00</option>
				<option>15:00</option>
				<option>16:00</option>
				<option>17:00</option>
				<option>18:00</option>
				<option>19:00</option>
				<option>20:00</option>
			</select>
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;">* 우편번호</label>
			<input type="text" name="" class="postcodify_postcode5" value="" />
			<button id="postcodify_search_button">검색</button>
		</div>
		<br>
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;">도로명주소</label>
			<input type="text" name="" class="postcodify_address" value="" />
		</div>
		<br>
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;">상세주소</label>
			<input type="text" name="" class="postcodify_details" value="" />
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="inlineCheckbox1" class="col-sm-2 control-label" style="font-weight: bold;">* 카테고리</label>
			<label class="checkbox-inline">
			<input type="checkbox" id="inlineCheckbox1" value="option1">공연&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" id="inlineCheckbox1" value="option1">전시&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" id="inlineCheckbox1" value="option1">연극&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" id="inlineCheckbox1" value="option1">식당&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" id="inlineCheckbox1" value="option1">카페&nbsp;&nbsp;&nbsp;&nbsp;</label>
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="titleImg" class="col-sm-2 control-label" style="font-weight: bold;">* 대표이미지</label>
				<input type="file" class="form-control" id="titleImg">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="groupInfo" class="col-sm-2 control-label" style="font-weight: bold;">소개글</label>
			<textarea class="form-control col-sm-5" rows="5"
						placeholder="모임에 대한 소개글입니다!" id="groupInfo"></textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="hostInfo" class="col-sm-2 control-label" style="font-weight: bold;">본인소개</label>
			<textarea class="form-control col-sm-5" rows="5"
						placeholder="호스트님의 소개를 입력해주세요!" id="hostInfo"></textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="prev" class="col-sm-2 control-label" style="font-weight: bold;">준비물</label>
			<textarea class="form-control col-sm-5" rows="5"
						placeholder="모임에 대한 준비물입니다!" id="prev"></textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="please" class="col-sm-2 control-label" style="font-weight: bold;">유의사항</label>
			<textarea class="form-control col-sm-5" rows="5"
						placeholder="모임에 대한 유의사항입니다!" id="please"></textarea>
		</div>
		
		<br>

		<div class="container" align="center">
			<button type="button" class="btn btn-info">개설</button>
			<button type="button" class="btn btn-info">취소</button>
		</div>
		
		<br><br><br><br>
		
	</form>
	
	</div>
	</section>
	
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>



</body>
</html>