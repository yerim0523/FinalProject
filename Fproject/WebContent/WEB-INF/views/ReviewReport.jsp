<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String memId = request.getParameter("reportId");
	String reviewNum = request.getParameter("reviewNum");
	String reviewCont = request.getParameter("reviewCont");
	String memName = request.getParameter("memName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모임후기(메이트)</title>

<!-- css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/bootstrap-select.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/star.css" rel="stylesheet" type="text/css" />


<!-- 에디터영역을 만드는 역할 -->
<script src="js/jquery-1.12.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-select.min.js"></script>

<!-- jquery plugins here-->
<!-- swiper js -->
<script src="js/swiper.min.js"></script>
<!-- swiper js -->
<script src="js/masonry.pkgd.js"></script>
<!-- particles js -->
<script src="js/owl.carousel.min.js"></script>
<!-- swiper js -->
<script src="js/slick.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<style type="text/css">

.table th {
	text-align: center;
	padding: 18px 12px !important;
}

.reporttext {
	height: calc(1.5em + .75rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
}

</style>

<script type="text/javascript">

	function reviewReport()
	{
		f = document.allreviewForm;

		var repCateSel = document.getElementById("repCateSel");
		//alert(repCateSel.options[repCateSel.selectedIndex].value);
		var cateVal = repCateSel.options[repCateSel.selectedIndex].value;

		if (cateVal == 0)
		{
			alert("신고 사유를 선택해주세요.");
			return;
		}

		if (cateVal == 1 || cateVal == 2 || cateVal == 3 || cateVal == 4)
		{
			document.getElementById("repCate").value = cateVal;
			f.submit();
		}

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

		<div class="container">
			<br>
			<br>

			<div class="col-2">
				<p style="font-weight: bold; font-size: 18pt; color: #000000;">|
					후기 신고</p>
			</div>

				<div align="center">
				<form action="allreportinsert.action" method="post" name="allreviewForm">
					<table class="table" style="width: 800px;">
						<tr>
							<th>작성자</th>
							<td>
								<input type="text" class="reporttext" id="memName" name="memName" value="<%=memName%>" readonly="readonly">
							</td>	
							
							<th>작성자 ID</th>
							<td>
								<input type="text" class="reporttext" id="memId" name="memId" value="<%=memId%>" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>작성글 내용</th>
							<td colspan="3">
								<input type="hidden" id="reviewNum" name="reviewNum" value="<%=reviewNum%>">
								<textarea rows="10" cols="20" class="form-control" readonly="readonly"><%=reviewCont %></textarea>							
							</td>
						<tr>
							<th>신고 사유</th>
							<td>
								<select id="repCateSel" name="repCateSel" class="reporttext" style="width: 300px;">
									<option id="repCateSel" value="0">선택</option>
									<option id="repCateSel" value="1">욕설</option>
									<option id="repCateSel" value="2">광고</option>
									<option id="repCateSel" value="3">타인비하</option>
									<option id="repCateSel" value="4">기타</option>
								</select>
								<input type="hidden" id="repCate" name="repCate" value="">
							</td>
						</tr>
					</table>
					</form>
					<button type="button" class="btn4" onclick="reviewReport()">신고</button> 
					<button type="button" class="btn4" onclick="">취소</button>
				</div>
			
		</div>
		
		<div>
			<c:import url="footer.jsp"></c:import>
		</div>
		
</body>
</html>