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
<title>모임후기(메이트)</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
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
    
<style type="text/css">

	.starR1{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float: right;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	.starR2{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float: right;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	
	.starR1.on{background-position:0 0;}
	.starR2.on{background-position:-15px 0;}
	
	.balloon {  
		 position:relative; 
		 padding: 20px;
		 margin: 20px;
		 width: 700px; 
		 background: #eec4c4; 
		 border-radius: 10px;
	}
	
	.balloon:after { 
		 border-top:0px solid transparent; 
		 border-left: 10px solid transparent; 
		 border-right: 10px solid transparent; 
		 border-bottom: 10px solid 	#eec4c4; 
		 content:""; 
		 position: absolute;
		 top:-10px;
		 left: 100px;  
	}
	
	.review
	{
	  border: 1px solid gray;
	  border-radius: 30px;
	  padding: 30px;
	  margin: 10px;
	  align-self: center;
	  width: 700px;
	}
	
	.review p, .balloon p
	{
		font-weight: bold;
		font-size: 11pt;
		padding-left: 20px;
		color: #333333;
	}
	
	.review a, .balloon a
	{
		font-weight: bold;
		font-size: 13pt;
		padding-left: 20px;
		color: #333333;
	}
	
	.groupCnt
	{
		font-weight: bold;
		font-size: 11pt;
		color: gray;
	}
	
</style>

<script type="text/javascript">

	$('.starRev span').click(function()
	{
		alert("확인");
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
	
</script>

</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

	<div>
		<c:import url="MeetingBar.jsp"></c:import>
	</div>
	
	<div class="container">
		<br><br>
		
		<div class="col-2">
			<p style="font-weight: bold; font-size: 18pt; color:#000000;">| 모임후기</p>
		</div>
		
		<div class="col-12 d-flex">
        <div class="col-11 p-0 d-flex align-items-center justify-content-end">
           <div class="starRev">
              <span class="starR2"></span>
              <span class="starR1"></span>
              <span class="starR2"></span>
              <span class="starR1"></span>
              <span class="starR2"></span>
              <span class="starR1"></span>
              <span class="starR2"></span>
              <span class="starR1"></span>
              <span class="starR2"></span>
              <span class="starR1 on"></span>
            </div>
        </div>
        <div class="col-2 p-0 d-flex align-items-center justify-content-start">&nbsp;&nbsp;<span style="font-weight: bold;">4.74 / 56 명</span></div>
    	</div>
    	
    	<br>    
		
		<div align="right">
			<input type="button" class="btn4" value="후기 작성하기" style="width: 200px;">
		</div>
		
		<br>
		
		<br>
		
		<c:forEach var="reviewM" items="${reviewM }">
		<div align="center">
			<div class="review" align="left">
			<div align="left">
				<img src="images/${reviewM.memPic }" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">${reviewM.memName }</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<div class="col-12 p-0 d-flex align-items-center justify-content-end">
           			<div class="starRev">
		            <span class="starR2"></span>
		            <span class="starR1"></span>
		            <span class="starR2"></span>
		            <span class="starR1"></span>
		            <span class="starR2"></span>
		            <span class="starR1"></span>
		            <span class="starR2"></span>
		            <span class="starR1"></span>
		            <span class="starR2"></span>
		            <span class="starR1 on"></span>
            		</div>
        		</div><br>
				<p>${reviewM.reviewCont }</p>
			</div>
			</div>
			
			
			<div class="balloon" align="left">
				<img src="images/${reviewM.hostPic }" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">${reviewM.hostName }</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<br><br>
				<p>
				${reviewM.reviewComCont }
				</p>
			</div>
		</div>
		</c:forEach>
		
	</div>

</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>




</body>
</html>