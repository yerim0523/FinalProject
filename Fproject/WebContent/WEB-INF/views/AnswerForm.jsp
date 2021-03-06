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
<title>AnswerUpdateForm.jsp</title>

<style type="text/css">
.pagination {
	justify-content: center;
}
.nav-pills
{
	justify-content: center;
}
</style>
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
    
<script type="text/javascript">

function formCheck()
{
   var f = document.AnswerUpdateForm;
   var str = f.boardCont.value;
   var max,min;
   
   str = str.trim();

   if(!str || 5>str.length || 1000<str.length)
   {
      alert("내용을 【4 ~ 1000자】 내외로 입력해주세요.");
      f.boardCont.focus();
      return;
   }
   
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
			
			 <h4 class="panel-title" align="center">답변 등록</h4>
			<!-- <h4 class="panel-title" align="center">자유게시판</h4> -->
			<hr>
		</div>
	</div>
		
	  <form action="answerupdate.action" method="post" name="AnswerUpdateForm" id="AnswerUpdateForm" class="form-horizontal">	
	  
	<div class="container">
		<table class="table" style="text-align: center;">
			<c:forEach var="v" items="${answerDetail}" varStatus="status">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" class="form-control" id="questionTitle" disabled="disabled"
					name="questionTitle" maxlength="100"required="required" value="${v.boardTitle}"pattern=".{4,100}">
					
					<input type="hidden" id="boardNum" name="boardNum" value="${v.boardNum }">
				</td>
				<td style="color: red;">[${v.faqName}]</td>
			<tr>
				<td>내용</td>
				<td colspan="2">
				<textarea  disabled="disabled" class="form-control" rows="5" id="questionCont" name="questionCont" value="${v.boardCont}"
				placeholder="내용 작성" >${v.boardCont}</textarea>
				</td>
			</tr>
			</c:forEach>
			<c:forEach var="answer" items="${answerUpdate}" varStatus="status">
			<tr>
				<td>답변</td>
				<td colspan="2">
				<textarea  disabled="disabled" class="form-control" rows="5" id="boardCont" name="boardCont" 
				placeholder="답변 작성" >${answer.boardCont}</textarea>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td colspan="2">
					<div align="right">
						<button type="button" class="btn4 btn-info submit" onclick="location='faq.action'">FAQ로</button>
					</div>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	</form>
</div>

</body>
</html>