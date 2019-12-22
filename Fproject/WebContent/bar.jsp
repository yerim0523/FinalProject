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
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>

<link rel="icon" href="img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet" href="css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="css/button.css">

<style type="text/css">
.container {
   padding-right: 15px;
   padding-left: 15px;
   margin-right: auto;
   margin-left: auto;
}

@media ( min-width : 768px) {
   .container {
      width: 750px;
   }
}

@media ( min-width : 992px) {
   .container {
      width: 970px;
   }
}

@media ( min-width : 1200px) {
   .container {
      width: 1170px;
   }
}

}
</style>


</head>
<body>

   <header class="main_menu home_menu">
      <div class="container">
         <div class="row align-items-center">
            <div class="col-lg-12">
               <nav class="navbar navbar-expand-lg navbar-light navigationBar">
                  <a class="navbar-brand" href="main.action"> <img
                     src="images/reallogo.jpg" alt="logo" class="logoBox">
                  </a>
                  <button class="navbar-toggler" type="button"
                     data-toggle="collapse" data-target="#navbarSupportedContent"
                     aria-controls="navbarSupportedContent" aria-expanded="false"
                     aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon"></span>
                  </button>

                  <div
                     class="collapse navbar-collapse main-menu-item justify-content-end"
                     id="navbarSupportedContent">
                     <ul class="navbar-nav align-items-center">
                        <li class="nav-item"
                           style="margin-right: 30px; margin-top: 15px;">
                           <form action="#">
                              <div class="form-group">
                                 <div class="input-group mb-3 nav-item">
                                    <input type="text" class="form-control"
                                       style="height: 50px;" placeholder='검색하세요'
                                       onfocus="this.placeholder = ''"
                                       onblur="this.placeholder = '검색하세요'">
                                    <div class="input-group-append">
                                       <button class="btn btn_1" type="button"
                                          style="margin-left: 0px;">
                                          <span style="color: black;"><i
                                             class="fas fa-search"></i></span>
                                       </button>
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </li>
                        <li class="nav-item"><a class="nav-link"
                           href="groupInsertForm.action">모임개설</a></li>
                        <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Pages
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="single-blog.html">Single blog</a>
                                        <a class="dropdown-item" href="elements.html">Elements</a>
                                    </div>
                                </li> -->
                        <li class="nav-item"><a class="nav-link"
                           href="join.action">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link"
                           href="news.action">고객센터</a></li>
                        <li class="d-none d-lg-block"><a class="btn_1"
                           href="login.action" style="color: black;">로그인</a></li>
                     </ul>
                  </div>
               </nav>
            </div>
         </div>
      </div>
   </header>

   <li class="responsiveNavigationMenuImg"></li>
   <div class="clear"></div>

</body>
</html>