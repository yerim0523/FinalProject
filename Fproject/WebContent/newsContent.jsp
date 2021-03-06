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
<title>newContent.jsp</title>

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
        <table class="table">
        <tr>
            <th class="success">글번호</th>
            <td>1</td>
            <th class="success">조회수</th>
            <td>3</td>
        </tr>
           
         
        <tr>
            <th class="success">작성자</th>
            <td>백호진</td>
            <th class="success">작성일</th>
            <td>2019-12-21</td>
        </tr>
         
        <tr>
            <th class="success">이메일</th>
            <td colspan="3">bblee2478@naver.com</td>
        </tr>
         
        <tr>
            <th class="success">제목</th>
            <td colspan="3">나는 바보다</td>
        </tr>
         
        <tr>
            <th class="success">글 내용</th>
            <td colspan="3">나는 똥멍청이다</td>
        </tr>

					<tr>
						<td colspan="4" class="text-center">
						
							<input type="button" class="btn4" style="background-color: #D4F4FA;" value="수정하기" onclick="">
							<input type="button" class="btn4" style="background-color: #eec4c4;" value="삭제하기" onclick="">
							<input type="button" class="btn4" style="background-color: #FAED7D;" value="목록보기" onclick=""></td>
					</tr>



				</table>
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
