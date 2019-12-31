<%@page import="java.util.Random"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%!
public static String getrndnum(int loopcount){
  String str = "";
  int d = 0;
  for (int i = 1; i <= loopcount; i++){
    Random r = new Random();
    d = r.nextInt(9);
    str = str + Integer.toString(d);
  }
  return str;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BankPay.jsp</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/member.css" >
<link rel="stylesheet" href="css/button.css" >
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<style type="text/css">
	th
	{
		background-color: #EAEAEA;
	}
	.warning
	{
		font-weight: bold;
		font-size: 8pt;
		color: red;
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

<br><br><br>

<div>
	<h3 align="center">[가상계좌 결제]</h3>
</div>

<br><br>

<div class="container" align="center">

	<table class="table" style="width: 50%;">
		<tr>
			<th style="text-align: center;">이름</th>
			<td style="padding: 10px;">
				<input type="text" class="form-control" id="memName" name="memName" value="${myInfo.memName }" readonly="readonly">
			</td>
		</tr>
		<tr>
			<th style="text-align: center;">결제금액</th>
			<td style="padding: 10px;">
				<%-- <fmt:setLocale value="ko_KR"/><input type="text" class="form-control" value='<fmt:formatNumber value="${ngCost }"></fmt:formatNumber>' readonly="readonly"> --%>
				<%-- <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${ngCost}" /> --%>
				<input type="text" class="form-control" id="ngCost" name="ngCost" value="${ngCost }" readonly="readonly">
			</td>
		</tr>
		<tr>
			<th style="text-align: center;">입금 계좌</th>
			<td>정민하</td>
		</tr>
		<tr>
			<th style="text-align: center;">입금 기한</th>
			<td>2019-12-31 11:50 pm</td>
		</tr>
		<tr>
			<td colspan="2">
				<p class="warning"><i class="fas fa-exclamation fa-2x"></i>&nbsp;입금 기한 내에 입금이 정상적으로 이루어지지 않으면 모임 참가에 취소될 수 있으니 유의해 주시기 바랍니다.</p>
			</td>
		</tr>
	
	</table>
	
	<input type="button" value="확인" class="btn4">
	<br><br><br>
</div>

<div>
	<c:import url="footer.jsp"></c:import>
</div>

</body>
</html>