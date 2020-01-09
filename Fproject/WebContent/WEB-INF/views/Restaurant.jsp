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
<title>Food.jsp</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>
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

<div>
	<jsp:include page="TopButton.jsp"></jsp:include>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div>
	<c:import url="MeetingBar.jsp"></c:import>
</div>
</section>


<div class="container">

	<div>
		<div class="left">
			<button type="button" class="btn btn-default" style="font-weight: bold;">맛집 > 식당</button>
		</div>
		<div class="right" align="right">
			<a style="font-weight: bold;">식당</a> | <a href="cafe.action">카페</a>
		</div>
	</div>
	
	<div align="right">
		<label class="check-inline">
			<input type="checkbox" name="inlineRadioOptions" id="inlineCheck1" onclick="location='restaurantclose.action'" value="종료모임">종료 모임도 볼래요!
		</label>
		<label class="check-inline">
		  	<input type="checkbox" name="inlineRadioOptions" id="inlineCheck2" onclick="location='restaurantable.action'"value="참여모임">참여 가능한 모임만 볼래요!
		</label>
	</div>
	
	<div align="right">
	    <div class="btn-group" role="group">
		   <c:choose>
	    		<c:when test="${sessionScope.ordercheck==1}">
	    		 <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">최신순</button>
	    		</c:when>
		   		
		   		<c:when test="${sessionScope.ordercheck==2}">
	    		 <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">인기순</button>
	    		</c:when>
	    		
	    		<c:when test="${sessionScope.ordercheck==3}">
	    		 <button id="btnGroupDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">별점순</button>
	    		</c:when>
		    </c:choose>
		    <div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
		      <a class="dropdown-item" onclick="location='restaurant.action?ordercheck=1'" style="cursor:pointer;">최신순</a>
		      <a class="dropdown-item" onclick="location='restaurant.action?ordercheck=2'" style="cursor:pointer;">인기순</a>
		      <a class="dropdown-item" onclick="location='restaurant.action?ordercheck=3'" style="cursor:pointer;">별점순</a>
		    </div>
	  	</div>
  	</div>
  	<br><br><br>
  	
  	 
	<div class="row">
		<c:forEach var="FoodGroup" items="${RestaurantGroupList}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="uploads/${FoodGroup.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;"
					onclick="location.href='groupdetail.action?ngCode=${FoodGroup.ngCode}'">
			<div class="caption">
			<div>
				<div class="starRev">
					
				</div>
				<div style="text-align: right;">
					<c:if test="${FoodGroup.grStarAvg eq 0}">
           				<c:forEach begin="0" end="4">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			<c:if test="${FoodGroup.grStarAvg ne 0}">
           				<c:forEach begin="1" end="${FoodGroup.grStarAvg/1}">
           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           				<c:if test="${FoodGroup.grStarAvg%1 ne 0}">
           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:if>
           				<c:forEach begin="1" end="${5 - FoodGroup.grStarAvg/1}">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
					<span style="color: gray;">&nbsp;&nbsp;${FoodGroup.grStarAvg } 
						<span style="font-size: 10pt; color: gray;">/ ${FoodGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
					</span>
				</div>
			</div>
			<br>
			<div>
				
				<span style="font-size: 12px;">${FoodGroup.grCount }회차 | ${FoodGroup.grCate1Name } ${FoodGroup.grCate2Name }</span>
				
				<div>
					<div class="name" onclick="location.href='groupdetail.action?ngCode=${FoodGroup.ngCode}'">
					<h5>${FoodGroup.grName }</h5>
					
					
					</div>
					<div class="heart" align="right">
						<i class="far fa-heart"></i>
					</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 10px;">"${FoodGroup.memName }"</h6>
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