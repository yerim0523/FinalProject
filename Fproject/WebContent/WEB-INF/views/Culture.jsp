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
<title>Culture.jsp</title>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<!-- jquery plugins here-->
   <!--   안씀 
    <script src="js/jquery-1.12.1.min.js"></script>
    popper js
    <script src="js/popper.min.js"></script>
    bootstrap js
    <script src="js/bootstrap.min.js"></script> -->
    
    
    
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

<style>

    div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        
    }
    
    .img-responsive
	{
		height: 200px;
		width: 500px;
	}
    
</style>

<script type="text/javascript">

	 
	$(document).ready(function() {
	    $('#boardCont').summernote({
	  	  
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

	function formCheck()
	{
	   var f = document.EventInsertForm;
	   var str = f.boardTitle.value;
	   var max,min;
	   
	   str = str.trim();
	   if(!str || 5>str.length || 100<str.length)
	   {
	      alert("제목을 【4 ~ 100자】 내외로 입력해주세요.");
	      f.boardTitle.focus();
	      return;
	   }
	   
	   var Announce = document.getElementById('AnnounceCheck');
	   var AnnounceResult = Announce.getAttribute("checked")
	   var check=0;
	   
	   if($('#AnnounceCheck').is(":checked") == true)         // 체크 된 값만 
	   {
	      check=1;
	      //alert(temp[i]);
	   }
	   
	   str = f.boardCont.value;
	   str = str.trim();
	   if(!str || 5>str.length || 1000<str.length)
	   {
	      alert("내용을 【4 ~ 1000자】 내외로 입력해주세요.");
	      f.boardCont.focus();
	      return;
	   }
	   document.getElementById("check").value=check;
	   
	   alert($('textarea').val($('#boardCont').summernote('code')));

	   f.submit();
	
	}
</script>

</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div>
	<c:import url="MeetingBar.jsp"></c:import>
</div>
</section>


<div class="container">

	<div>
		<div class="left">
			<button type="button" class="btn btn-default" style="font-weight: bold;">문화생활</button>
		</div>
		<div class="right" align="right">
			<a href="exhibit.action">전시</a> | <a href="play.action">공연</a> | <a href="show.action">연극</a> 
		</div>
	</div>
	
	<div align="right">
		<label class="check-inline">
			<input type="checkbox" name="inlineRadioOptions" id="inlineCheck1" onclick="location='cultureclose.action'" value="종료모임">종료 모임도 볼래요!
		</label>
		<label class="check-inline">
		  	<input type="checkbox" name="inlineRadioOptions" id="inlineCheck2" onclick="location='cultureable.action'"value="참여모임">참여 가능한 모임만 볼래요!
		</label>
	</div>
	
	<div align="right">
	    <div class="btn-group" role="group">
		    <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      정렬 기준
		    </button>
		    <div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
		      <a class="dropdown-item" onclick="location='culture.action?ordercheck=1'" style="cursor:pointer;">최신순</a>
		      <a class="dropdown-item" onclick="location='culture.action?ordercheck=2'" style="cursor:pointer;">인기순</a>
		      <a class="dropdown-item" onclick="location='culture.action?ordercheck=3'" style="cursor:pointer;">별점순</a>
		    </div>
	  	</div>
  	</div>
  	<br><br><br>
  	
  	 
	<div class="row">
		<c:forEach var="CultureGroup" items="${CultureGroupList}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${CultureGroup.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;"
					onclick="location.href='groupdetail.action?ngCode=${CultureGroup.ngCode}'">
			<div class="caption">
			<div>
				<div class="starRev">
					
				</div>
				<div>
					<c:if test="${CultureGroup.grStarAvg != 0.0 }">
					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					</c:if>
					<c:if test="${CultureGroup.grStarAvg == 0.0 }">
					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					</c:if>
					<span style="color: gray;">&nbsp;&nbsp;${CultureGroup.grStarAvg } 
						<span style="font-size: 10pt; color: gray;">/ ${CultureGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
					</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">${CultureGroup.grCount }회차 | ${CultureGroup.grCate1Name } ${CultureGroup.grCate2Name }</span>
				<div>
					<div class="name" onclick="location.href='groupdetail.action?ngCode=${CultureGroup.ngCode}'">
					<h5>${CultureGroup.grName }</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">"${CultureGroup.memName }"</h6>
			</div>
			
			</div>
			</div>
		</div>
		</c:forEach>	
		
		
  	
</div>

</div>

<div>
   <c:import url="footer.jsp"></c:import>
</div>

</body>
</html>