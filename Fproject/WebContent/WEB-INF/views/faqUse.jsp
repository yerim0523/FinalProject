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
<title>faqUse.jsp</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
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
.pagination {
	justify-content: center;
}

.nav-pills {
	justify-content: center;
}

.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.accordion:hover {
	background-color: #ccc;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}

.toggler {
	width: 100%;
	height: 200px;
}

#effect { 
	position: relative;
	width: 70%;
	height: 170px;
	padding: 0.4em;
}

.cate{
	color: black;
}

</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		function runEffect() {
			$("#effect").toggle("blind", null, 700);
		}
		;

		$("#btn_toggle").on("click", function() {
			runEffect();
		});
	});
	
	function delcheck(boardNum)
	{
		if (confirm("정말 삭제하시겠습니까??") == true)
		{    //확인
			location="faqdelete.action?boardNum="+boardNum;
		}else{   //취소
		    return;
		}	
	}
	
	function edit(boardNum)
	{
	
			location="faqupdateform.action?boardNum="+boardNum;
		
	}


</script>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">

<div id="menu" class="container">

	

	<br> <br> <br>

	<div class="container" align="center">
		<div class="row">
			<div class="col">
				<p style="font-size: 20pt;">[고객센터]</p>
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link"
						href="center.action">투레저 소개</a></li>
					<li class="nav-item"><a class="nav-link"
						href="news.action">투레저 소식</a></li>
					<li class="nav-item"><a class="nav-link"
						href="event.action">투레저 이벤트</a></li>
					<li class="nav-item"><a class="nav-link active">FAQ</a></li>
					<c:if test="${sessionScope.mode==1}">
					<li class="nav-item"><a class="nav-link" href="answer.action">QNA답변작성</a></li>
					</c:if>
				</ul>
			</div>
		</div> 
	</div>
	
	<br>
	
	<div class="container" align="center">
		<div class="row">
			<div class="col">
					<a class="cate" href="faq.action" >전체</a> |
					<a class="cate" href="#" style="font-weight: bold;">이용안내</a> |
					<a class="cate" href="faquser.action">회원정보</a> |
					<a class="cate" href="faqpay.action">결제/환불</a> |
					<a class="cate" href="faqetc.action">기타</a>
			 
			</div>
		</div>
	</div>

	<br> <br> <br>
	<div align="center">
		<div id="accordion">
			<c:forEach var="faq" items="${faqUseList}" varStatus="status">
				<div class="card">
				    <div class="card-header">
				      <a class="card-link d-flex justify-content-start" data-toggle="collapse" href="#collapse${faq.boardNum}">
				       [${faq.faqName}] ${faq.boardTitle}
				        
				      </a>
				      <c:if test="${sessionScope.mode==1}">
								<button type="button" onclick="delcheck(${faq.boardNum})"
									style="float: right;">삭제</button>
								<button type="button" onclick="edit(${faq.boardNum})"
									style="float: right;">수정</button>
								</c:if>
				    </div>
				    <div id="collapse${faq.boardNum}" class="collapse" data-parent="#accordion">
				      <div class="card-body d-flex justify-content-start" style="text-align:left;">
				        ${faq.boardCont} 
				      </div>
				    </div>
			  	</div>
			</c:forEach> 
		</div>
	</div>
	<c:if test="${!empty sessionScope.mode}">
			<c:if test="${sessionScope.mode==1}">
			<button type="button" onclick="location='faqinsertform.action'"
				class="btn4" style="float: right;">글쓰기</button>
			</c:if>
			</c:if>
	<c:if test="${empty sessionScope.member}">
				<button type="button" data-toggle="modal" data-target="#loginNeed"
					class="btn4" style="float: left;">1:1 문의하러 가기</button>
			</c:if>
			
			<c:if test="${!empty sessionScope.member}">
			<c:if test="${sessionScope.mode==0}">
				<button type="button" onclick="location='faq.action'"
					class="btn4" style="float: left;">1:1 문의하러 가기</button>
			</c:if>
			</c:if>
		</div>

	</section>

	<div>
		<c:import url="footer.jsp"></c:import>
	</div>


	<div class="modal modal-center fade" id="loginNeed" tabindex="-1"
		role="dialog" aria-labelledby="my80sizeCenterModalLabel">
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
