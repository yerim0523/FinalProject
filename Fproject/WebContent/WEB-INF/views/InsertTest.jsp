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
		$("#submit").click(function()
		{
			var cate = document.getElementsByName("memCate");
			var count = 0;
			var result = Array();
			for (var i = 0; i < cate.length; i++)
			{
				if(cate[i].checked==true)
				{
					alert(cate[i].value);
					result[count] = cate[i].value;
					count++;
				}
			}
			
			$("#memCate1").val(result[0]);
			$("#memCate2").val(result[1]);
			alert($("#memCate1").val());
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
					
					<div class="form-group">
						<label for="memGen">
							성별 선택 : 
						</label>
						<input type="radio" id="memGen" name="memGen" value="1">남성 &nbsp;
						<input type="radio" id="memGen" name="memGen" value="2">여성 &nbsp;
						<input type="radio" id="memGen" name="memGen" value="3">선택안함 &nbsp;
					</div>
					
					<div class="form-group">
						<label for="memComp">
							직장 입력 : 
						</label>
						<input type="text" id="memComp" name="memComp" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="memCate">
							카테고리 선택 : 
						</label>
						<input type="checkbox" id="memCate" name="memCate" value="1">전시 &nbsp;
						<input type="checkbox" id="memCate" name="memCate" value="2">연극 &nbsp;
						<input type="checkbox" id="memCate" name="memCate" value="3">공연 &nbsp;
						<input type="checkbox" id="memCate" name="memCate" value="4">식당 &nbsp;
						<input type="checkbox" id="memCate" name="memCate" value="5">카페 &nbsp;
					</div>
					
					<input type="hidden" id="memCate1" name="memCate1">
					<input type="hidden" id="memCate2" name="memCate2">
					
					<button type="submit" id="submit" class="btn btn-default btn-sm">SUBMIT</button>
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