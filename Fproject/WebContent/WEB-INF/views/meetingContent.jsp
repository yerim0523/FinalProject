<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>testest.jsp</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/button.css">


    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- swiper js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <!-- custom js -->
<script src="https://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">
.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: right;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: right;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}

.review {
	border: 1px solid gray;
	border-radius: 30px;
	padding: 20px;
	margin: 10px;
	align-self: center;
	width: 720px;
}

.review p, .balloon p {
	font-weight: bold;
	font-size: 11pt;
	color: #333333;
}

.review a, .balloon a {
	font-weight: bold;
	font-size: 13pt;
	color: #333333;
}

.board, .review {
	display: none;
}

.bookmarkbar a {
	letter-spacing: 1px;
	color: gray;
	font-family: 맑은고딕;
	font-weight: bold;
	font-size: 17px;
}

.siren {
	border: 0px;
	background-color: white;
	padding: 0px;
}

.modal-dialog.modal-80size {
  width: 80%;
  height: 80%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  height: auto;
  min-height: 80%;
}

.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) { 
  .modal.modal-center:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle; 
}

.reporttext
{
	height: calc(1.5em + .75rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
    font-weight: 400;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}


</style>

<script type="text/javascript">

	$(function()
	{
		$(".board").slice(0, 1).show(); // 최초 1개 선택

		if ($(".board:hidden").length == 0)
		{ // 숨겨진 DIV가 있는지 체크
			$("#load").css("display", "none");
			$(".addTo")
					.prepend(
							"<p style='font-size: 15px;'><i class='fas fa-thumbtack'></i>&nbsp;&nbsp;&nbsp;표시할 방명록이 존재하지 않습니다.</p>");
		}

		$(".review").slice(0, 1).show(); // 최초 1개 선택

		if ($(".review:hidden").length == 0)
		{ // 숨겨진 DIV가 있는지 체크
			$(".addReview")
					.prepend(
							"<p style='font-size: 15px;'><i class='fas fa-thumbtack'></i>&nbsp;&nbsp;&nbsp;표시할 후기가 존재하지 않습니다.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;후기를 작성하시려면 아래 버튼을 눌러주세요~!</p>");
		}

		$("#load").click(function(e)
		{ // Load More를 위한 클릭 이벤트e
			e.preventDefault();
			$(".board:hidden").slice(0, 1).show(); // 숨김 설정된 다음 1개를 선택하여 표시
			if ($(".board:hidden").length == 0)
			{ // 숨겨진 DIV가 있는지 체크
				$("#load").css("display", "none");
			}
		});
	});
	
	
	function report()
	{
		var memId = document.getElementById("reportId").value;
		var reviewNum = document.getElementById("reviewNum1").value;
		
		document.getElementById("memId").value = memId;
		document.getElementById("reviewNum").value = reviewNum;
	}
	
	function reviewReport()
	{
		f = document.reviewForm;
		
		var repCateSel = document.getElementById("repCateSel");
		//alert(repCateSel.options[repCateSel.selectedIndex].value);
		var cateVal = repCateSel.options[repCateSel.selectedIndex].value;
		
		if(cateVal == 0)
		{
			alert("신고 사유를 선택해주세요.");
		}
		
		if(cateVal == 1 || cateVal == 2 || cateVal == 3 || cateVal == 4)
		{
			document.getElementById("repCate").value = cateVal;
			f.submit();
		}
		
		
		
		
	}
	
	
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
	<form action="" method="post">
	 <c:forEach var="grcontent" items="${groupContent }">
	 <div class="container">
			<div class="row">
				<div class="col-lg-8 course_details_left">
					<div class="main_image">
						<img class="img-fluid" src="uploads/${grcontent.ngPic }"
							style="width: 100%; height: 400px;">
						<input type="hidden" name="grCode" value="${grcontent.grCode }">
						<br>
						<div class="d-flex justify-content-between" style="margin-top: 5px;">
							<div>
								<i class="fas fa-heart heartIcon" style="color: red;"></i>
								&nbsp;${jjimCount }
								&nbsp;&nbsp;
	           					<i class="fas fa-share-alt" style="font-size: 20px; color: gray;"></i>
	           				</div>
							<div>
								<c:if test="${grcontent.grStarAvg eq 0}">
			           				<c:forEach begin="0" end="4">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>
			           			<c:if test="${grcontent.grStarAvg ne 0}">
			           				<c:forEach begin="1" end="${grcontent.grStarAvg/1}">
			           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           				<c:if test="${grcontent.grStarAvg%1 ne 0}">
			           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:if>
			           				<c:forEach begin="1" end="${5 - grcontent.grStarAvg/1}">
			           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
			           				</c:forEach>
			           			</c:if>&nbsp;
	           					<span>${grcontent.grStarAvg } / ${grcontent.grStarCount } 명</span>
	           				</div>
	           			</div>
					</div>

					<br>
					<div align="center" class="bookmarkbar">
						<a>|</a>&nbsp;&nbsp;<a href="#introduce">모임소개</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;
						<a href="#note">유의사항</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;
						<a href="#host">호스트소개</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;
						<a href="#after">후기</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;
						<a href="#bang">방명록</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;<a href="#refund">환불정책</a>&nbsp;&nbsp;<a>|</a>
					</div>

					<div class="content_wrapper">
						<h4 class="title_top" id="introduce">모임소개</h4>
						<br>
						<div class="content">
							${grcontent.ngIntro }
						</div>

						<h4 class="title" id="note">유의사항</h4>
						<br>
						<div class="content">
							${grcontent.grNotice }
						</div>

						<h4 class="title" id="host">호스트소개</h4>
						<br>
							<div class="content">
							<br>
									<div class="d-flex justify-content-center h-100">
										<div class="image_outer_container">
											<div class="image_inner_container">
												<img src="uploads/${grcontent.memPic }" class="rounded-circle" style="vertical-align: middle; width: 150px; height: 150px; margin-right: 50px;">
											</div>
										</div>
										<div style="border: 1px solid lightgray; border-radius: 30px; width: 450px;">
											<div style="margin:20px; ">
												<span style="font-size: 20px; font-weight: bold;">${grcontent.memName }</span> 
											</div>
											<div style="margin:20px; ">
												${grcontent.memIntro }<br>
											</div>
										</div>
									</div>
							</div>
						<div>
							<div class="left">
								<h4 class="title" id="after">후기</h4>
							</div>
							<br>
						</div>
						<c:forEach var="review" items="${contentReview }">
						<div class="review" align="left">
							<div align="left">
								<img src="${review.memPic }" class="rounded-circle"	style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
								<a class="name">${review.memName }</a>&nbsp;&nbsp;&nbsp;<span style="font-size: 9pt;">${review.reviewDate }</span>
								<div style="float: right;">
									<button type="button" class="siren" data-toggle="modal" data-target="#myModal" onclick="report()">
										<img src="<%=cp%>/images/siren.png"	style="width: 30px; height: 30px;">									
									</button>
									<input type="hidden" name="reportId" id="reportId" value="${review.memId }">
									<input type="hidden" name="reviewNum1" id="reviewNum1" value="${review.reviewNum }">
								</div>
								<div class="col-12 p-0 d-flex align-items-center justify-content-end">
									<div class="d-flex align-items-center groupCnt">
										${review.reviewStar }&nbsp;
									</div>
									<div class="starRev">
										<c:if test="${review.reviewStar eq 0}">
					           				<c:forEach begin="0" end="4">
					           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					           				</c:forEach>
					           			</c:if>
					           			<c:if test="${review.reviewStar ne 0}">
					           				<c:forEach begin="1" end="${review.reviewStar/1}">
					           					<i class="fas fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					           				</c:forEach>
					           				<c:if test="${review.reviewStar%1 ne 0}">
					           					<i class="fas fa-star-half-alt" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					           				</c:if>
					           				<c:forEach begin="1" end="${5 - review.reviewStar/1}">
					           					<i class="far fa-star" style="width: 20px; color: #FAE415; font-size: 20px;"></i>
					           				</c:forEach>
					           			</c:if>
									</div>
								</div>
								<br><br>
								<div style="margin-bottom: 30px; padding-left: 20px;">
								<span>${review.reviewCont }</span>
								</div>
							</div>
						</div>
						</c:forEach>
						
							<div class="addReview">
							<a class="btn4" href="reviewmeeting.action?grCode=${grcontent.grCode }"  style="color:white; width: 100%; height: 50px; text-align: center;">후기 작성하기 / 전체 후기 보러가기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="bang">방명록</h4>
							</div>
							<br>
						</div>
						<c:forEach var="board" items="${contentGBoard }">
						<div class="board review" id="board" align="left">
							<div align="left">
								<img src="${board.memPic }" class="rounded-circle"	style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
								<a class="name">${board.memName }</a>&nbsp;&nbsp;&nbsp;<span style="font-size: 9pt;">${board.boardDate }</span>
								<div style="float: right;">
									<img src="<%=cp%>/images/siren.png"	style="width: 30px; height: 30px;">
								</div>
								<br><br>
								<div style="margin-bottom: 30px; padding-left: 20px;">
								<span>${board.boardCont }</span>
								</div>
							</div>
						</div>
						</c:forEach>
						<div class="addTo">
							<a class="btn4" id="load" style="width: 100%; height: 50px; text-align: center;">더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="refund">환불정책</h4>
							</div>
							<br>
						</div>
						<div class="content">
							<span>
									환불은 결제 마감일 전에 참가취소를 하시면 100% 환불이 가능합니다.<br>
									그 이후로는 환불이 불가능하니 신중하게 생각해주세요!
							</span>
						</div>
						<!-- 
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>
						 -->
					</div>
				</div>

				<div class="col-lg-4 right-contents">
					<div class="sidebar_top">
						<ul>
							<li><a class="justify-content-between d-flex"> 
							<span class="color" style="text-align: left;">[ ${grcontent.grCate1Name }
							<c:if test="${grcontent.grCate2Name != null }">
							 | ${grcontent.grCate2Name }</c:if> ] 
							 </span>
							<span class="color" style="text-align: right;">${grcontent.grCount }회차</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>모임명</p> <span class="color" style="font-weight: bold;">${grcontent.grName }</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>가격</p> <span><fmt:formatNumber value="${grcontent.ngCost }" pattern="#,###,###"/>원</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>최소인원수</p> <span>${grcontent.ngMin }명</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>인원수<span style="font-size: 13pt;"><p>(최소인원 : ${grcontent.ngMin }명)</p></span></p>
									<span>${joinMemberCnt.memCount } / ${grcontent.ngMax }명</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>모임날짜</p> <span>${grcontent.ngStart }<br> ~ ${grcontent.ngEnd }</span>
							</a></li>

						</ul>
						<a class="btn4" href="pay.action" style="margin-left: 30px;">모임신청하기(결제)</a>
					</div> 

					<br>
					<br>

					<div class="sidebar_top">
						<div align="center">
							<a> <span>모임원</span>
							</a>
							<hr>
						</div>
						<c:forEach var="joinMem" items="${joinMember }">
						
						<div align="left">
							<img src="uploads/${joinMem.memPic }" class="rounded-circle"
								style="object-fit:cover; width: 50px; height: 50px; cursor: pointer;" onclick="location.href='profile.action?memId=${joinMem.memId}'">
								 &nbsp;&nbsp;&nbsp; 
							<span style="cursor: pointer; color: black;" onclick="location.href='profile.action?memId=${joinMem.memId}'">${joinMem.memName }</span>
						</div>
						<br>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	 </c:forEach>
	 </form>
	 </section>
	 
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>

	<!-- Modal -->
	<div class="modal modal-center fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-80size modal-center" role="document">
			<form action="reviewInsert.action" method="post" name="reviewForm">
			<div class="modal-content modal-80size">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">후기 신고</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					신고 ID : <input type="text" class="reporttext" id="memId" name="memId" value="" readonly="readonly"><br><br>
					<input type="hidden" id="reviewNum" name="reviewNum" value="">
					신고 사유 :
					<select id="repCateSel" name="repCateSel" class="reporttext" style="width: 300px;">
						<option id="repCateSel" value="0">선택</option>
						<option id="repCateSel" value="1">욕설</option>
						<option id="repCateSel" value="2">광고</option>
						<option id="repCateSel" value="3">타인비하</option>
						<option id="repCateSel" value="4">기타</option>
					</select>
					<input type="hidden" id="repCate" name="repCate" value="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn4" onclick="reviewReport()">신고</button> 
					<button type="button" class="btn4" data-dismiss="modal">닫기</button>
				</div>
			</div>
			</form>
		</div>
	</div>



</body>
</html>
