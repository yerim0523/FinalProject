<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test.jsp</title>
</head>
<body>

<div>
	<h1>멤버 아이디, 비번, 이름, 전번 가져오기</h1>
	<hr>
</div>

<div>
	<table class="tbl" id="customers" style="width: 500px;">
		<tr>
			<th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th>
		</tr>
		
		<!-- EL, JSTL 표현에 의한 회원 리스트 출력 부분 -->
		<c:forEach var="member" items="${memberList }">
		<tr>
			<%-- MemberDTO 객체의 getName() - getTelephone() 메소드 호출 --%>
			<%-- 할 수 있는 EL 표현 활용 부분 --%>
			<td>${member.memId }</td>
			<td>${member.memPw }</td>
			<td>${member.memName }</td>
			<td>${member.memTel }</td>
		</tr>
		</c:forEach>
		
	</table>
</div>	

</body>
</html>