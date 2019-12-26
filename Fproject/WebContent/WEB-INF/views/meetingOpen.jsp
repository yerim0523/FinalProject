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
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>

<script type="text/javascript">

	function groupSel()
	{
		//alert("확인");
		var f = document.groupForm;

		var val = null;

		var code 	= $("#grCode").val();
		
		var check 	= $('input:radio[name=grCode]').is(":checked");

		if(check === false)
		{
			alert("모임을 선택해주세요.");
			return;
		}
		
		for (var i = 0; i < code.length; i++)
		{
			if (code[i].checked == true) // 체크 된 값만 
			{
				val = code[i].value;
			}
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
	<form action="groupinsertform.action" method="post" name="groupForm">
	<input type="hidden" name="memId" value="${member.memId }">
	<div align="center">
	<table class="table text-center">
		<tr>
			<th>회차 정보</th>
			<th>모임 이름</th>
			<th>개설 날짜</th>
		</tr>
		
		<c:forEach var="mylist" items="${list }">
			<c:if test="${!empty mylist.grCode}">
			<tr align="center">
			<td>
				<label for="one"><input type="radio" id="grCode" name="grCode" value="${mylist.grCode }"> ${mylist.grCount }회차</label>
			</td>
			<td>
				${mylist.grName }
			</td>
			<td>
				${mylist.ngDate }
			</td>
			</tr>
			</c:if>
			<c:if test="${empty mylist}">
			비어이씀다
			</c:if>
		</c:forEach>
		
	</table>
	</div>
	</form>
	<br><br>
	<div align="center">
		<a href="newinsertform.action"><button type="button" class="btn4" value="새로 개설" style="background-color: #FAED7D;">새로 개설</button></a>&nbsp;&nbsp;&nbsp;&nbsp; 
		<button type="submit" class="btn4" value="선택" onclick="groupSel()">선택</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="main.action"><button type="button" class="btn4" value="취소">취소</button></a>
	</div> 
	
</div>

<br><br><br>

<!-- <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>