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

<script type="text/javascript">

</script>

</head>
<body>
<form action="fileuploadtest.action" role="form" name="fileForm" id="fileForm" enctype="multipart/form-data" method="post">
    <input type="file" name="file1"><p>
    <input type="file" name="file2"><p>
    <input type="submit" value="파일업로드">
</form>


</body>
</html>