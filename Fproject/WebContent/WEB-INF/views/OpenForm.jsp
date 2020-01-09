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

<!-- css -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />


<!-- jquery -->

<script src="js/jquery-1.12.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-select.min.js"></script>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b06299aedd9f29b60afd90850c8308ed&libraries=services,clusterer,drawing"></script>

<!-- 주소 검색 -->
<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script src="js/waypoints.min.js"></script>

<!-- jquery plugins here-->
<!-- easing js -->
<script src="<%=cp %>/js/jquery.magnific-popup.js"></script>
<!-- swiper js -->
<script src="js/swiper.min.js"></script>
<!-- swiper js -->
<script src="js/masonry.pkgd.js"></script>
<!-- particles js -->
<script src="js/owl.carousel.min.js"></script>
<!-- swiper js -->
<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script> 

<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>

<!-- include summernote css/js-->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/lang/summernote-ko-KR.js"></script>


<script type="text/javascript">

	$(document).ready(function() {
	    $('#ngIntro').summernote({
	  	  
				lang: 'ko-KR',
	          height: 300,                 
	          minHeight: null,             
	          maxHeight: null,             
	          focus: true,                 
	          fontSizes: ['4', '5', '6', '7', '8', '9', '10', '11', '12', '14', '18', '24', '36', '48' , '64', '82', '150'],
			  fontNames: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica', 'Impact', 'Tahoma', 'Times New Roman', 'Verdana'],
		      fontNamesIgnoreCheck: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체'],
			  popover: {         //팝오버 설정
					
				  	video: [],
	    	        air: []
	    	  }
	    }); 
	}); 
	
	
	$(document).ready(function() {
	    $('#ngMyIntro').summernote({
	  	  
			  lang: 'ko-KR',
	          height: 200,                 
	          minHeight: null,             
	          maxHeight: null,             
	          focus: true,                 
	          fontSizes: ['4', '5', '6', '7', '8', '9', '10', '11', '12', '14', '18', '24', '36', '48' , '64', '82', '150'],
			  fontNames: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica', 'Impact', 'Tahoma', 'Times New Roman', 'Verdana'],
		      fontNamesIgnoreCheck: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체'],
			  popover: {         //팝오버 설정
					
				  	video: [],
	    	        air: []
	    	  }
	    }); 
	}); 
	
	
	$(document).ready(function()
	{
		$("#postcodify_search_button").postcodifyPopUp();

		var grcode = "${groupinfo.grCode}";
		var cate1 = "${groupinfo.grCate1}";
		var cate2 = "${groupinfo.grCate2}"; 
		
		if(grcode != "")
		{
			$("input[name='inlineCheckbox']:checkbox[value='"+ cate1 +"']").attr("checked","checked");
			$("input[name='inlineCheckbox']:checkbox[value='"+ cate2 +"']").attr("checked","checked");
		}
	});

   function sample4_execDaumPostcode()
   {
      new daum.Postcode(
            {
               oncomplete : function(data)
               {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var roadAddr = data.roadAddress; // 도로명 주소 변수
                  var extraRoadAddr = ''; // 참고 항목 변수

                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if (data.bname !== '' && /[동|로|가]$/g.test(data.bname))
                  {
                     extraRoadAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if (data.buildingName !== '' && data.apartment === 'Y')
                  {
                     extraRoadAddr += (extraRoadAddr !== '' ? ', '
                           + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if (extraRoadAddr !== '')
                  {
                     extraRoadAddr = ' (' + extraRoadAddr + ')';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample4_postcode').value = data.zonecode;
                  document.getElementById("sample4_roadAddress").value = roadAddr;
                  document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                  // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  if (roadAddr !== '')
                  {
                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                  } else
                  {
                     document.getElementById("sample4_extraAddress").value = '';
                  }

                  var guideTextBox = document.getElementById("guide");
                  // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                  if (data.autoRoadAddress)
                  {
                     var expRoadAddr = data.autoRoadAddress
                           + extraRoadAddr;
                     guideTextBox.innerHTML = '(예상 도로명 주소 : '
                           + expRoadAddr + ')';
                     guideTextBox.style.display = 'block';

                  } else if (data.autoJibunAddress)
                  {
                     var expJibunAddr = data.autoJibunAddress;
                     guideTextBox.innerHTML = '(예상 지번 주소 : '
                           + expJibunAddr + ')';
                     guideTextBox.style.display = 'block';
                  } else
                  {
                     guideTextBox.innerHTML = '';
                     guideTextBox.style.display = 'none';
                  }
               }
            }).open();
   }
   
   function formCheck()
   {
      //alert("함수 호출 확인");
      f = document.groupForm;
      //alert(f);
      str = f.ngCost.value;
      var max,min;
      
      var str = f.grName.value;
      str = str.trim();
      if(!str || 7>str.length || 50<str.length)
      {
         alert("모임명을 【7 ~ 50자】 내외로 입력해주세요.");
         f.grName.focus();
         return;
      }
      
      max = f.ngMax.value;
   
      if(!max || 4>parseInt(max) || parseInt(max)>20)
      {
         alert("모집 인원 수를 【4 ~ 20명】 내외로 입력해주세요.");
         f.ngMax.focus();
         return;
      }
      
      min = f.ngMin.value;
      
      if(!min)
      {
         alert("모집 최소 인원 수를 입력하세요.");
         f.ngMin.focus();
         return;
      }
      if(parseInt(min)>parseInt(max))
      {
         
         alert("최소 인원 수를 모집 인원보다 적게 입력해주세요.");
         f.ngMin.focus();
         return;
      }
      
      if(parseInt(min)<4)
      {
         
         alert("모집 인원 수를 【4 ~ 20명】 내외로 입력해주세요. ");
         f.ngMin.focus();
         return;
      }
   
      str = f.ngCost.value;
      
      str = str.trim();
      if(!str)
      {
         alert("예상활동비를 입력하세요.");
         f.ngCost.focus();
         return;
      }
      if(10000000000000000000<str)
      {
         alert("활동비를 적게 입력해주세요");
         f.ngCost.focus();
         return;
      }
      var today = new Date();
      /* alert(today); */
      var yyyy = today.getFullYear();
      var mm = today.getMonth()+1; //1월은 0이기 때문에 +1 을 해줘야함
      var dd = today.getDate();      
      var hour = today.getHours();
      /* alert(yyyy);
      alert(mm); */
      
      var seven = new Date();
       seven.setFullYear(yyyy,mm-1,dd,hour); // 현재 시간표시(시간까지)
      /* alert(seven); */
      seven.setDate(seven.getDate()+7); // 7일후 날짜
      /* alert(seven); */
      
      var start1 = f.ngStart1.value;
      var start2 = f.ngStart2.value;
          
      var end1 = f.ngEnd1.value;
      var end2 = f.ngEnd2.value;
      
      var SDateArr = start1.split('-');
      var SRealHour = start2.substring(0,2);
      
      var EDateArr = end1.split('-');
      var ERealHour = end2.substring(0,2);

      var startdate = new Date(SDateArr[0], SDateArr[1]-1,SDateArr[2],SRealHour,0,0); // - 월은 0에서부터 시작된다.
      var enddate = new Date(EDateArr[0], EDateArr[1]-1,EDateArr[2],ERealHour,0,0); // - 월은 0에서부터 시작된다.
      
      alert(startdate);
      
      var strange = new Date();
      strange.setFullYear(startdate.getFullYear());
      strange.setMonth(startdate.getMonth());
      strange.setDate(startdate.getDate()+1);
      strange.setHours(startdate.getHours());
      alert(strange);
      
      if(startdate<seven)  // 오늘 날짜 < 7일후 날짜
      {
         
         alert("모임 시작 날짜는 최소 7일 이후여야 합니다.");
         f.ngStart1.focus();
         return;
      }
      
      if(startdate>=enddate)
         {
          alert("종료시각은 시작시각보다 늦게 입력해주세요.");
          f.ngEnd1.focus();
          return;
         }
      if(enddate>=strange)
      {
       alert("모임기간은 하루이상으로 설정 할 수 없습니다.");
       f.ngEnd1.focus();
       return;
      }
      
      if(!start1 || !start2)
      {
         alert("시작날짜와 시작시간을 입력하세요.");
         f.ngStart1.focus();
         return;
      }
      
      
      if(!end1 || !end2)
      {
         alert("종료날짜와 종료시간을 입력하세요.");
         f.ngEnd1.focus();
         return;
      }

      str = f.ngLocation1.value;
      str2 = f.ngLocation2.value;
      
      if(!str || !str2)
      {
         alert("정확한 주소를 입력하세요.");
         return;
      }
      
      
      geocoder.addressSearch(f.ngLocation1.value, function(re, status)
  			{

  				// 정상적으로 검색이 완료됐으면 
  				if (status === kakao.maps.services.Status.OK)
  				{
  					document.getElementById("xlocation").value=re[0].x;
  					document.getElementById("ylocation").value=re[0].y;
  					
  				}// end if

  			}); // end geocoder
      
      var temp = new Array(); // 임시 배열 선언
      count = 0;            // 배열 방 컨트롤 위한 변수
      
      
      var str1 = document.getElementById("grCate1").value;   // grCate1(hidden)의 value(현재 비어있음)
      var str2 = document.getElementById("grCate2").value;   // grCate2(hidden)의 value(현재 비어있음)
      
      cate = document.getElementsByName("inlineCheckbox");// 체크박스 값 가져오기 위한 도큐먼트
      
      for (var i = 0; i < cate.length; i++)
      {
         if(cate[i].checked==true)         // 체크 된 값만 
         {
            temp[count] = cate[i].value;   // value 를 임시 배열에 삽입(최소1개, 최대2개)
            count++;
            //alert(temp[i]);
            
            if(count==3)
            {
            	alert("카테고리는 2개까지 선택 가능합니다.");
            	return;
            }
         }
      }
      
      str1 = parseInt(temp[0]);   
      str2 = parseInt(temp[1]);
         
      
      if(!str1)
      {
         alert("카테고리를 최소 1개 선택해주세요.");
         return;
      }
      
      if(isNaN(str2))
      {
         str2=0;         
      } 
      
       document.getElementById("grCate1").value=str1;
       document.getElementById("grCate2").value=str2;
       
       str = f.ngPic.value;
       if(!str)
       {
          alert("대표사진을 선택해주세요.");
          f.ngPic.focus();
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
   <div class="container">
   
   <form action="groupinsert.action" role="form" method="post" enctype="multipart/form-data" name="groupForm">
   현재 접속중인 memId : ${member.memId }
   <input type="hidden" id="memId" name="memId" value="${member.memId }">
   모임 코드 : ${groupinfo.grCode }
   <c:if test="${!empty groupinfo.grCode }">
		<input type="hidden" id="grCode" name="grCode" value="${groupinfo.grCode }">
   </c:if>
   <c:if test="${empty groupinfo.grCode }">
		<input type="hidden" id="grCode" name="grCode" value="0">
   </c:if>
   
      <div align="right">
         * 은 필수항목입니다.
      </div>
      <div class="form-inline">
         <label for="grName" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 모임명</label>
            <!-- <input type="text" class="form-control" name="grName" id="grName" style="width: 700px;" placeholder="모임명을 입력해주세요." value="ㅁㄴㅇㄹㄴㄹㄴㅁ"> -->
            <c:if test="${empty groupinfo.grCode}">
            <input type="text" class="form-control" name="grName" id="grName" style="width: 700px;" placeholder="모임명을 입력해주세요.">
            </c:if>
            <c:if test="${! empty groupinfo.grCode}">
            <input type="text" class="form-control" name="grName" id="grName" style="width: 700px;" value="${groupinfo.grName }" readonly="readonly">
            </c:if>
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
         <input type="text" id="sample4_roadAddress" name="ngLocation1" class="form-control" placeholder="도로명주소" style="width: 700px;"readonly>
      </div>
      <div class="form-inline">
         <label for="name" class="col-sm-2 control-label" style="font-weight: bold;">지번주소</label>
         <input type="text" id="sample4_jibunAddress" class="form-control" placeholder="지번주소" style="width: 700px;" readonly>
      </div>
      <span id="guide" style="color:#999;display:none"></span>
      <div class="form-inline">
         <label for="ngLocation2" class="col-sm-2 control-label" style="font-weight: bold;">상세주소</label>
         <input type="text" id="sample4_detailAddress" name="ngLocation2" class="form-control" placeholder="상세주소" style="width: 700px;">
      </div>
      <input type="hidden" id="xlocation" name="xlocation" value="0">
      <input type="hidden" id="ylocation" name="ylocation" value="0">
      <br>
      
      <c:if test="${empty groupinfo.grCode}">
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
      </c:if>
      
      <c:if test="${!empty groupinfo.grCode}">
      <div class="form-inline">
         <label for="inlineCheckbox" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 카테고리</label>
         <label class="checkbox-inline">
         <input type="checkbox" name="inlineCheckbox" value="1" disabled="disabled">공연&nbsp;&nbsp;&nbsp;&nbsp;</label>
         <label class="checkbox-inline">
         <input type="checkbox" name="inlineCheckbox" value="2" disabled="disabled">전시&nbsp;&nbsp;&nbsp;&nbsp;</label>
         <label class="checkbox-inline">
         <input type="checkbox" name="inlineCheckbox" value="3" disabled="disabled">연극&nbsp;&nbsp;&nbsp;&nbsp;</label>
         <label class="checkbox-inline">
         <input type="checkbox" name="inlineCheckbox" value="4" disabled="disabled">식당&nbsp;&nbsp;&nbsp;&nbsp;</label>
         <label class="checkbox-inline">
         <input type="checkbox" name="inlineCheckbox" value="5" disabled="disabled">카페&nbsp;&nbsp;&nbsp;&nbsp;</label> <!-- inlineCheckbox1 변경 -->
      </div>
      </c:if>
      
      <input type="hidden" id="grCate1" name="grCate1" value="0">
      <input type="hidden" id="grCate2" name="grCate2" value="0"> 
      
      
      <br>
      
      <div class="form-inline">
         <label for="ngPic" class="col-sm-2 control-label" style="font-weight: bold;"><p style="color:red;">*</p> 대표이미지</label>
            <!-- <input type="file" name="ngPic" class="form-control" id="titleImg" value="title.img"> -->
            <input type="file" name="file" class="form-control fileDrop" id="ngPic"><p>
										 <div class="select_img"><img src="" /></div>
										</div>
										<script>
										  $("#ngPic").change(function(){
											   if(this.files && this.files[0]) {
											    var reader = new FileReader;
											    reader.onload = function(data) {
											     $(".select_img img").attr("src", data.target.result);        
											    }
											    reader.readAsDataURL(this.files[0]);
											   }
											  });  
										</script>
      </div>
      
      <br>
      
      <div class="form-inline">
         <label for="ngIntro" class="col-sm-2 control-label" style="font-weight: bold;">소개글</label>
         <c:if test="${empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" name="ngIntro" rows="5" id="ngIntro"
                  placeholder="모임에 대한 소개글입니다!" id="ngIntro"></textarea>
		</c:if>
		<c:if test="${!empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" name="ngIntro" rows="5" id="ngIntro"
                  placeholder="모임에 대한 소개글입니다!" id="ngIntro">${groupinfo.ngIntro }</textarea>
		</c:if>
         
      </div>
      
      <br>

      <div class="form-inline">
         <label for="ngMyIntro" class="col-sm-2 control-label" style="font-weight: bold;">본인소개</label>
         <c:if test="${empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" name="ngMyIntro" rows="5"
                  placeholder="호스트님의 소개를 입력해주세요!" id="ngMyIntro"></textarea>
		</c:if>
		<c:if test="${!empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" name="ngMyIntro" rows="5"
                  placeholder="호스트님의 소개를 입력해주세요!" id="ngMyIntro">${groupinfo.ngMyIntro }</textarea>
		</c:if>
         
      </div>
      
      <br>

      <div class="form-inline">
         <label for="grPre" class="col-sm-2 control-label" style="font-weight: bold;">준비물</label>
         <c:if test="${empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" rows="5" name="grPre"
                  placeholder="모임에 대한 준비물입니다!" id="grPre"></textarea>
		</c:if>
		<c:if test="${!empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" rows="5" name="grPre"
                  placeholder="모임에 대한 준비물입니다!" id="grPre" readonly="readonly">${groupinfo.grPre }</textarea>
		</c:if>
      </div>
      
      <br>

      <div class="form-inline">
         <label for="grNotice" class="col-sm-2 control-label" style="font-weight: bold;">유의사항</label>
         <c:if test="${empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" rows="5" name="grNotice"
                  placeholder="모임에 대한 유의사항입니다!" id="grNotice"></textarea>
         </c:if>
         <c:if test="${!empty groupinfo.grCode}">
         <textarea class="form-control col-sm-5" rows="5" name="grNotice"
                  placeholder="모임에 대한 유의사항입니다!" id="grNotice" readonly="readonly">${groupinfo.grNotice }</textarea>
         </c:if>
      </div>
      
      <br>

      <div class="container" align="center">

         <button type="button" class="btn btn-info submit" onclick="formCheck()">개설</button>

         <a href="mygrouplist.action?memId=${member.memId }"><button type="button" class="btn btn-info">취소</button></a>
      </div>
      
      <br><br><br><br>
      
  
     
   </div>
  </form>
   </section>
   
   
   <div>
      <c:import url="footer.jsp"></c:import>
   </div>

</body>
</html>