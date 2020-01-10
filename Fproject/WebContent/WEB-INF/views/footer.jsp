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
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<style type="text/css">

footer {
    background-color: #f9f9f9;
    padding: 58px 0 71px;
    height: 299px;
}

#container {
    width: 100%;
    height: 100%;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-pack: center;
    justify-content: center;
}

#containerDiv {
    width: 656px;
    height: 213px;
    position: relative;
}

footer .sc-bold, footer .sc-normal {
    font-family: Nanum Square,sans-serif;
    font-size: 14px;
    line-height: 1.71;
    letter-spacing: -.3px;
    text-align: left;
    color: #707070;
    margin-bottom: 0;
    margin-top: 0;
}

footer .sc-bold {
    font-weight: 700;
}

#secondContentDiv {
    width: 656px;
    height: 88px;
    position: absolute;
}

#firstCol {
    display: inline;
    float: left;
    width: 40%;
    height: 100%;
}

#secondCol {
    display: inline;
    float: left;
    width: 60%;
    height: 100%;
}

#lastContentDiv {
    width: 656px;
    height: 42px;
    position: absolute;
    bottom: 0;
}

#lastContentDiv p {
    text-align: center;
}


</style>

</head>



<body>
	<br><br>
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
					<p class="sc-normal">Copyright © 2020 ToLeisure
						reserved</p>
				</div>
			</div>
		</div>
	</footer>



</body>
</html>