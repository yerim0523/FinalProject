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
</head>
<body>


 <c:forEach items="${filelist}" var="data">
	<div>
	<img src="uploads/${data.file_sysname}" width="245">
	</div>	
</c:forEach> 

<%-- <img src ="../페페.png" width="245">
<img src ="<%=cp %>/WebContent/uploads/땅콩댕댕.jpg" width="245">
<img src ="/uploads/땅콩댕댕.jpg" width="245">
<img src ="images/location.png" width="245">
<img src ="uploads/땅콩댕댕.jpg" width="245">
<img src ="uploads/땅콩댕댕.jpg" width="245">
<img src ="페페.png" width="245"> --%>
<img src ="../uploads" width="245"> 
</body>
</html>