<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer.jsp</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/Footer.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>



</head>
<body>

	<footer style="bottom: 0px; left: 0px; right: 0px;">
		<div class="sc-container" id="container">
			<div id="containerDiv">
				<p class="sc-normal">
					<span class="sc-bold">상호명</span>&nbsp;ToLeisure
				</p>
				<hr>
				<div id="secondContentDiv">
					<div id="firstCol">
						<p class="sc-normal">
							<span class="sc-bold">대표</span>&nbsp;이성조
						</p>
						<p class="sc-normal">
							<span class="sc-bold">개인정보관리책임자</span>&nbsp;이성조
						</p>
						<p class="sc-normal">
							<span class="sc-bold">전화</span>&nbsp;02-000-0000
						</p>
						<p class="sc-normal">
							<span class="sc-bold">이메일</span>&nbsp;lee0528kr@naver.com
						</p>
					</div>
					<div id="secondCol">
						<p class="sc-normal">
							<span class="sc-bold">주소</span>&nbsp;서울특별시 마포구 서교동
						</p>
						<p class="sc-normal">
							<span class="sc-bold">사업자등록번호</span>&nbsp;000-00-00000
						</p>
						<p class="sc-normal">
							<span class="sc-bold">통신판매</span>&nbsp;제2018-서울 강남-00243호
						</p>
						<p class="sc-normal">
							<span class="sc-bold">민원 담당자 연락처</span>&nbsp;010-0000-0000
						</p>
					</div>
				</div>
				<div id="lastContentDiv">
					<!-- <p class="sc-normal">상품에 대하여 배송 교환 반품 민원 AS등 은 2교시에서 처리하여 모든
						책임은 2교시에 있습니다.</p> -->
					<p class="sc-normal">Copyright © 2019 LEE All rights
						reserved</p>
				</div>
			</div>
		</div>
	</footer>



</body>
</html>