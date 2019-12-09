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
<!-- 
<style type="text/css">
   
   .btn
   {
      border: 0px;
   }

</style>
 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

</head>
<body>

<div class="container">

   <header class="row navbar navbar-expand-lg navbar-light bg-light">
      <div class="col-md-4">
         <img alt="로고입니다." src="images/mainlogo.jpg"
            style="width: 150px; height: 150px;">
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
      </div>

      <div class="col-md-4">
         <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-1" width="150%" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
         </form>
      </div>

      <div class="collapse navbar-collapse col-md-4 col-md-offset-4" id="navbarSupportedContent">
         <!-- <img alt="모임개설입니다." src="images/open.jpg" width="70px">&nbsp; -->
         <button type="button" class="btn"><img src="images/open.jpg" alt="" width="70px"></button>
         <!-- <img alt="로그인입니다." src="images/login.jpg" width="70px">&nbsp; -->
         <button type="button" class="btn"><img src="images/login.jpg" alt="" width="70px"></button>
         <!-- <img alt="고객센터입니다." src="images/custom.jpg" width="70px">&nbsp; -->
         <button type="button" class="btn"><img src="images/custom.jpg" alt="" width="70px"></button>
         
      </div>
   </header>

</div>

</body>
</html>