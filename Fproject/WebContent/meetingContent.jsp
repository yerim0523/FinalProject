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

<style>
*, ::after, ::before {
	box-sizing: border-box;
}

.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}
/* @media all and (min-width:576px) */
.container {
	max-width: 540px;
}
/* @media all and (min-width:768px) */
.container {
	max-width: 720px;
}
/* @media all and (min-width:992px) */
.container {
	max-width: 960px;
}
/* @media all and (min-width:1200px) */
.container {
	max-width: 1140px;
}
/* @media only screen and (max-width:3640px) and (min-width:1200px) */
.container {
	max-width: 1170px;
}

article, aside, figcaption, figure, footer, header, hgroup, main, nav,
	section {
	display: block;
}

.section_padding {
	padding: 140px 0px;
}

body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: left;
	background-color: #fff;
}

body {
	font-family: "Roboto", sans-serif;
	padding: 0;
	margin: 0;
	font-size: 14px;
}

html {
	font-family: sans-serif;
	line-height: 1.15;
	-webkit-text-size-adjust: 100%;
	-webkit-tap-highlight-color: transparent;
}

:root { -
	-blue: #007bff; -
	-indigo: #6610f2; -
	-purple: #6f42c1; -
	-pink: #e83e8c; -
	-red: #dc3545; -
	-orange: #fd7e14; -
	-yellow: #ffc107; -
	-green: #28a745; -
	-teal: #20c997; -
	-cyan: #17a2b8; -
	-white: #fff; -
	-gray: #6c757d; -
	-gray-dark: #343a40; -
	-primary: #007bff; -
	-secondary: #6c757d; -
	-success: #28a745; -
	-info: #17a2b8; -
	-warning: #ffc107; -
	-danger: #dc3545; -
	-light: #f8f9fa; -
	-dark: #343a40; -
	-breakpoint-xs: 0; -
	-breakpoint-sm: 576px; -
	-breakpoint-md: 768px; -
	-breakpoint-lg: 992px; -
	-breakpoint-xl: 1200px; -
	-font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI",
		Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif,
		"Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol",
		"Noto Color Emoji"; -
	-font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas,
		"Liberation Mono", "Courier New", monospace;
}

.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5,
	.col-6, .col-7, .col-8, .col-9, .col-auto, .col-lg, .col-lg-1,
	.col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4,
	.col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto,
	.col-md, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2,
	.col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8,
	.col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11,
	.col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6,
	.col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1,
	.col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4,
	.col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-auto {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}
/* @media all and (min-width:992px) */
.col-lg-8 {
	-ms-flex: 0 0 66.666667%;
	flex: 0 0 66.666667%;
	max-width: 66.66%;
}
/* @media all and (min-width:992px) */
.col-lg-4 {
	-ms-flex: 0 0 33.333333%;
	flex: 0 0 33.333333%;
	max-width: 33.33%;
}

.right-contents .sidebar_top {
	padding: 40px 30px;
	border: 1px solid #edeff2;
}

h1, h2, h3, h4, h5, h6 {
	margin-top: 0px;
	margin-bottom: 0.5rem;
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
	margin-bottom: 0.5rem;
	font-weight: 500;
	line-height: 1.2;
}

.h4, h4 {
	font-size: 1.5rem;
}

.h5, h5 {
	font-size: 1.25rem;
}

.h6, h6 {
	font-size: 1rem;
}

h1, h2, h3, h4, h5, h6 {
	color: #0c2e60;
	font-family: "Poppins", sans-serif;
}

h4 {
	font-size: 18px;
}

h5 {
	font-size: 18px;
	line-height: 22px;
}

h5 {
	font-size: 16px;
}

h6 {
	font-size: 14px;
}

h1, h2, h3, h4, h5, h6 {
	line-height: 1.2em;
}

.course_details_area .title {
	font-size: 22px;
	font-weight: 600;
	border: none;
	cursor: pointer;
	margin-top: 40px;
	position: relative;
	padding-bottom: 10px;
	margin-bottom: 13px;
	border-top: 1px solid #edeff2;
	padding-top: 30px;
}

.right-contents .feedeback {
	margin-top: 30px;
}

.comments-area {
	background: transparent;
	border-top: 1px solid #eee;
	padding: 45px 0;
	margin-top: 50px;
}

.mb-30 {
	margin-bottom: 30px;
}

.right-contents .comments-area {
	padding: 0;
	border: 0;
	background: transparent;
}

.comments-area .comment-list {
	padding-bottom: 48px;
}

.comments-area :last-child.comment-list {
	padding-bottom: 0px;
}

a {
	color: #007bff;
	text-decoration: none;
	background-color: transparent;
}

a {
	text-decoration: none;
	-webkit-transition: 0.5s;
	transition: 0.5s;
}

.d-flex {
	display: -ms-flexbox !important;
	display: flex !important;
}

.flex-row {
	-ms-flex-direction: row !important;
	flex-direction: row !important;
}

.justify-content-between {
	-ms-flex-pack: justify !important;
	justify-content: space-between !important;
}

.comments-area .thumb {
	margin-right: 20px;
}

.comments-area h5 {
	font-size: 16px;
	margin-bottom: 0px;
}

.right-contents .single-reviews h5 {
	display: inline-flex;
}

p {
	margin-top: 0px;
	margin-bottom: 1rem;
}

p {
	color: #666666;
	font-family: "Roboto", sans-serif;
	line-height: 1.929;
	font-size: 14px;
	margin-bottom: 0px;
	color: #888888;
}

.desc p {
	font-size: 12px !important;
}

.comments-area .comment {
	margin-bottom: 10px;
	color: #777777;
	font-size: 15px;
}

img {
	vertical-align: middle;
	border-style: none;
}

img {
	max-width: 100%;
}

.desc h5 a {
	color: #0c2e60;
}

.comments-area .thumb img {
	width: 70px;
	border-radius: 50%;
}

.comments-area .thumb img {
	width: 100px !important;
	border-radius: 0;
}

.feedeback h6 {
	margin-bottom: 16px;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

textarea {
	overflow: auto;
	resize: vertical;
}

.form-control {
	display: block;
	width: 100%;
	height: calc(1.5em + 2px + 0.75rem);
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

textarea.form-control {
	height: auto;
}

.right-contents .feedeback textarea {
	resize: none;
	height: 130px;
	border: 1px solid #edeff2;
	border-radius: 0px;
}

.text-right {
	text-align: right !important;
}

.mt-10 {
	margin-top: 10px;
}

.d-block {
	display: block !important;
}
/* 
.btn_1, .btn_2:hover, .main_menu .navbar-toggler::after, .banner_part .banner_text .btn_1,
	.feature_part .single_feature:hover span {
	background-image: linear-gradient(to left, rgb(238, 57, 15) 0%,
		rgb(249, 183, 0) 51%, rgb(238, 57, 15) 100%);
}
 */
 /* 
.btn_1 {
	display: inline-block;
	padding: 13.5px 45px;
	border-radius: 50px;
	font-size: 14px;
	color: #fff;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	text-transform: capitalize;
	background-size: 200% auto;
	border: 1px solid transparent;
}

.feedeback .btn_1 {
	padding: 5px 19px;
	margin-top: 20px;
}
 */
/* @media all and (min-width:992px) */
.col-lg-12 {
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	max-width: 100%;
}

.review-top h6 {
	color: #ee3f0e;
	font-size: 15px;
	margin-bottom: 21px;
	margin-top: 7px;
}

.right-contents .reviews span, .right-contents .reviews .star {
	width: 31%;
	margin-bottom: 10px;
	color: #888888;
	font-size: 15px;
}

dl, ol, ul {
	margin-top: 0px;
	margin-bottom: 1rem;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
/* 
.right-contents .sidebar_top .btn_1 {
	text-align: center;
	margin-top: 20px;
}
 */
.right-contents .sidebar_top ul li {
	list-style: none;
	padding: 10px 0px;
	margin-bottom: 10px;
	border-bottom: 1px solid #edeff2;
}

.right-contents .sidebar_top ul li:last-child {
	border-bottom: 0px solid #edeff2;
}

.right-contents .sidebar_top ul li a {
	text-align: left;
}

.right-contents .sidebar_top ul li a p {
	margin-bottom: 0px;
}

.right-contents .sidebar_top span {
	color: #888888;
}

.right-contents .sidebar_top .color {
	color: #0c2e60;
	font-size: 15px;
}

.course_details_area .title_top {
	margin-top: 60px;
	font-size: 22px;
	font-weight: 600;
	margin-bottom: 13px;
}

.course_details_left .content {
	color: #888888;
	line-height: 1.929;
}

.course_details_left .course_list {
	margin-bottom: 0px;
}

.align-items-center {
	-ms-flex-align: center !important;
	align-items: center !important;
}

.course_details_left .course_list li {
	list-style: none;
	margin-bottom: 20px;
}

.course_details_left .course_list li:last-child {
	margin-bottom: 0px;
}

.text-uppercase {
	text-transform: uppercase !important;
}

.btn_2 {
	display: inline-block;
	padding: 13px 39px;
	border-radius: 50px;
	background-color: transparent;
	border: 1px solid #0c2e60;
	color: #0c2e60;
	font-size: 14px;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	text-transform: capitalize;
	background-size: 200% auto;
	font-size: 15px;
	font-weight: 500;
}

.course_details_area .btn_2 {
	padding: 5px 19px;
	font-size: 14px;
	text-transform: capitalize !important;
	border: 1px solid #edeff2;
}

.img-fluid {
	max-width: 100%;
	height: auto;
}

.left {
	width: 50%;
	box-sizing: content-box;
	text-align: left;
}

img {
	max-width: 100%;
	height: auto;
}
</style>

</head>
<body>

	<div>
		<c:import url="bar.jsp"></c:import>
	</div>

	<section class="course_details_area section_padding">
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
						<a class="btn4" href="Pay.jsp">모임신청하기(결제)</a>
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
	</section>
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>
	
</body>
</html>
