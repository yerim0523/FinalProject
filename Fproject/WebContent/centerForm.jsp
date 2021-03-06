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
<title>게시판 글쓰기</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<br><br><br>

<section class="course_details_area section_padding">
<div class="container">
	<div class="col-md-2" align="left">
		<div class="panel-heading">
			<h4 class="panel-title" align="center">고객센터 소식</h4>
			<!-- <h4 class="panel-title" align="center">고객센터 이벤트</h4> -->
			<!-- <h4 class="panel-title" align="center">자유게시판</h4> -->
			<hr>
		</div>
	</div>
		
	<div class="container">
		<table class="table" style="text-align: center;">
			<tr>
				<td>제목</td>
				<td>
					<input type="text" class="form-control" id="title" placeholder="제목 입력(4-100)" name="title" maxlength="100"
							required="required" pattern=".{4,100}">
				</td>
				<td>
					<input type="checkbox">공지로 등록
				</td>
			<tr>
				<td>내용</td>
				<td colspan="2">
				<textarea class="form-control" rows="5" id="content" name="content"
				placeholder="내용 작성"></textarea>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td colspan="2">
					<div align="right">
						<button type="button" class="btn4" >등록</button>
					</div>
				</td>
			</tr>
			
		</table>
	</div>
</div>
 
</section>


<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>


