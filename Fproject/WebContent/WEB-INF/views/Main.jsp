<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/custom.js"></script>

<!-- jquery plugins here-->
    <!-- jquery -->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>

<style type="text/css">
.img-responsive
{
   height: 200px;
   width: 500px;
}
button.more
{
   float: right;
    width: 120px;
    height: 35px;
    padding-left: 0px;
    padding-right: 0px;
    padding-bottom: 30px;
}
.left
{
   width: 50%;
   float: left;
   margin-top: 20px;
}
.right
{
   width: 50%;
   float: right;
}

</style>

</head>
<body>

<div>
   <c:import url="bar.jsp"></c:import>
</div>
<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div>
   <c:import url="MeetingBar.jsp"></c:import>
</div>
</section>

<div class="container">
   
   <div id="carouselExampleIndicators" class="carousel slide"
      data-ride="carousel" align="center">
      <ol class="carousel-indicators">
         <li data-target="#carouselExampleIndicators" data-slide-to="0"
            class="active"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
         <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
         <div class="carousel-item active">
            <img src="images/ma.jpg" class="d-block w-100" alt="인기호스트"
               style="height: 500px;">
         </div>
         <div class="carousel-item">
            <img src="images/gd.jpg" class="d-block w-100" alt="인기호스트"
               style="height: 500px;">
         </div>
         <div class="carousel-item">
            <img src="images/iu2.jpg" class="d-block w-100" alt="인기호스트"
               style="height: 500px;">
         </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators"
         role="button" data-slide="prev"> <span
         class="carousel-control-prev-icon" aria-hidden="true"></span> <span
         class="sr-only">Previous</span>
      </a> <a class="carousel-control-next" href="#carouselExampleIndicators"
         role="button" data-slide="next"> <span
         class="carousel-control-next-icon" aria-hidden="true"></span> <span
         class="sr-only">Next</span>
      </a>

   </div>
   <br><br><br>
   <div class="left"> 
   <a href="" >인기모임</a>
   </div> 
   <div class="right">
   <button type="button" class="btn4 more">더보기</button>
   </div>
   <br><br><br>
   <div class="row">
      <c:set var="n" value="0"/>
      <c:forEach var="HotGroup" items="${HotGroupList }">
         <%-- 
         <c:if test="${n==0 }">
            <div>
         </c:if>
         
         <c:if test="${n!==0 && n%3==0 }">
            </div>
            </div>
         </c:if>
          --%>
      <div class="col-sm-6 col-md-4">
         <div class="thumbnail">
            <img src="${HotGroup.ngPic}" alt="썸네일" class="img-responsive" style="width: 500px;" >
         <div class="caption">
         <div>
            <div class="starRev">
               
            </div>
            <div>
               <img alt="" src="images/star.png" style="width: 20px;">
               <span> 9.5</span>
            </div>
         </div>
         <br>
         <div>
            <span style="font-size: 12px;">1회차|${HotGroup.grCate1Name } ${HotGroup.grCate2Name }</span>
            <div>
               <div class="name">
               <h5>${HotGroup.grName }</h5>
               </div>
               <div class="heart" align="right">
                  <i class="far fa-heart"></i>
               </div>
               <br>
            </div>
            <h6 style="text-align: right; font-size: 10px;">${HotGroup.memName}</h6>
         </div>
         </div>
         </div>
      </div>
      </c:forEach> 
   </div>
   
   <br> <br> <br>
   <div class="left">
   <a href="">신규모임</a> <br>
   </div>
   <div class="right">
   <button type="button" class="btn4 more" style="float: right;">더보기</button>
   </div>
   <br><br><br>
   <div class="row">
      <c:forEach var="NewGroup" items="${NewGroupList }">
      <div class="col-sm-6 col-md-4">
         <div class="thumbnail">
            <img src="${NewGroup.ngPic }" alt="썸네일" class="img-responsive" style="width: 500px;" >
         <div class="caption">
         <div>
            <div class="starRev">
                
            </div>
            <div>
               <img alt="" src="images/star.png" style="width: 20px;">
               <span> 9.5</span>
            </div>
         </div>
         <br>
         <div>
            <span style="font-size: 12px;">1회차|${NewGroup.grCate1Name } ${NewGroup.grCate2Name }</span>
            <div>
               <div class="name">
               <h5>${NewGroup.grName }</h5>
               </div>
               <div class="heart" align="right">
                  <i class="far fa-heart"></i>
               </div>
               <br>
            </div>
            <h6 style="text-align: right; font-size: 10px;">${NewGroup.memName}</h6>
         </div>
         
         </div>
         </div>
      </div>
      </c:forEach>
   
   </div>
   <br> <br> <br>
   <div class="left">
   <a href="">인기호스트</a> <br>
   </div>
   <div class="right">
   <button type="button" class="btn4 more" style="float: right;">더보기</button>
   </div>
   <br><br><br>
   <div class="row">
      <c:forEach var="HotHost" items="${HotHostList }">
      <div class="col-sm-6 col-md-4">
         <div class="thumbnail">
            <img src="${HotHost.memPic}" alt="썸네일" class="img-responsive" style="width: 500px;" >
         <div class="caption">
         <div>
            <div class="starRev">
            </div>
            
            <div>
               <img alt="" src="images/star.png" style="width: 20px;">
               <span> 9.5</span>
            </div>
         </div>
         <br>
         <div>
            <span style="font-size: 12px;">소개글		${HotHost.memIntro }</span>
            <div>
               <div class="name">
               <h5>${HotHost.memName }</h5>
               </div>
               <div class="heart" align="right">
                  <i class="far fa-heart"></i>
               </div>
               <br>
            </div>
     
         </div>
         
         </div>
         </div>
      </div>
      </c:forEach>
   </div>
   
   <br> <br> <br>
   <div class="left">
   <a href="">마감임박</a> <br>
   </div>
   <div class="right">
   <button type="button" class="btn4 more" style="float: right;">더보기</button>
   </div>
   <br><br><br>
   <div class="row">
      <c:forEach var="ClosingGroup" items="${ClosingGroupList }">
      <div class="col-sm-6 col-md-4">
         <div class="thumbnail">
            <img src="${ClosingGroup.ngPic}" alt="썸네일" class="img-responsive" style="width: 500px;" >
         <div class="caption">
         <div>
            <div class="starRev">
               
            </div>
            <div>
               <img alt="" src="images/star.png" style="width: 20px;">
               <span> 9.5</span>
            </div>
         </div>
         <br>
         <div>
            <span style="font-size: 12px;">1회차|${ClosingGroup.grCate1Name } ${ClosingGroup.grCate2Name }</span>
            <div>
               <div class="name">
               <h5>${ClosingGroup.grName }</h5>
               </div>
               <div class="heart" align="right">
                  <i class="far fa-heart"></i>
               </div>
               <br>
            </div>
            <h6 style="text-align: right; font-size: 10px;">${ClosingGroup.memName}</h6>
         </div>
         
         </div>
         </div>
      </div>
      </c:forEach>
   
   </div>
   <br> <br> <br>
   <div class="left">
   <a href="">추천모임</a> <br>
   </div>
   <div class="right">
   <button type="button" class="btn4 more" style="float: right;">더보기</button>
   </div>
   <br><br><br>
   <div class="row">
      <c:forEach var="RecommendGroup" items="${RecommendGroupList }">
      <div class="col-sm-6 col-md-4">
         <div class="thumbnail">
            <img src="${RecommendGroup.ngPic}" alt="썸네일" class="img-responsive" style="width: 500px;" >
         <div class="caption">
         <div>
            <div class="starRev">
               
            </div>
            <div>
               <img alt="" src="images/star.png" style="width: 20px;">
               <span> 9.5</span>
            </div>
         </div>
         <br>
         <div>
            <span style="font-size: 12px;">1회차|${RecommendGroup.grCate1Name } ${RecommendGroup.grCate2Name }</span>
            <div>
               <div class="name">
               <h5>${RecommendGroup.grName }</h5>
               </div>
               <div class="heart" align="right">
                  <i class="far fa-heart"></i>
               </div>
               <br>
            </div>
            <h6 style="text-align: right; font-size: 10px;">${RecommendGroup.memName}</h6>
         </div>
         
         </div>
         </div>
      </div>
      </c:forEach>
   
   </div>

</div>

<div>
   <c:import url="footer.jsp"></c:import>
</div>



</body>
</html>