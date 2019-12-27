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
<title>faq.jsp</title>
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
	width: 90%;
	height: 170px;
	padding: 0.4em;
}

.cate{
	color: black;
}
.modal-dialog.modal-80size {
  width: 90%;
  height: 90%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  min-height: 90%;
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
	
	function formCheck()
	{
	   var f = document.QNAInsertForm;
	   
	   var str = f.boardTitle.value;
	   
	   str = str.trim();
	   if(!str || 5>str.length || 100<str.length)
	   {
	      alert("제목을 【5 ~ 100자】 내외로 입력해주세요.");
	      f.boardTitle.focus();
	      return;
	   }

	   
	   str = f.boardCont.value;
	   str = str.trim();
	   if(!str || 5>str.length || 1000<str.length)
	   {
	      alert("내용을 【5 ~ 1000자】 내외로 입력해주세요.");
	      f.boardCont.focus();
	      return;
	   }
	   
	   f.submit();

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
				</ul>
			</div>
		</div> 
	</div>
	
	<br>
	
	<div class="container" align="center">
		<div class="row">
			<div class="col">
			<!-- 
				<ul class="nav nav-pills">
					<li class="nav-item">
						<a class="nav-link cate" href="#">호스트신청</a>
					</li>
					<li class="nav-item">
						<a class="nav-link cate" href="#">이용안내</a>
					</li>
					<li class="nav-item">
						<a class="nav-link cate" href="#">회원정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link cate" href="#">결제/환불</a>
					</li>
					<li class="nav-item">
						<a class="nav-link cate" href="#">기타</a>
					</li>
				</ul>
			 -->
					<a class="cate" href="#" style="font-weight: bold;">전체</a> |
					<a class="cate" href="faquse.action">이용안내</a> |
					<a class="cate" href="faquser.action">회원정보</a> |
					<a class="cate" href="faqpay.action">결제/환불</a> |
					<a class="cate" href="faqetc.action">기타</a>
			 
			</div>
		</div>
	</div>

	<br> <br> <br>
	<div align="center">
		<div id="accordion">
			<c:forEach var="faq" items="${faqList}" varStatus="status">
				<div class="card">
				    <div class="card-header">
				      <a class="card-link d-flex justify-content-start" data-toggle="collapse" href="#collapse${faq.boardNum}">
				       [${faq.faqName}] ${faq.boardTitle}
				        
				      </a>
				      <button type="button" onclick="delcheck(${faq.boardNum})" style="float: right;">삭제</button>
				      <button type="button" onclick="edit(${faq.boardNum})"  style="float: right;">수정</button>
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
	<button type="button" onclick="location='faqinsertform.action'" class="btn4" style="float: right;">글쓰기</button>
	
	<c:if test="${empty sessionScope.member}">
		<button type="button" data-toggle="modal" data-target="#loginNeed" class="btn4" style="float: left;">1:1 문의</button>
	</c:if>
	<c:if test="${!empty sessionScope.member}">
         <button type="button" data-toggle="modal" data-target="#QNA" class="btn4" style="float: left;">1:1 문의</button>
     </c:if>
	<!-- <button type="button" onclick="location='qnainsertform.action'" data-toggle="modal" data-target="#loginNeed" class="btn4" style="float: left;">1:1 문의</button> -->
</div>

</section>

<div>
	<c:import url="footer.jsp"></c:import>
</div>


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

  <div class="modal modal-center" id="QNA">
    <div class="modal-dialog modal-lg shadow-sm mt-10p modal-center">
      <div class="modal-content">
        <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">1 : 1 문의</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
       <div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th></th>
					<th></th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="v" items="${qnaList}" varStatus="status">
				<tr>
					<c:choose>
					<c:when test="${v.boardNotice ne 0}"><td style="color: red;">[공지]</td></c:when>
					<c:when test="${v.boardNotice eq 0}"><td style="color: red;">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></c:when>
					</c:choose>
					<td>${v.rNum}</td>
					<td><a href="#" onclick="location='qnadetail.action?boardNum=${v.boardNum}&curPage=${paging.curPage}'" style="cursor:hand;">${v.boardTitle} </a></td>
 					<td>${v.boardMem}</td>
					<td>${v.boardDate}</td>
					<td>${v.boardHits}</td>
			    </tr>
			  
				</c:forEach>      
            
			</thead>
		</table>

		<hr>
		<button type="button" data-dismiss="modal" data-toggle="modal" data-target="#addqna" class="btn4" style="float: Right;">글쓰기</button>
	</div>

	<div class="container">
		<ul class="pagination">
			<li class="page-item">
			
			<c:if test="${paging.curPage ne 1}">
			<a class="page-link" href="#" aria-label="Previous" onClick="fn_paging(${paging.prevPage })">	
			<span aria-hidden="true">&laquo;</span>
			</a></li>
			</c:if>
			<%-- ${status.index+1+(paging.curPage-1)*10} --%>
			 <c:forEach var="pageNum" begin="${paging.startPage }" end="${paging.endPage }">
			 	<c:choose>
			 		<c:when test="${pageNum eq  paging.curPage}">
			<!-- 선택되게하기 --><li class="page-item active"><a class="page-link" onClick="fn_paging(${pageNum })"  href="#"> ${paging.curPage }</a></li>
					</c:when>
					  <c:otherwise>
                               <li class="page-item"> <a class="page-link" href="#" onClick="fn_paging(${pageNum })">${pageNum }</a> </li>
                            </c:otherwise>
                        </c:choose>
                        </c:forEach>
                        
             <c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
			<li class="page-item"><a class="page-link" href="#"aria-label="Next" onClick="fn_paging(${paging.nextPage })"> 
			<span aria-hidden="true">&raquo;</span>
			</a></li>
			</c:if>
		</ul>
	</div>
</div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
      
  <div class="modal modal-center" id="addqna">
    <div class="modal-dialog modal-lg shadow-sm mt-10p modal-center">
      <div class="modal-content">
        <div class="modal-header">
      	<span style="font-size: 15pt; font-weight: bold;">1 : 1 문의</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body center-block">
      
 <form action="qnainsert.action" method="post" name="QNAInsertForm" id="QNAInsertForm" class="form-horizontal">	
	<div class="container">
		<table class="table" style="text-align: center;">
			<tr>
				<td>제목</td>
				<td>
					<div class="form-inline">
						<input type="text" class="form-control" id="boardTitle" placeholder="제목 입력(4-100)" name="boardTitle" maxlength="100"
								required="required" pattern=".{4,100}" style="width: 450px;">

						<select name="faqCate" class="form-control" style="width: 150px;">
				            <option id="faqCate" value="1">이용안내</option>
				            <option id="faqCate" value="2">회원정보</option>
				            <option id="faqCate" value="3">결제/환불</option>
				            <option id="faqCate" value="4">기타</option>
				         </select>	         
			         </div>
				</td>
			<tr>
				<td>내용</td>
				<td colspan="2">
				<textarea class="form-control" rows="5" id="boardCont" name="boardCont"placeholder="내용 작성"></textarea>
				</td>
			</tr>
			<tr>
				<td>
				
				</td>
				<td colspan="2">
					<div align="right">
						<button type="button" class="btn4 btn-info submit" onclick="formCheck()">등록</button>
					</div>
				</td>
			</tr>
			
		</table>
	</div>
		<hr>
		</div>
	</form>	
			
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>


</body>
</html>
