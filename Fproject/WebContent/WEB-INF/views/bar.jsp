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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>

<link rel="icon" href="img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- font awesome CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet" href="css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/join.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<style type="text/css">
.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

@media ( min-width : 768px) {
	.container {
		width: 750px;
	}
}

@media ( min-width : 992px) {
	.container {
		width: 970px;
	}
}

@media ( min-width : 1200px) {
	.container {
		width: 1170px;
	}
}

.responsiveNavigationMenuImg
{
	list-style: none;
}

.modal-dialog.modal-80size {
  width: 50%;
  height: 50%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  min-height: 40%;
}

.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 500px) {
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

.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

</style>


</head>
<body>

	<header class="main_menu home_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light navigationBar">
						<a class="navbar-brand" href="main.action"> <img
							src="images/reallogo.jpg" alt="logo" class="logoBox">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div
							class="collapse navbar-collapse main-menu-item justify-content-end"
							id="navbarSupportedContent">
							<ul class="navbar-nav align-items-center">
								<li class="nav-item"
									style="margin-right: 30px; margin-top: 15px;">
									<form action="#">
										<div class="form-group">
											<div class="input-group mb-3 nav-item">
												<input type="text" class="form-control"
													style="height: 50px;" placeholder='검색하세요'
													onfocus="this.placeholder = ''"
													onblur="this.placeholder = '검색하세요'">
												<div class="input-group-append">
													<button class="btn btn_1" type="button"
														style="margin-left: 0px;">
														<span style="color: black;"><i
															class="fas fa-search"></i></span>
													</button>
												</div>
											</div>
										</div>
									</form>
								</li>
								<c:if test="${empty sessionScope.member}">
								<li class="nav-item"><a class="nav-link" data-toggle="modal" data-target="#loginNeed">모임개설</a></li>
								</c:if>
								<c:if test="${!empty sessionScope.member}">
                        		<li class="nav-item"><a class="nav-link" href="mygrouplist.action?memId=${member.memId }"> 모임개설 </a></li>
                        		</c:if>
								<li class="nav-item">
                        	<c:if test="${empty sessionScope.member}">
                        	<a class="nav-link" href="join.action">회원가입</a>
                        	</c:if>
                        	<c:if test="${!empty sessionScope.member}">
                        	<a class="nav-link" href="mypage.action?memId=${member.memId }">MyPage</a> 
                        	</c:if>
                        </li>
                        <li class="nav-item"><a class="nav-link"
                           href="center.action">고객센터</a></li>
                        <li class="d-none d-lg-block nav-item">
							<c:if test="${empty sessionScope.member}">
                        	<a class="btn_1" href="login.action" style="color: black;">로그인</a>
                        	</c:if>
                        	<c:if test="${!empty sessionScope.member}">
                        	<a class="btn_1" href="logout.action" style="color: black;">로그아웃</a>
                        	</c:if>
                        </li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

<div class="modal modal-center fade" id="loginNeed" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">※ 로그인 경고 ※</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
			<p class="text-center">로그인이 필요한 서비스입니다.</p>
			<div class="">
				<a href="login.action"><button type="button" class="btn_1" >로그인</button></a>
				<button type="button" class="btn_1" data-dismiss="modal">닫기</button>
			</div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

</body>
</html>