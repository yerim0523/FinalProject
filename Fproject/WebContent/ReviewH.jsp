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
<title>모임후기(호스트)</title>

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
		 width: 800px; 
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
	  padding: 20px;
	  margin: 10px;
	  align-self: center;
	  width: 800px;
	}
	
	.review p, .balloon p
	{
		font-weight: bold;
		font-size: 11pt;
		color: #333333;
	}
	
	.review a, .balloon a
	{
		font-weight: bold;
		font-size: 13pt;
		color: #333333;
	}
	
	.groupCnt
	{
		font-weight: bold;
		font-size: 11pt;
		color: gray;
	}
	
	.purple-border textarea {
    border: 1px solid #ba68c8;
	}
	
	.purple-border .form-control:focus {
	    border: 1px solid #ba68c8;
	    box-shadow: 0 0 0 0.2rem rgba(186, 104, 200, .25);
	}
	
	.green-border-focus .form-control:focus {
	    border: 1px solid #8bc34a;
	    box-shadow: 0 0 0 0.2rem rgba(139, 195, 74, .25);
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
		
		<div align="center">
			<div class="review" align="left">
			<div align="left">
				<img src="images/me.png" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp;
				<a class="name">백호진</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<div class="col-12 p-0 d-flex align-items-center justify-content-end">
					<div class="d-flex align-items-center groupCnt">
					3회차 참여 &nbsp;
					</div>
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
				<br><br>
				<p>메이트가 남기는 후기입니당. 즐거웠어용. 메이트가 남기는 후기입니당. 
				즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용. 메이트가 남기는 후기입니당. 
				즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용.</p>
			</div>
			</div>
			
			
			<div class="balloon" align="left">
				<img src="images/me.png" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">백호진</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<br>
				<p>
				감사해용. 감사해용. 감사해용. 감사해용. 감사해용. 감사해용. 감사해용. 감사해용. 감사해용. 
				</p>
			</div>
		</div>
		
		<br>
		
		<div align="center">
			<div class="review" align="left">
			<div align="left">
				<img src="images/me.png" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">백호진</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<div class="col-12 p-0 d-flex align-items-center justify-content-end">
					<div class="d-flex align-items-center groupCnt">
					2회차 참여 &nbsp;
					</div>
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
				<br><br>
				<p>메이트가 남기는 후기입니당. 즐거웠어용. 메이트가 남기는 후기입니당. 
				즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용. 메이트가 남기는 후기입니당. 
				즐거웠어용.메이트가 남기는 후기입니당. 즐거웠어용.</p>
			</div>
			</div>
			
			
			<div class="balloon" align="left">
				<img src="images/me.png" class="rounded-circle"
						style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
				<a class="name">백호진</a>
				<div style="float: right;">
					<img src="<%=cp%>/images/siren.png" style="width: 30px; height: 30px;">
				</div>
				<br><br>
				<div class="form-group green-border-focus">
				<textarea class="form-control" id="exampleFormControlTextarea5" rows="3"></textarea>
					<div style="float: right;">
					<button type="button" class="btn btn-info">버튼</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>

<br><br><br><br><br>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>