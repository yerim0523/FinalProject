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
<title>MemberList.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div>
	<h1>회원 정보</h1>
	<hr>
</div>

<div class="container">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading" id="title">
				회원 정보 입력
			</div>
			
			<div class="panel-body">
				<form action="memberinsert.action" method="post" role="form" id="memberForm">
				<input type="hidden" id="mid" name="mid" >
					<div class="form-group">
						<label for="memId">
							ID 입력 : 
						</label>
						<input type="text" id="memId" name="memId" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="memPw">
							PW 입력 : 
						</label>
						<input type="password" id="memPw" name="memPw" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="memName">
							이름 입력 : 
						</label>
						<input type="text" id="memName" name="memName" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="memTel">
							TEL 입력 : 
						</label>
						<input type="tel" id="memTel" name="memTel" class="form-control">
					</div>
					
					<button type="submit" class="btn btn-default btn-sm">SUBMIT</button>
					<button type="button" class="btn btn-default btn-sm btnCanCel">CANCEL</button>
				</form>
			</div>
		</div><!-- end .panel .panel-default -->
		
		<div class="panel panel-default">
			<div class="panel-heading">
				회원 정보 출력
			</div>
			
			<div class="panel-body">
				<table class="table">
					<tbody>
						<c:forEach var="member" items="${list }">
						<tr>
							<td>${member.memId }</td>
							<td>${member.memPw }</td>
							<td>${member.memName }</td>
							<td>${member.memTel }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
		</div><!-- end .panel .panel-default -->
	</div>
</div>

</body>
</html>