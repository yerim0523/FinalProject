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
<title>meetingOpen.jsp</title>

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
</section>

<br>

<div align="center">
  <div class="panel-body" style="border: 1px solid #D5D5D5; border-radius:1em; width:300px; height: 70px; padding-top: 10px; text-align: center;">
    폼을 불러올 모임을<br>
    선택하세요~!
  </div>
</div>

<br><br>

<div class="container" align="center">
	<div align="center"  >
	<table class="table">
		<tr align="center">
			<td>
				<label for="one"><input type="radio" id="one" name="count" value="소주"> 1회차</label>
			</td>
			<td>
				소주모임
			</td>
			<td>
				2019-05-05
			</td>
		</tr>
		<tr align="center">
			<td>
				<label for="two"><input type="radio" id="two" name="count" value="맥주"> 2회차</label>
			</td>
			<td>
				맥주모임
			</td>
			<td>
				2019-09-05
			</td>
		</tr>
		<tr align="center">
			<td>
				<label for="three"><input type="radio" id="three" name="count" value="맛집"> 1회차</label>
			</td>
			<td>
				맛집
			</td>
			<td>
				2019-11-23
			</td>
		</tr>
	</table>
	</div>
	<br><br>
	<div align="center">
		<button type="button" class="btn4" value="새로 개설" style="background-color: #FAED7D;">새로 개설</button>&nbsp;&nbsp;&nbsp;&nbsp; 
		<button type="button" class="btn4" value="선택">선택</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button" class="btn4" value="취소">취소</button>
	</div> 
</div>

<br><br><br>

<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>