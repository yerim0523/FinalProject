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
<title>Hprofile.jsp</title>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

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
	
	.page
	{
	   font-weight: bold;
	   font-size: 30px;
	   text-align: center;
	}
	
	.starR
	{
		background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
		background-size: auto 100%;
		width: 30px;
		height: 30px;
		display: inline-block;
		text-indent: -9999px;
		cursor: pointer;
		/* float: right; */
		box-sizing: border-box;
	}

   div.host
   {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }

	.starR.on{background-position:0 0;}
	
	img{max-width: 100%; height: auto;}

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

<br><br><br>

<div class="container">
	<div class="row">
      <div class="col-md-2" align="left">
         <span class="page">프로필</span>
      </div>
      <div class="col-md-10">
         <div class="container">
         <br><br>
		      <div class="d-flex justify-content-center h-100 left">
		         <div class="image_outer_container">
		            <div class="green_icon"></div>
		            <div class="image_inner_container">
		               <img src="images/me.png">
		            </div>
		         </div>
		         <div class="container right" style="width: 50%;">
		            <!-- ProfileController 에서 넘겨준 member(MemberDTO 타입) 를 이용해 변수값 꺼내 쓰기 -->
		            <input type="text" class="form-control" value="${member.memName }">
		            <br><br>
		            <textarea rows="3" cols="10" class="form-control">${member.memIntro }</textarea>
		         </div>
		      </div>
  		 </div><!-- end div.container -->
         
      </div><!-- end div.col-md-10 -->
      
   </div><!-- end div.row -->
</div><!-- end div.container -->
<hr>

<div class="container">
	<div>
		<div>
			<div class="host">
				<h4>호스트후기</h4><br>
			</div>
			<div class="starRev" align="right">
				<h6>평점 : 9.6</h6>
				<span class="starR on"></span>
				<span class="starR"></span>
				<span class="starR"></span>
				<span class="starR"></span>
				<span class="starR"></span>
			</div>
		</div>
	<br>
		<div>
			<textarea rows="10" cols="160" style="width: 100%;">호스트 후기</textarea>
			<div align="center">
			<button type="button" class="btn4" style="width: 15%;">더보기</button>
			</div>
		</div>
	</div>
	<br>
		<hr>
	<br>
	<div>
		<div align="left">
			<h4>모임히스토리</h4>
		</div>
		<form action="allHistory.action" method="post">
			<div align="right">
				<button type="submit" class="btn4" >더보기</button>
			</div>
		</form>
	</div>
	<br>
	<div class="row">
		<c:forEach var="group" items="${group}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${group.ngPic }" alt="썸네일" class="img-responsive">
				<div class="caption">
					<div>
						<div class="starRev">
						</div>
						<div>
							<c:if test="${group.grStarAvg != 0.0 }">
							<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
							</c:if>
							<c:if test="${group.grStarAvg == 0.0 }">
							<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
							</c:if>
							<span style="color: gray;">&nbsp;&nbsp;${group.grStarAvg } 
								<span style="font-size: 10pt; color: gray;">/ ${group.grStarCount }<span style="font-size: 8pt;">명</span></span>
							</span>
						</div>
					</div>
					<br>
					<div>
						<span style="font-size: 12px;">${group.grCount }회차 | ${group.grCate1Name } ${group.grCate2Name }</span>
						<div>
							<div class="name">
							<h5>${group.grName }</h5>
							</div>
							<div class="heart" align="right">
								<i class="far fa-heart"></i>
							</div>
							<br>
						</div>
						<h6 style="text-align: right; font-size: 10px;">"${group.memName }"</h6>
					</div>
				
				</div><!-- end div.caption -->
			</div><!-- end div.thumbnail -->
		</div><!-- end div.col-sm-6 col-md-4 -->
		</c:forEach>	
		
		
  	
	</div><!-- end div.row -->
</div><!-- end div.container -->

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>