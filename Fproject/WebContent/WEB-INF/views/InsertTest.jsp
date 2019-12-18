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
<script type="text/javascript">

	$(function()
	{
		
		$(".btnCancel").on("click", function()
		{
			$("#title").text("회원 정보 입력");
			$("#mid").val("");
			$("#name").val("");
			$("#telephone").val("");
			
			$("#memberForm").attr("action", "memberinsert.action");
			$("#name").focus();
		});
		
	});
	


</script>
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
						<label for="name">
							NAME : 
						</label>
						<input type="text" id="name" name="name" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="telephone">
							TELEPHONE : 
						</label>
						<input type="tel" id="telephone" name="telephone" class="form-control">
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
					<thead>
						<tr>
							<th>MID</th>
							<th>NAME</th>
							<th>TELEPHONE</th>
							<th>삭제 / 수정</th>
						</tr>
					</thead>
					<tbody>
					    <!-- 
						<tr>
							<td>1</td>
							<td>박지혜</td>
							<td>010-1234-2345</td>
							<td>
								<button type="button" class="btn btn-default btn-xs btnDelete">삭제</button>
								<button type="button" class="btn btn-default btn-xs btnUpdate">수정</button>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>이현지</td>
							<td>010-3456-4567</td>
							<td>
								<button type="button" class="btn btn-default btn-xs btnDelete">삭제</button>
								<button type="button" class="btn btn-default btn-xs btnUpdate">수정</button>
							</td>
						</tr>
						-->
						<c:forEach var="member" items="${list }">
						<tr>
							<td>${member.mid }</td>
							<td>${member.name }</td>
							<td>${member.telephone }</td>
							<td>
								<%-- <button type="button" class="btn btn-default btn-xs btnDelete" id="edit" onclick="location.href='memberupdateform.action?mid=${member.mid}'">수정</button> --%>
								<%-- <button type="button" class="btn btn-default btn-xs btnUpdate" id="del" onclick="location.href='memberdelete.action?mid=${member.mid }'">삭제</button> --%>
								<button type="button" class="btn btn-default btn-xs btnDelete">삭제</button>
								<button type="button" class="btn btn-default btn-xs btnUpdate" value="${member.mid }">수정</button>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button type="button" class="btn btn-default btn-sm" disabled="disabled">
					Count <span class="badge">${count }</span>
				</button>
				
			</div>
		</div><!-- end .panel .panel-default -->
	</div>
</div>

</body>
</html>