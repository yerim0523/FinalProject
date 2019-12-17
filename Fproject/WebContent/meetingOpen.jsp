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

<style type="text/css">

	td
	{
		
	}
	
</style>

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
</div>

<br><br><br>

<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>