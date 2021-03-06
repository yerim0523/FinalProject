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
<title>Culture.jsp</title>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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

<!-- jquery plugins here-->
   <!--   안씀 
    <script src="js/jquery-1.12.1.min.js"></script>
    popper js
    <script src="js/popper.min.js"></script>
    bootstrap js
    <script src="js/bootstrap.min.js"></script> -->
    
    
    
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

<style>

    div.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
        
    }
    div.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
        
    }
    
    .img-responsive
	{
		height: 200px;
		width: 500px;
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
		<div class="left">
			<button type="button" class="btn btn-default" style="font-weight: bold;">검색결과</button>
		</div>
	
	</div>
	
	<div align="right">
		<label class="check-inline">
			<input type="checkbox" name="inlineRadioOptions" id="inlineCheck1" value="종료모임">종료 모임도 볼래요!
		</label>
		<label class="check-inline">
		  	<input type="checkbox" name="inlineRadioOptions" id="inlineCheck2" value="참여모임">참여 가능한 모임만 볼래요!
		</label>
	</div>
	
	<div align="right">
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
		<c:forEach var="SearchResult" items="${SearchResult}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="${SearchResult.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;"
					onclick="location.href='groupdetail.action?ngCode=${SearchResult.ngCode}'">
			<div class="caption">
			<div>
				<div class="starRev">
					
				</div>
				<div>
					<c:if test="${SearchResult.grStarAvg != 0.0 }">
					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					</c:if>
					<c:if test="${SearchResult.grStarAvg == 0.0 }">
					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					</c:if>
					<span style="color: gray;">&nbsp;&nbsp;${SearchResult.grStarAvg } 
						<span style="font-size: 10pt; color: gray;">/ ${SearchResult.grStarCount }<span style="font-size: 8pt;">명</span></span>
					</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">${SearchResult.grCount }회차 | ${SearchResult.grCate1Name } ${SearchResult.grCate2Name }</span>
				<div>
					<div class="name" onclick="location.href='groupdetail.action?ngCode=${SearchResult.ngCode}'">
					<h5>${SearchResult.grName }</h5>
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">"${SearchResult.hostName }"</h6>
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