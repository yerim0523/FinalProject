<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>testest.jsp</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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


</head>
<body>

	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
	
	<section class="course_details_area section_padding" style="padding-bottom: 0;">
		<div>
			<c:import url="MeetingBar.jsp"></c:import>
		</div>

	<!-- 
		<div class="container">
			<div class="row">
				<div class="col-lg-8 course_details_left">
					<div class="main_image">
						<img class="img-fluid" src="images/ma.jpg"
							style="width: 1000px; height: 400px;">
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
							When you enter into any new area of science, you almost always
							find yourself with a baffling new language of technical terms to
							learn before you can converse with the experts. This is certainly
							true in astronomy both in terms of terms that refer to the cosmos
							and terms that describe the tools of the trade, the most
							prevalent being the telescope. <br> <br> Lorem ipsum
							dolor sit amet, consectetur adipisicing elit, sed do eiusmod
							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut
							aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>

						<h4 class="title" id="note">유의사항</h4>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>

						<h4 class="title" id="host">호스트소개</h4>
						<div class="row">
							<div class="col-md-2" align="left">
								<span class="page" style="font-size: 15pt;">프로필</span>
							</div>
							<div class="col-md-10">
								<div>
									<br> <br>
									<div class="d-flex justify-content-center h-100">
										<div class="image_outer_container">
											<div class="green_icon"></div>
											<div class="image_inner_container">
												<img src="images/ma.jpg" class="rounded-circle" style="width: 150px; height: 200px; margin-right: 100px;">
											</div>
										</div>
										<div>
											<input type="text" value="닉네임"> <br> <br>
											<textarea rows="3" cols="50">자기소개</textarea>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div>
							<div class="left">
								<h4 class="title" id="after">후기</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="bang">방명록</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="refund">환불정책</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

					</div>
				</div>

				<div class="col-lg-4 right-contents">
					<div class="sidebar_top">
						<ul>
							<li><a class="justify-content-between d-flex"> <span
									class="color" style="text-align: left;">전시 | 카페</span> <span
									class="color" style="text-align: right;">5회차</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>모임명</p> <span class="color">맥주모임</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>가격</p> <span>$230</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>인원수</p> <span>15</span>
							</a></li>
							<li><a class="justify-content-between d-flex">
									<p>모임날짜 및 시간</p> <span>2.00 pm to 4.00 pm</span>
							</a></li>

						</ul>
						<a class="btn4" href="Pay.jsp" style="margin-left: 30px;">모임신청하기(결제)</a>
					</div>

					<br>
					<br>

					<div class="sidebar_top">
						<div align="center">
							<a> <span>모임원</span>
							</a>
							<hr>
						</div>
						<div align="left">
							<img src="images/me.png" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 백호진
						</div>
						<br>
						<div align="left">
							<img src="images/iu.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 박지혜
						</div>
						<br>
						<div align="left">
							<img src="images/iu2.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 이예림
						</div>
						<br>
						<div align="left">
							<img src="images/ma.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 이성조
						</div>
						<br>
						<div align="left">
							<img src="images/gd.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 정민하
						</div>
					</div>
				</div>
			</div>
		</div>
	 -->
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
						<div class="row">
							<div class="col-md-2" align="left">
								<span class="page" style="font-size: 15pt;">프로필</span>
							</div>
							<div class="col-md-10">
								<div>
									<br> <br>
									<div class="d-flex justify-content-center h-100">
										<div class="image_outer_container">
											<div class="green_icon"></div>
											<div class="image_inner_container">
												<img src="${grcontent.memPic }" class="rounded-circle" style="width: 150px; height: 200px; margin-right: 100px;">
											</div>
										</div>
										<div>
											<input type="text" value="${grcontent.memName }" readonly="readonly"> <br> <br>
											<textarea rows="3" cols="50" readonly="readonly">${grcontent.memIntro }</textarea>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div>
							<div class="left">
								<h4 class="title" id="after">후기</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="bang">방명록</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

						<div>
							<div class="left">
								<h4 class="title" id="refund">환불정책</h4>
							</div>
						</div>
						<div class="content">
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. <br> <br>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
							enim ad minim veniam, quis nostrud exercitation ullamco laboris
							nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in
							reprehenderit in voluptate velit esse cillum. Lorem ipsum dolor
							sit amet, consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua. Ut enim ad minim
							veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
							ex ea commodo consequat. Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum.
						</div>
						<div align="right">
							<a class="btn4" href="#"> 더보기</a>
						</div>

					</div>
				</div>

				<div class="col-lg-4 right-contents">
					<div class="sidebar_top">
						<ul>
							<li><a class="justify-content-between d-flex"> 
							<span class="color" style="text-align: left;">${grcontent.grCate1Name }
							<c:if test="${grcontent.grCate2Name != null }">
							 | ${grcontent.grCate2Name }</c:if> 
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
						<a class="btn4" href="Pay.jsp" style="margin-left: 30px;">모임신청하기(결제)</a>
					</div>

					<br>
					<br>

					<div class="sidebar_top">
						<div align="center">
							<a> <span>모임원</span>
							</a>
							<hr>
						</div>
						<div align="left">
							<img src="images/me.png" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 백호진
						</div>
						<br>
						<div align="left">
							<img src="images/iu.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 박지혜
						</div>
						<br>
						<div align="left">
							<img src="images/iu2.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 이예림
						</div>
						<br>
						<div align="left">
							<img src="images/ma.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 이성조
						</div>
						<br>
						<div align="left">
							<img src="images/gd.jpg" class="rounded-circle"
								style="width: 50px; height: 50px;"> &nbsp;&nbsp;&nbsp; 정민하
						</div>
					</div>
				</div>
			</div>
		</div>
	 </c:forEach>
	 
	 </section>
	 
	 
	 
	 
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>
	
</body>
</html>
