<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>

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

<style type="text/css">
.img-responsive {
	height: 200px;
	width: 500px;
}

button.more {
	float: right;
	width: 120px;
	height: 35px;
	padding-left: 0px;
	padding-right: 0px;
	padding-bottom: 30px;
}

.left {
	width: 50%;
	float: left;
	margin-top: 20px;
}

.right {
	width: 50%;
	float: right;
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
			/* alert($("#sessionInfo").val());
			alert($("#empNgCode").val()); */
			
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
	                    	
	                    	if (!isNaN(ngCode))
							{
	                    		location = "meetfavoritedelete.action?memId="+memId+"&ngCode="+ngCode;
							}
	                    	/* 
	                    	else if (isNaN(ngCode)) 
	                    	{
	                    		location = "hostfavoritedelete.action?memId="+memId+"&ngCode="+ngCode;
							}
	                    	 */
	                       alert("찜이 해제되었습니다!");
	                       
	                    }else
	                    {
	                    	var memId = $("#sessionInfo").val();
	                    	var ngCode = $("#empNgCode").val();
	                    	
	                    	if (!isNaN(ngCode))
							{
	                    		location = "meetfavoriteinsert.action?memId="+memId+"&ngCode="+ngCode;
							}
	                    	/* 
	                    	else if (isNaN(ngCode)) 
	                    	{
	                    		location = "hostfavoriteinsert.action?memId="+memId+"&ngCode="+ngCode;
							}
	                    	 */
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

	<div>
		<jsp:include page="bar.jsp"></jsp:include>
	</div>
	 
	<div>
		<jsp:include page="TopButton.jsp"></jsp:include>
	</div>

	<section class="course_details_area section_padding"
		style="padding-bottom: 0;">
		<div>
			<jsp:include page="MeetingBar.jsp"></jsp:include>
		</div>
	</section>

	<div class="container">
		<input type="hidden" id="sessionInfo" value="${sessionInfo.memId }">
		<input type="hidden" id="empNgCode">
		
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel" align="center">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" style="cursor: pointer;">
				<div class="carousel-item active">
					<img src="images/iu2.jpg" class="d-block w-100" alt="인기호스트"
						style="height: 500px;" onclick="location.href='groupdetail.action?ngCode=58'">
				</div>
				<div class="carousel-item">
					<img src="images/gd.jpg" class="d-block w-100" alt="인기호스트"
						style="height: 500px;" onclick="location.href='groupdetail.action?ngCode=95'">
				</div>
				<div class="carousel-item">
					<img src="images/ma.jpg" class="d-block w-100" alt="인기호스트"
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
		<br>
		<br>
		<br>
		<div class="left">
			<a href="">인기모임</a>
		</div>
		<div class="right">
			<form action='theme.action'>
				<button type="submit" name="action" value="더보기" class="btn4 more"
					style="float: right;">더보기</button>
			</form>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<c:set var="n" value="0" />
			<c:if test="${empty HotGroupList }">
				<div align="center">
					<br><br>
					<p class="text-center" style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;현재 인기모임이 존재하지 않습니다. <br><br>&nbsp;&nbsp;&nbsp;&nbsp;(※ 인기모임 : 회원들이 찜한 개수에 따라 기준 이상이 되면 표시됩니다.)</p>
					<br><br>
				</div>
			</c:if>
			<c:if test="${!empty HotGroupList }">
			<c:forEach var="HotGroup" items="${HotGroupList}">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="uploads/${HotGroup.ngPic}" alt="썸네일" class="img-responsive" style="width: 500px;"
						onclick="location.href='groupdetail.action?ngCode=${HotGroup.ngCode}'">
					<div class="caption">
						<div>
							<div style="text-align: right;">
								<c:if test="${HotGroup.grStarAvg eq 0}">
			           				<c:forEach begin="0" end="4">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
			           			<c:if test="${HotGroup.grStarAvg ne 0}">
			           				<c:forEach begin="1" end="${HotGroup.grStarAvg/1}">
			           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           				<c:if test="${HotGroup.grStarAvg%1 ne 0}">
			           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:if>
			           				<c:forEach begin="1" end="${5 - HotGroup.grStarAvg/1}">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
								<span style="color: gray;">&nbsp;&nbsp;${HotGroup.grStarAvg } 
									<span style="font-size: 10pt; color: gray;">/ ${HotGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
								</span>
							</div>
						</div>
						<br>
						<div>
							<span style="font-size: 12px;">${HotGroup.grCount }회차|${HotGroup.grCate1Name } ${HotGroup.grCate2Name }</span>
							<div>
								<div class="name" onclick="location.href='groupdetail.action?ngCode=${HotGroup.ngCode}'">
									<h5>${HotGroup.grName }</h5>
								</div>
								<div class="heart" align="right">
					               	  <i class="far fa-heart heartIcon" id="groupHeart${HotGroup.ngCode}" style="color: red;" onclick="sendNgCode(${HotGroup.ngCode})"></i>
		               	 		 </div>
								<br>
							</div>
							<h6 style="text-align: right; font-size: 13px;">${HotGroup.memName}</h6>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			</c:if>
		</div>

		<br> <br> <br>
		<div class="left">
			<a href="">신규모임</a> <br>
		</div>
		<div class="right">
			<form action='newgroup.action'>
				<button type="submit" name="action" value="더보기" class="btn4 more"
					style="float: right;">더보기</button>
			</form>

		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<c:if test="${empty NewGroupList }">
				<div align="center">
					<br><br>
					<p class="text-center" style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;현재 신규모임이 존재하지 않습니다. <br><br>&nbsp;&nbsp;&nbsp;&nbsp;(※ 새로 개설되는 모임이 표시됩니다.)</p>
					<br><br>
				</div>
			</c:if>
			<c:if test="${!empty NewGroupList }">
			<c:forEach var="NewGroup" items="${NewGroupList }">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="uploads/${NewGroup.ngPic}" alt="썸네일" class="img-responsive" style="width: 500px;"
						onclick="location.href='groupdetail.action?ngCode=${NewGroup.ngCode}'">
					<div class="caption">
						<div>
							<div style="text-align: right;">
								<c:if test="${NewGroup.grStarAvg eq 0}">
			           				<c:forEach begin="0" end="4">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
			           			<c:if test="${NewGroup.grStarAvg ne 0}">
			           				<c:forEach begin="1" end="${NewGroup.grStarAvg/1}">
			           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           				<c:if test="${NewGroup.grStarAvg%1 ne 0}">
			           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415;font-size: 20px;"></i>
			           				</c:if>
			           				<c:forEach begin="1" end="${5 - NewGroup.grStarAvg/1}">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
								<span style="color: gray;">&nbsp;&nbsp;${NewGroup.grStarAvg } 
									<span style="font-size: 10pt; color: gray;">/ ${NewGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
								</span>
							</div>
						</div>
						<br>
						<div>
							<span style="font-size: 12px;">${NewGroup.grCount }회차|${NewGroup.grCate1Name } ${NewGroup.grCate2Name }</span>
							<div>
								<div class="name" onclick="location.href='groupdetail.action?ngCode=${NewGroup.ngCode}'">
									<h5>${NewGroup.grName }</h5>
								</div>
								<div class="heart" align="right">
					               	  <i class="far fa-heart heartIcon" id="groupHeart${NewGroup.ngCode}" style="color: red;" onclick="sendNgCode(${NewGroup.ngCode})"></i>
		               	 		</div>
		               	 		<br>
							</div>
							<h6 style="text-align: right; font-size: 13px;">${NewGroup.memName}</h6>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			</c:if>
		</div>
		<br> <br> <br>
		<div class="left">
			<a href="">인기호스트</a> <br>
		</div>

		<div class="right">

			<form action='hothost.action'>
				<button type="submit" name="action" value="더보기" class="btn4 more"
					style="float: right;">더보기</button>
			</form>

		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<c:if test="${empty HotHostList }">
				<div align="center">
					<br><br>
					<p class="text-center" style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;현재 인기 호스트가 존재하지 않습니다. <br><br>&nbsp;&nbsp;&nbsp;&nbsp;(※ 인기호스트 기준은 : )</p>
					<br><br>
				</div>
			</c:if>
			<c:if test="${!empty HotHostList }">
			<c:forEach var="HotHost" items="${HotHostList }">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="uploads/${HotHost.memPic}" alt="썸네일" class="img-rounded"
							style="width: 500px; height: 200px;"
							onclick="location.href='profile.action?memId=${HotHost.memId}'">
						<div class="caption">
							<div>
									<img alt="" src="images/star.png" style="width: 20px;"> <span>
										9.5</span>
								</div>
							</div>
							<br>
							<div>
								<span style="font-size: 12px;">소개글 ${HotHost.memIntro }</span>
								<div>
									<div class="name"
										onclick="location.href='profile.action?memId=${HotHost.memId}'">
										<h5>${HotHost.memName }</h5>
									</div>
									<div class="heart" align="right">
					               	  <i class="far fa-heart heartIcon" id="groupHeart${HotHost.memId}" style="color: red;" onclick="sendNgCode(${HotHost.memId})"></i>
		               	 			</div>
									<br>
								</div>

							</div>

						</div>
					</div>
			</c:forEach>
			</c:if>
		</div>

		<br> <br> <br>
		<div class="left">
			<a href="">마감임박</a> <br>
		</div>
		<div class="right">

			<form action='closing.action'>
				<button type="submit" name="action" value="더보기" class="btn4 more"
					style="float: right;">더보기</button>
			</form>

		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<c:if test="${empty ClosingGroupList }">
				<div align="center">
					<br><br>
					<p class="text-center" style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;현재 마감임박 모임이 존재하지 않습니다. <br><br>&nbsp;&nbsp;&nbsp;&nbsp;(※ 신청 마감이 ¨1주일 전 ~ 하루 전¨ 인 모임이 표시됩니다.)</p>
					<br><br>
				</div>
			</c:if>
			<c:if test="${!empty ClosingGroupList }">
			<c:forEach var="ClosingGroup" items="${ClosingGroupList}">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="uploads/${ClosingGroup.ngPic}" alt="썸네일" class="img-responsive"
							style="width: 500px;"
							onclick="location.href='groupdetail.action?ngCode=${ClosingGroup.ngCode}'">
						<div class="caption">
							<div>
								<div style="text-align: right;">
								<c:if test="${ClosingGroup.grStarAvg eq 0}">
			           				<c:forEach begin="0" end="4">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
			           			<c:if test="${ClosingGroup.grStarAvg ne 0}">
			           				<c:forEach begin="1" end="${ClosingGroup.grStarAvg/1}">
			           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           				<c:if test="${ClosingGroup.grStarAvg%1 ne 0}">
			           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415;font-size: 20px;"></i>
			           				</c:if>
			           				<c:forEach begin="1" end="${5 - ClosingGroup.grStarAvg/1}">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
								<span style="color: gray;">&nbsp;&nbsp;${ClosingGroup.grStarAvg } 
									<span style="font-size: 10pt; color: gray;">/ ${ClosingGroup.grStarCount }<span style="font-size: 8pt;">명</span></span>
								</span>
							</div>
							</div>
							<br>
							<div>
								<span style="font-size: 12px;">${ClosingGroup.grCount }회차|${ClosingGroup.grCate1Name }
									${ClosingGroup.grCate2Name }</span>
								<div>
									<div class="name"
										onclick="location.href='groupdetail.action?ngCode=${ClosingGroup.ngCode}'">
										<h5>${ClosingGroup.grName }</h5>
									</div>
									<div class="heart" align="right">
					               	  <i class="far fa-heart heartIcon" id="groupHeart${ClosingGroup.ngCode}" style="color: red;" onclick="sendNgCode(${ClosingGroup.ngCode})"></i>
		               	 			</div>
									<br>
								</div>
								<h6 style="text-align: right; font-size: 13px;">${ClosingGroup.memName}</h6>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
			</c:if>
		</div>
		<br> <br> <br>
		<div class="left">
			<a href="">추천모임</a> <br>
		</div>
		<div class="right">

			<form action='recommend.action'>
				<button type="submit" name="action" value="더보기" class="btn4 more"
					style="float: right;">더보기</button>
			</form>
		</div>
		<br>
		<br>
		<br>
		<div class="row">
			<c:if test="${empty RecommendGroupList }">
				<div align="center">
					<br><br>
					<p class="text-center" style="font-size: 15px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;현재 회원님의 추천 모임이 존재하지 않습니다. <br><br>&nbsp;&nbsp;&nbsp;&nbsp;(※ 모임을 ¨찜¨ 하시면 그에 맞춰 모임이 표시됩니다.)</p>
					<br><br>
				</div>
			</c:if>
			<c:if test="${!empty RecommendGroupList }">
			<c:forEach var="RecommendGroup" items="${RecommendGroupList}">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="uploads/${RecommendGroup.ngPic}" alt="썸네일"
							class="img-responsive" style="width: 500px;"
							onclick="location.href='groupdetail.action?ngCode=${RecommendGroup.ngCode}'">
						<div class="caption">
							<div>
								<div class="starRev"></div>
								<div>
									<img alt="" src="images/star.png" style="width: 20px;"> <span>
										${RecommendGroup.grStarAvg}</span>
								</div>
							</div>
							<br> 
							<div>
								<span style="font-size: 12px;">${RecommendGroup.grCount }회차|${RecommendGroup.grCate1Name }
									${RecommendGroup.grCate2Name }</span>
								<div>
									<div class="name"
										onclick="location.href='groupdetail.action?ngCode=${RecommendGroup.ngCode}'">
										<h5>${RecommendGroup.grName }</h5>
									</div>
									<div class="heart" align="right">
					               	  <i class="far fa-heart heartIcon" id="groupHeart${RecommendGroup.ngCode}" style="color: red;" onclick="sendNgCode(${RecommendGroup.ngCode})"></i>
		               	 			</div>
									<br>
								</div>
								<h6 style="text-align: right; font-size: 13px;">${RecommendGroup.memName}</h6>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
			</c:if>
		</div>

	</div>

	<div>
		<jsp:include page="footer.jsp"></jsp:include>
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