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
<title>event.jsp</title>
<style type="text/css">
.pagination {
	justify-content: center;
}
.nav-pills
{
	justify-content: center;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>
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


<!-- <script type="text/javascript">
	function board() {
		alert("확인");
	}
</script> -->
<script type="text/javascript" src="/test/resources/js/jquery-3.3.1.min.js"></script>
<script>
/*     $(document).ready(function(){
        $("#notice_regi").on("click",function(){
            location.href="/test/noticeRegi"
        });
    });
    function fn_paging(curPage){
         location.href="/test/noticeList?curPage="+curPage; 
        location.href="/WEB-INF/views/noticeList?curPage="+curPage;
    }
    
    function notice_push(notice_id){
        alert(notice_id);
    } */
 
  function fn_paging(curPage){
    	
    	location.href="answer.action?curPage="+curPage;
        /* location.href="/test/noticeList?curPage="+curPage; */
    }
</script>
</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div id="menu" class="container">

	<br>
	<br>
	<br>

	<div align="center">
		<div class="row">
			<div class="col">
				<p style="font-size: 20pt;">[고객센터]</p>
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link" href="center.action">투레저 소개</a>
					</li>
					<li class="nav-item"><a class="nav-link"href="news.action">투레저 소식</a></li>
					<li class="nav-item"><a class="nav-link" href="event.action">투레저 이벤트</a></li>
					<li class="nav-item"><a class="nav-link" href="faq.action">FAQ</a>
					<c:if test="${sessionScope.mode==1}">
					<li class="nav-item"><a class="nav-link active">QNA답변작성</a></li>
					</c:if>
					</li>
				</ul>
			</div>
		</div>
	</div>
 
	<br>
	<br>
	<br>

	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th></th>
					<th></th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>답변여부</th>
				</tr>
				<c:forEach var="v" items="${answerList}" varStatus="status">
				<tr>
				<td style="color: red;">[${v.faqName}]</td>
					<td>${v.rNum}</td>
					<td>${v.boardTitle}</td>
 					<td>${v.boardMem}</td>
					<td>${v.boardDate}</td>
					<td><button type="button" onclick="location='answerinsertform.action?boardNum=${v.boardNum}&curPage=${paging.curPage}'" 
					 style="float: right;">답변달기</button></td>
			    </tr>
				</c:forEach>      
            
			</thead>
		</table>

		<hr>
		<c:if test="${sessionScope.mode==1}">
			<button type="button" onclick="location='eventinsertform.action'"
				class="btn4" style="float: right;">글쓰기</button>
			</c:if>
	</div>

	<div class="container">
		<ul class="pagination">
			
			
			<c:if test="${paging.curPage ne 1}">
			<li class="page-item">
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
	
	<div class="greenTable outerTableFooter">
            <div class="tableFootStyle">
                <div class="links">
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    <c:if test="${paging.curPage ne 1}">
                        <a href="#" onClick="fn_paging(${paging.prevPage })">[이전]</a> 
                    </c:if>
                    
                    
                    
                    <c:if test="${paging.curPage ne paging.pageCnt && paging.pageCnt > 0}">
                        <a href="#" onClick="fn_paging(${paging.nextPage })">[다음]</a> 
                    </c:if>
                    <c:if test="${paging.curRange ne paging.rangeCnt && paging.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging(${paging.pageCnt })">[끝]</a> 
                    </c:if>
                </div>
            </div>
        </div>
         
        <div>
                    총 게시글 수 : ${paging.listCnt } /    총 페이지 수 : ${paging.pageCnt } / 현재 페이지 : ${paging.curPage } / 현재 블럭 : ${paging.curRange } / 총 블럭 수 : ${paging.rangeCnt }
        </div>
			
			  <input type="button" onclick="notice_push(${v.boardMem})" value="전송">
</div>
</section>


<div>
	<c:import url="footer.jsp"></c:import>
</div>
 

</body>
</html>