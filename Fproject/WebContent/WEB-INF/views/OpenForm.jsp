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
<title>모임 정보 입력</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
		
		$("#submit").click(function()
		{
			alert("확인");
			
			
			
			return;
		});
		
	}); // end function()
	
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
	
	function submitCheck()
	{
		//alert(document.getElementById("ngStart1").value);
		alert("확인");
		var form = document.getElementById("groupForm");
		var check = document.getElementsByName("inlineCheckbox");
		
		var count = 0;
		
		var cate = Array();
		
		for (var i = 0; i < check.length; i++)
		{
			if(check[i].checked==true)
			{
				alert(check[i].value);
				cate[count] = check[i].value;
				count++;
			}
		}
		
		$("#grCate1").val(cate[0]);
		$("#grCate2").val(cate[1]);
		
		
		form.submit();
	}
	
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
	
	<form action="groupInsert.action" method="post" id="groupForm" class="form-horizontal">
		<div align="right">
			* 은 필수항목입니다.
		</div>
		<div class="form-inline">
			<label for="grName" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 모임명</label>
				<!-- <input type="text" class="form-control" name="grName" id="grName" style="width: 700px;" placeholder="모임명을 입력해주세요." value="ㅁㄴㅇㄹㄴㄹㄴㅁ"> -->
				<input type="text" class="form-control" name="grName" id="grName" style="width: 700px;" placeholder="모임명을 입력해주세요.">
		</div>
		<br>
		
		<div class="form-inline">
		    <label for="ngMax" class="col-sm-2 control-label"  style="font-weight: bold;"><p style="color:red;">*</p> 모집인원수</label>
    		<input type="text" class="form-control" name="ngMax" id="ngMax" style="width: 250px;" placeholder="모집인원수를 입력해주세요.">
    		<label for="ngMin" class="col-sm-2 control-label"  style="font-weight: bold;"><p style="color:red;">*</p>최소인원수</label>
    		<!-- <input type="text" class="form-control" name="ngMin" id="ngMin" style="width: 250px;" placeholder="최소인원수를 입력해주세요." value="9"> -->
    		<input type="text" class="form-control" name="ngMin" id="ngMin" style="width: 250px;" placeholder="최소인원수를 입력해주세요.">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="ngCost" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 예상활동비</label>
				<!-- <input type="text" class="form-control" name="ngCost" id="ngCost" style="width: 700px;" placeholder="예상 활동 금액을 입력해주세요.(한회차)" value="24242"> -->
				<input type="text" class="form-control" name="ngCost" id="ngCost" style="width: 700px;" placeholder="예상 활동 금액을 입력해주세요.(한회차)">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="ngStart1" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 시작날짜</label>
			<input type="date" class="form-control" name="ngStart1" id="ngStart1" style="width: 250px;">
			<select name="ngStart2" class="form-control" style="width: 200px;">
				<option id="ngStart2" value="100000">10:00</option>
				<option id="ngStart2" value="110000">11:00</option>
				<option id="ngStart2" value="120000">12:00</option>
				<option id="ngStart2" value="130000">13:00</option>
				<option id="ngStart2" value="140000">14:00</option>
				<option id="ngStart2" value="150000">15:00</option>
				<option id="ngStart2" value="160000">16:00</option>
				<option id="ngStart2" value="170000">17:00</option>
				<option id="ngStart2" value="180000">18:00</option>
				<option id="ngStart2" value="190000">19:00</option>
				<option id="ngStart2" value="200000">20:00</option>
			</select>
			<!-- <input type="hidden" name="ngStart" id="ngStart" value="20191230100000"> -->
			<input type="hidden" name="ngStart" id="ngStart">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="ngEnd1" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 종료날짜</label>
			<input type="date" class="form-control" name="ngEnd1" id="ngEnd1" style="width: 250px;">
			<select name="ngEnd2" class="form-control" style="width: 200px;">
				<option id="ngEnd2" value="100000">10:00</option>
				<option id="ngEnd2" value="110000">11:00</option>
				<option id="ngEnd2" value="120000">12:00</option>
				<option id="ngEnd2" value="130000">13:00</option>
				<option id="ngEnd2" value="140000">14:00</option>
				<option id="ngEnd2" value="150000">15:00</option>
				<option id="ngEnd2" value="160000">16:00</option>
				<option id="ngEnd2" value="170000">17:00</option>
				<option id="ngEnd2" value="180000">18:00</option>
				<option id="ngEnd2" value="190000">19:00</option>
				<option id="ngEnd2" value="200000">20:00</option>
				<option id="ngEnd2" value="210000">21:00</option>
				<option id="ngEnd2" value="220000">22:00</option>
			</select>
			<!-- <input type="hidden" name="ngEnd" id="ngEnd" value="20191230120000"> -->
			<input type="hidden" name="ngEnd" id="ngEnd">
		</div>
		
		<br>		
		
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 우편번호</label>
			<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		</div>
		<div class="form-inline">
			<label for="ngLocation1" class="col-sm-2 control-label" style="font-weight: bold;">도로명주소</label>
			<input type="text" id="sample4_roadAddress" name="ngLocation1" class="form-control" placeholder="도로명주소" style="width: 700px;">
		</div>
		<div class="form-inline">
			<label for="name" class="col-sm-2 control-label" style="font-weight: bold;">지번주소</label>
			<input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소" style="width: 700px;">
		</div>
		<span id="guide" style="color:#999;display:none"></span>
		<div class="form-inline">
			<label for="ngLocation2" class="col-sm-2 control-label" style="font-weight: bold;">상세주소</label>
			<input type="text" id="sample4_detailAddress" name="ngLocation2" class="form-control" placeholder="상세주소" style="width: 700px;">
		</div>
		
		<!-- <input type="hidden" name="ngLocation" value="인천 서구 원적로"> -->
		<input type="hidden" name="ngLocation">
		
		<br>
		
		<div class="form-inline">
			<label for="inlineCheckbox" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 카테고리</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="inlineCheckbox" value="1">공연&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="inlineCheckbox" value="2">전시&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="inlineCheckbox" value="3">연극&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="inlineCheckbox" value="4">식당&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<label class="checkbox-inline">
			<input type="checkbox" name="inlineCheckbox" value="5">카페&nbsp;&nbsp;&nbsp;&nbsp;</label> <!-- inlineCheckbox1 변경 -->
		</div>
		
		<input type="hidden" id="grCate1" name="grCate1">
		<input type="hidden" id="grCate2" name="grCate2">
		<input type="hidden" id="memId" name="memId">
		
<!-- 		<input type="hidden" id="grCate1" name="grCate1" value="1"> -->
<!-- 		<input type="hidden" id="grCate2" name="grCate2" value="2"> -->
<!-- 		<input type="hidden" id="memId" name="memId" value="aa123@naver.com"> -->
		
		
		<br>
		
		<div class="form-inline">
			<label for="ngPic" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 대표이미지</label>
				<!-- <input type="file" name="ngPic" class="form-control" id="titleImg" value="title.img"> -->
				<input type="file" name="ngPic" class="form-control" id="ngPic">
		</div>
		
		<br>
		
		<div class="form-inline">
			<label for="ngIntro" class="col-sm-2 control-label" style="font-weight: bold;">소개글</label>
			<textarea class="form-control col-sm-5" name="ngIntro" rows="5"
						placeholder="모임에 대한 소개글입니다!" id="ngIntro">ㅁㄴㅇㄹ</textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="ngMyInfo" class="col-sm-2 control-label" style="font-weight: bold;">본인소개</label>
			<textarea class="form-control col-sm-5" name="ngMyInfo" rows="5"
						placeholder="호스트님의 소개를 입력해주세요!" id="ngMyInfo">ㅁㄴㅇㄹ</textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="grPre" class="col-sm-2 control-label" style="font-weight: bold;">준비물</label>
			<textarea class="form-control col-sm-5" rows="5" name="grPre"
						placeholder="모임에 대한 준비물입니다!" id="grPre">ㄴㅇㄹ</textarea>
		</div>
		
		<br>

		<div class="form-inline">
			<label for="grNotice" class="col-sm-2 control-label" style="font-weight: bold;">유의사항</label>
			<textarea class="form-control col-sm-5" rows="5" name="grNotice"
						placeholder="모임에 대한 유의사항입니다!" id="grNotice">ㅁㄴㅇㄹ</textarea>
		</div>
		
		<br>

		<div class="container" align="center">
			<button type="submit" class="btn btn-info submit" id="submit">개설</button>
			<button type="reset" class="btn btn-info">취소</button>
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