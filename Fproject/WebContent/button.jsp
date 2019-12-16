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

<style type="text/css">

 .btn4 {
  background-color: #5cb196;
  font-size: 14px;
  padding: 11.5px 33px;
}

.btn4 {
  display: inline-block;
  padding: 13.5px 45px;
  border-radius: 50px;
  font-size: 14px;
  color: black;
  -o-transition: all .4s ease-in-out;
  -webkit-transition: all .4s ease-in-out;
  transition: all .4s ease-in-out;
  text-transform: capitalize;
  background-size: 200% auto;
  border: 1px solid transparent;
 /*  box-shadow: 0px 12px 20px 0px rgba(255, 126, 95, 0.15); */
}

.btn4:hover {
  color: #fff !important;
  background-position: right center;
 /*  box-shadow: 0px 10px 30px 0px rgba(193, 34, 10, 0.2); */
}

.banner_part .banner_text .btn4 {
  box-shadow: 0px 12px 20px 0px rgba(255, 126, 95, 0.15);
  margin-top: 50px;
  padding: 13.5px 45px;
}

</style>

</head>
<body>

<button type="button" class="btn4" >확인</button>

</body>
</html>