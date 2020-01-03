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
<title>newsDetail.jsp</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

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

 
<script type="text/javascript">

	
	function edit_paging(boardNum)
	{	  
		location.href="mainboardupdateform.action?boardNum="+boardNum;
	}
	
	
	function del_event(boardNum)
	{	
		if(confirm("정말 삭제하시겠습니까?") == true)
		{
			location.href="mainboarddelete.action?boardNum="+boardNum;
		}
		
		else
		{
			return;
		}
		
	}
	
	function fn_paging(curPage)
	{	
		location.href="mainboard.action?curPage="+curPage;
	}

</script>


</head>
<body>

<div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div class="container">
<div class="row" style="padding: 50px 0px 20px 40px;">
    <div class="col-xs-2 col-md-2"></div>
    <div class="col-xs-8 col-md-8">
    <h2 class="text-center">게시글 보기</h2><p>&nbsp;</p>
    <div class="table table-responsive">
      
        <c:forEach var="v" items="${mainboardSelect }"> 
        <table class="table">
        <tr>
            <th class="success" id = "rNum" value="${v.boardNum}">글번호</th>
            <td>${v.boardNum}</td>
            <th class="success" id = "boardHits" value="${v.boardHits}">조회수</th>
            <td>${v.boardHits}</td>
        </tr>
           
         
        <tr>
            <th class="success" id = "boardMem" value="${v.boardMem}">작성자</th>
            <td>${v.boardMem}</td>
            <th class="success" id = "boardDate" value="${v.boardDate}">작성일</th>
            <td>${v.boardDate}</td>
        </tr>
         
       
        <tr>
            <th class="success" id = "boardTitle" value="${v.boardTitle}">제목</th>
            <td colspan="3">${v.boardTitle}</td>
        </tr>
         
        <tr>
            <th class="success" id = "boardCont" value="${v.boardCont}">글 내용</th>
            <td colspan="3">${v.boardCont}</td>
       </tr>

			<tr>
					<td colspan="4" class="text-center">
					<c:if test="${!empty sessionScope.mode}">
						<c:if test="${sessionScope.member.memId == v.memId }">
							<input type="button" onClick="edit_paging(${v.boardNum})" class="btn4" style="background-color: #D4F4FA;" value="수정하기" >
							<input type="button" onClick="del_event(${v.boardNum})" class="btn4" style="background-color: #eec4c4;" value="삭제하기" >
						</c:if>
					</c:if>
							<input type="button" onClick="fn_paging(${paging.curPage})" class="btn4" style="background-color: #FAED7D;" value="목록보기">
						</td>
					</tr>



				</table>
		
				</c:forEach>
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
