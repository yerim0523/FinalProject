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
<title>mainboardInsertForm.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
		var f = document.mainboardInsertForm;
		var str = f.boardTitle.value;
		
		str = str.trim();
		if(!str || 4>str.length || 100<str.length)
		{
			alert("제목을 【4 ~ 100자】 내외로 입력해주세요.");
			f.boardTitle.focus();
			return;
		}
		
		var Announce = document.getElementById('AnnounceCheck');
		var AnnounceResult = Announce.getAttribute("checked");
		var check=0;
		
		
		
		if($('input').is(":checked") == true)	// 체크 된 값만
		{
			check=1;
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
		
		f.submit();
	}
	
</script>

<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<br><br><br>

<section class="course_details_area section_padding">
<div class="container">
	<div class="col-md-2" align="left">
		<div class="panel-heading">
			<h4 class="panel-title" align="center">전체게시판</h4>
			<!-- <h4 class="panel-title" align="center">고객센터 이벤트</h4> -->
			<!-- <h4 class="panel-title" align="center">자유게시판</h4> -->
			<hr>
		</div>
	</div>
	
	<form action="mainboardinsert.action" method="post" name="mainboardInsertForm" id="mainboardInsertForm" class="form-horizontal">
	<div class="container">
		<table class="table" style="text-align: center;">
			<tr>
				
				<td>제목</td>
				<td>
					<input type="text" class="form-control" id="boardTitle"  placeholder="제목 입력(4-100)" name="boardTitle" maxlength="100"
							required="required" pattern=".{4,100}">
				</td>
				<td>
					<c:if test="${sessionScope.mode==1}">
					<input type="checkbox" name="AnnounceCheck" id="AnnounceCheck">공지로 등록
					</c:if>
					<input type="hidden" name="AnnounceCheck" id="AnnounceCheck">
				</td>
				<input type="hidden" id="check" name="check" value="0">	
			</tr>
			
			<tr>
				
				<td>작성자</td>
				<td colspan="2">
					<input type="text" class="form-control" id="memId" name="memId" value="${member.memName }" readonly="readonly">
					<input type="hidden" id="boardMem" name="boardMem" value="${member.memId }" >
				</td>
			</tr>
				
				
			<tr>
				<td>내용</td>
				<td colspan="2">
				<textarea class="form-control" rows="5" id="boardCont" name="boardCont" placeholder="내용 작성"></textarea>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td colspan="2">
					<div align="right">
						<button type="button" class="btn4 btn-info submit" onclick="formCheck()">등록</button>
					</div>
				</td>
			</tr>
			
		</table>
	</div>
	</form>
</div>
 
</section>


<div>
	<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>


