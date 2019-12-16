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
<title>AllMeeting.jsp</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/style.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

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

	.starR1{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float:left;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	.starR2{
	    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
	    background-size: auto 100%;
	    width: 15px;
	    height: 30px;
	    float:left;
	    text-indent: -9999px;
	    cursor: pointer;
	}
	.starR1.on{background-position:0 0;}
	.starR2.on{background-position:-15px 0;}
	
	img { max-width: auto; height: auto; }
	
	.left
	{
		width: 50%;
		float: left;
	}
	.right
	{
		width: 50%;
		float: ri
	}
	
	div.name
   {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    div.heart
    {
    	width: 50%;
    	float: right;
    	box-sizing: border-box;
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
	<div>
		<div align="left" class="left">
			<button type="button" class="btn btn-default">전체모임목록</button>
		</div>
		<div align="right" >
			<label class="radio-inline">
				<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="종료모임">종료 모임도 볼래요!
			</label>
			<label class="radio-inline">
			  	<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="참여모임">참여 가능한 모임만 볼래요!
			</label>
		</div>
	</div>
	<div align="right">
		<div class="btn-group" role="group">
		    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      지역 선택
		    </button>
		    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
		      <a class="dropdown-item" href="#">서울</a>
		      <a class="dropdown-item" href="#">경기</a>
		      <a class="dropdown-item" href="#">인천</a>
		    </div>
	    </div>
	    <div class="btn-group" role="group">
		    <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      정렬 기준
		    </button>
		    <div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
		      <a class="dropdown-item" href="#">최신순</a>
		      <a class="dropdown-item" href="#">인기순</a>
		      <a class="dropdown-item" href="#">평가순</a>
		    </div>
	  	</div>
  	</div>
  	<br><br><br>
  	
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
	
	<br>
	<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="images/iu.jpg" alt="썸네일" class="img-responsive" style="width: 100%;" >
			<div class="caption">
			<div>
				<div class="starRev">
					<span class="starR1 on">별1_왼쪽</span>
					<span class="starR2">별1_오른쪽</span>
					<span class="starR1">별2_왼쪽</span>
					<span class="starR2">별2_오른쪽</span>
					<span class="starR1">별3_왼쪽</span>
					<span class="starR2">별3_오른쪽</span>
					<span class="starR1">별4_왼쪽</span>
					<span class="starR2">별4_오른쪽</span>
					<span class="starR1">별5_왼쪽</span>
					<span class="starR2">별5_오른쪽</span>
				</div>
				<div>
					<span style="margin: 20px; margin-top: 40px;">평점 : 9.5</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">1회차|맛집</span>
				<div>
					<div class="name">
					<h5>맥주모임</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">호스트이름</h6>
			</div>
			
			</div>
			</div>
		</div>
  	
</div>
</div>

<div>
   <c:import url="footer.jsp"></c:import>
</div>

</body>
</html>