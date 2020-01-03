<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
   
   
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>testest.jsp</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/member.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/meetingContent.css">

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
	
	.review
	{
	  border: 1px solid gray;
	  border-radius: 30px;
	  padding: 20px;
	  margin: 10px;
	  align-self: center;
	  width: 720px;
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
	<form action="" method="post">
	 <c:forEach var="grcontent" items="${groupContent }">
	 <div class="container">
			<div class="row">
				<div class="col-lg-8 course_details_left">
					<div class="main_image">
						<img class="img-fluid" src=${grcontent.ngPic }
							style="width: 700px; height: 400px;">
					</div>

					<br>
					<br>
					<div align="center">
						<a href="#introduce">모임소개</a> | <a href="#note">유의사항</a> | <a
							href="#host">호스트소개</a> | <a href="#after">후기</a> | <a
							href="#bang">방명록</a> | <a href="#refund">환불정책</a>
					</div>

					<div class="content_wrapper">
						<h4 class="title_top" id="introduce">모임소개</h4>
						<div class="content">
							${grcontent.ngIntro }
						</div>

						<h4 class="title" id="note">유의사항</h4>
						<div class="content">
							${grcontent.grNotice }
						</div>

						<h4 class="title" id="host">호스트소개</h4>
							<div class="content">
								<span class="page" style="font-size: 15pt;">프로필</span>
								<br> <br>
									<div class="d-flex justify-content-center h-100">
										<div class="image_outer_container">
											<div class="green_icon"></div>
											<div class="image_inner_container">
												<img src="${grcontent.memPic }" class="rounded-circle" style="width: 150px; height: 200px; margin-right: 50px;">
											</div>
										</div>
										<div>
											<input type="text" value="${grcontent.memName }" readonly="readonly"> <br> <br>
											<textarea rows="3" cols="50" readonly="readonly">${grcontent.memIntro }</textarea>
										</div>
									</div>
							</div>
						<div>
							<div class="left">
								<h4 class="title" id="after">후기</h4>
							</div>
						</div>
						<%-- 
						<div class="content">
							<table class="table table-bordered">
								<c:forEach var="review" items="${contentReview }">
									<tr>
										<td>
											<img src="images/me.png" class="rounded-circle"	style="width: 50px; height: 50px;">&nbsp;&nbsp;
											${review.memName }
										</td>
										<td>
											${review.reviewCont }
										</td>
										<td>
											${review.reviewStar }
										</td>
										<td>
											${review.reviewDate }
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						 --%>
						<c:forEach var="review" items="${contentReview }">
						<div class="review" align="left">
							<div align="left">
								<img src="${review.memPic }" class="rounded-circle"	style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 
								<a class="name">${review.memName }</a>&nbsp;&nbsp;&nbsp;<span style="font-size: 9pt;">${review.reviewDate }</span>
								<div style="float: right;">
									<img src="<%=cp%>/images/siren.png"	style="width: 30px; height: 30px;">
								</div>
								<div class="col-12 p-0 d-flex align-items-center justify-content-end">
									<div class="d-flex align-items-center groupCnt">
										${review.reviewStar }&nbsp;
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
								<div style="margin-bottom: 30px; padding-left: 20px;">
								<span>${review.reviewCont }</span>
								</div>
							</div>
						</div>
						</c:forEach>
						
							<div align="right">
							<a class="btn4" href="reviewmeeting.action?ngCode=${grcontent.ngCode }"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="bang">방명록</h4>
							</div>
						</div>
						<c:forEach var="board" items="${contentGBoard }">
						<div class="review" align="left">
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
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="refund">환불정책</h4>
							</div>
						</div>
						<div class="content">
							<span>
									환불은 모임시작전에 참가취소를 하시면 100% 환불이 가능합니다.<br>
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
									<p>모임명</p> <span class="color">${grcontent.grName }</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>가격</p> <span>${grcontent.ngCost }원</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>최소인원수</p> <span>${grcontent.ngMin }명</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>최대인원수</p> <span>${grcontent.ngMax }명</span>
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
						<c:forEach var="member" items="${contentMember }">
						<div align="left">
							<img src="${member.memPic }" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; ${member.memName }
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
	
</body>
</html>
