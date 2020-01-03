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
<title>EventInsertForm.jsp</title>

<style type="text/css">
.pagination {
	justify-content: center;
}
.nav-pills
{
	justify-content: center;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
<!-- jquery plugins here-->
    <!-- jquery -->
     
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
<!--     <script src="js/waypoints.min.js"></script> -->
    
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
	    $('#boardCont').summernote({
	  	  
				lang: 'ko-KR',
	          height: 300,                 
	          minHeight: null,             
	          maxHeight: null,             
	          focus: true,                 
	          fontSizes: ['4', '5', '6', '7', '8', '9', '10', '11', '12', '14', '18', '24', '36', '48' , '64', '82', '150'],
			    fontNames: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica', 'Impact', 'Tahoma', 'Times New Roman', 'Verdana'],
				fontNamesIgnoreCheck: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체'],
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
	   
	   if($('input').is(":checked") == true)         // 체크 된 값만 
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



<link rel="stylesheet" href="css/button.css" >

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
	<div class="col-md-2" align="left">
		<div class="panel-heading">
			
			 <h4 class="panel-title" align="center">이벤트</h4>
			<!-- <h4 class="panel-title" align="center">자유게시판</h4> -->
			<hr>
		</div>
	</div>
		
	  <form action="eventinsert.action" method="post" name="EventInsertForm" id="EventInsertForm" class="form-horizontal">	
	<div class="container">
		<table class="table" style="text-align: center;">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" class="form-control" id="boardTitle" placeholder="제목 입력(4-100)" name="boardTitle" maxlength="100"
							required="required" pattern=".{4,100}">
				</td>
				<td>
					<label><input type="checkbox" name = "AnnounceCheck" id="AnnounceCheck">공지로 등록</label>
				</td>
				
				<input type="hidden" id="check" name="check" value="0">
			<tr>
				<td>내용</td>
				<td colspan="2">
				<textarea class="form-control" rows="5" id="boardCont" name="boardCont"
				placeholder="내용 작성"></textarea>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td colspan="2">
					<div align="right">
						<button type="button" class="btn4 btn-info submit" onclick="formCheck()" >등록</button>
					</div>
				</td>
			</tr>
			
		</table>
	</div>
	</form>
</div>

</body>
</html>