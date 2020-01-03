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
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<div>
	<h3>회원가입이 완료되었습니다.</h3>
</div>

<br>
<c:forEach items="${list}" var="data">
    ${data}<p>
</c:forEach>


<%-- <img src="<c:url value='fileloadtest.action?file_sysname=file1'/>" width="550" />
 --%>

	<button type="button" onclick="location='fileloadtest.action'"
				class="btn4" style="float: right;">이미지불러오기테스트</button>


</body>
</html>