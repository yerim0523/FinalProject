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

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.js"></script>

    <!-- jquery plugins here-->
    <!-- jquery -->
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
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

 <!-- jquery plugins here -->
<!--   
    easing js
    <script src="js/jquery.magnific-popup.js"></script>
    swiper js
    <script src="js/swiper.min.js"></script>
    swiper js
    <script src="js/masonry.pkgd.js"></script>
    particles js
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    swiper js
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    custom js
    <script src="js/custom.js"></script> -->

<style type="text/css">
	
	.img-responsive
	{
		height: 200px;
		width: 500px;
	}
	
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
	
	.fa-heart {
	cursor: pointer;
	}
	
    
</style>

<script type="text/javascript">
	$(function()
	{
		var count = 0;
		array = new Array();
		
		  <c:forEach var="jjim" items="${meetFavList}" varStatus="status">
			array[count]="${jjim.ngCode}";
			count++;
		  </c:forEach>  
		
		for (var i = 0; i <array.length; i++)
		{
			listNgCode = array[i];
			/* alert(listNgCode); */
			$('#groupHeart'+listNgCode).removeClass('far');
			$('#groupHeart'+listNgCode).addClass('fas');
		}
		
		$(".heart").click(function()
		{
			if($("#sessionInfo").val()==="")
			{
				$('.loginNeed').modal('show');
				return;
			}
			var params = {};
			params.memId = $("#sessionInfo").val();
			params.ngCode = $("#empNgCode").val();
			
			 $.ajax({
	                type : "POST"
	                , url : "meetfavoritefind.action"
	                , data : params
	                , contentType :"application/x-www-form-urlencoded; charset=UTF-8"
	                 , success: function(data){
	                    var isYn = data;
	                    if(isYn === "Y")
	                    {
	                    	var memId = $("#sessionInfo").val();
	                    	var ngCode = $("#empNgCode").val();
	                    	
	                    	location = "meetfavoritealldelete.action?memId="+memId+"&ngCode="+ngCode;
	                        alert("찜이 해제되었습니다!");
	                       
	                    }else
	                    {
	                    	var memId = $("#sessionInfo").val();
	                    	var ngCode = $("#empNgCode").val();
	                    	
	                    	location = "meetfavoriteallinsert.action?memId="+memId+"&ngCode="+ngCode;
	                    	alert("찜이 완료되었어용~!! ^_^");
	                    }
	                 }
	          });
		});
	});
	
	function sendNgCode(data)
	{
		$("#empNgCode").val(data);
	}
	

</script>

</head>
<body>

<div class="header">
	<jsp:include page="bar.jsp"></jsp:include>
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
	<input type="hidden" id="sessionInfo" value="${sessionInfo.memId }">
	<input type="hidden" id="empNgCode"> 
	<div>
		<div align="left" class="left">
			<button type="button" class="btn btn-default">전체모임목록</button>
		</div>
		
		<div align="right">
		<label class="check-inline">
			<input type="checkbox" name="inlineRadioOptions" id="inlineCheck1" onclick="location='allclose.action'" value="종료모임">종료 모임도 볼래요!
		</label>
		<label class="check-inline">
		  	<input type="checkbox" name="inlineRadioOptions" id="inlineCheck2" onclick="location='allable.action'"value="참여모임">참여 가능한 모임만 볼래요!
		</label>
		</div>
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
		      <a class="dropdown-item" onclick="location='all.action?ordercheck=1'" style="cursor:pointer;">최신순</a>
		      <a class="dropdown-item" onclick="location='all.action?ordercheck=2'" style="cursor:pointer;">인기순</a>
		      <a class="dropdown-item" onclick="location='all.action?ordercheck=3'" style="cursor:pointer;">별점순</a>
		    </div>
	  	</div>
  	</div>
  	<br><br><br>
  	
	<div class="row">
		<c:forEach var="AllGroup" items="${AllGroupList}">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="uploads/${AllGroup.ngPic }" alt="썸네일" class="img-responsive" style="width: 100%;"
					onclick="location.href='groupdetail.action?ngCode=${AllGroup.ngCode}'">
			<div class="caption">
			<div>
				<div class="starRev">
					
				</div>
				<div>
					<c:if test="${AllGroup.grStarAvg eq 0}">
           				<c:forEach begin="0" end="4">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
           			<c:if test="${AllGroup.grStarAvg ne 0}">
           				<c:forEach begin="1" end="${AllGroup.grStarAvg/1}">
           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           				<c:if test="${AllGroup.grStarAvg%1 ne 0}">
           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:if>
           				<c:forEach begin="1" end="${5 - AllGroup.grStarAvg/1}">
           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
           				</c:forEach>
           			</c:if>
					<span style="color: gray;">&nbsp;&nbsp;${AllGroup.grStarAvg } 
						<span style="font-size: 10pt; color: gray;">/ ${AllGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
					</span>
				</div>
			</div>
			<br>
			<div>
				<span style="font-size: 12px;">${AllGroup.grCount }회차</span>
				<div>
					<div class="name" onclick="location.href='groupdetail.action?ngCode=${AllGroup.ngCode}'">
					<h5>${AllGroup.grName }</h5>
					<input type="hidden" value="${AllGroup.ngCode }">
					</div>
					<div class="heart" align="right">
               	   		 <i class="far fa-heart heartIcon" id="groupHeart${AllGroup.ngCode}" style="color: red;" onclick="sendNgCode(${AllGroup.ngCode})"></i>
            	 	</div>
					<br>
				</div>
				<h6 style="text-align: right; font-size: 13px;">${AllGroup.memName }</h6>
			</div>
			
			</div>
			</div><!-- end div.thumbnail -->
			<%-- <div>ngCode = ${AllGroup.ngCode}</div> --%>
		</div>
		</c:forEach>
	</div><!-- end div.row -->
</div>
<div>
   <c:import url="footer.jsp"></c:import>
</div>

	<!-- 로그인 모달창 -->
	<div class="modal modal-center fade loginNeed" id="loginNeed"
		tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
		<div class="modal-dialog modal-80size modal-center" role="document">
			<div class="modal-content modal-80size">
				<div class="modal-header">
					<span style="font-size: 15pt; font-weight: bold;">※ 로그인 경고 ※</span>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body center-block">
					<p class="text-center">로그인이 필요한 서비스입니다.</p>
					<div class="">
						<a href="login.action"><button type="button" class="btn_1">로그인</button></a>
						<button type="button" class="btn_1" data-dismiss="modal">닫기</button>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

</body>
</html>