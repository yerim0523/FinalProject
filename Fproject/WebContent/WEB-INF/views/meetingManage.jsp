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
<title>myEndList.jsp</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

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

<script type="text/javascript" src="<%=cp%>/js/highcharts.js"></script>
<script type="text/javascript" src="<%=cp%>/js/series-label.js"></script>
<script type="text/javascript" src="<%=cp%>/js/exporting.js"></script>
<script type="text/javascript" src="<%=cp%>/js/export-data.js"></script>
    
<style type="text/css">
	.image
	{
		width: 170px;
		height: 150px;
	}
	
	button.btn4{
	    width: 90px;
    	height: 44px;
    	padding-left: 0;
    	padding-right: 0;
	}
</style>

<script type="text/javascript">

	$(function()
	{
		$("#charShow").click(function()
		{
			
			
			Highcharts.chart('chartSpace', {
			    chart: {
			        plotShadow: false,
			        type: 'pie'
			    },
			    title: {
			        text: 'TIOBE Index for December, 2019'
			    },
			    tooltip: {
			        pointFormat: '{series.name}: <b>{point.percentage:.2f}%</b>'
			    },
			    plotOptions: {
			        pie: {
			            allowPointSelect: true,
			            cursor: 'pointer',
			            dataLabels: {
			                enabled: true,
			                format: '<b>{point.name}</b>: {point.percentage:.2f} %'
			            }
			        }
			    },
			    series: [{
			        name: 'Language',
			        colorByPoint: true,
			        data: [{
			            name: 'Java',
			            y: 17.25,
			            sliced: true,
			            selected: true
			        }, {
			            name: 'C',
			            y: 16.08
			        }, {
			            name: 'Python',
			            y: 10.30
			        }, {
			            name: 'C++',
			            y: 6.19
			        }, {
			            name: 'C#',
			            y: 4.80
			        }, {
			            name: 'Visual Basic .NET',
			            y: 4.74
			        }, {
			            name: 'JavaScript',
			            y: 2.09
			        }, {
			            name: 'PHP',
			            y: 2.04
			        }, {
			            name: 'SQL',
			            y: 1.84
			        }, {
			            name: 'Swift',
			            y: 1.49
			        }, {
			            name: 'Ruby',
			            y: 1.31
			        }, {
			            name: 'Delphi/Object Pascal',
			            y: 1.28
			        }, {
			            name: 'Objective-C',
			            y: 1.20
			        }, {
			            name: 'Assembly language',
			            y: 1.06
			        }, {
			            name: 'Go',
			            y: 0.99
			        }, {
			            name: 'R',
			            y: 0.99
			        }, {
			            name: 'MATLAB',
			            y: 0.98
			        }, {
			            name: 'D',
			            y: 0.93
			        }, {
			            name: 'Visual Basic',
			            y: 0.92
			        }, {
			            name: 'Perl',
			            y: 0.89
			        }, {
			            name: 'Others',
			            y: 22.63
			        }]
			    }]
			});

		});
	});
	
</script>

</head>
<body>

<div>
	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
</div>
<br><br>
<section class="course_details_area section_padding" style="padding-bottom: 0;">
<div class="container">
	<div class="row">
		<c:import url="sidebar.jsp"></c:import>
		<div class="col-md-9">
			<div class="container" style="margin-left: 50px;">
				<div class="page-header">
					<div>
						<h3>> 모임 관리</h3>
						<hr>
					</div>
				</div>
				<br><br>

					<c:if test="${empty sessionScope.member}">
						<div align="center">
							<p class="text-center" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-thumbtack"></i>&nbsp;&nbsp;관리중인 모임이 존재하지 않습니다. <br><br>모임 확정 개설된 이력이 있으면 이곳에 표시됩니다 ~ !</p>
						</div>
					</c:if>
					
					<c:if test="${!empty sessionScope.member}">
					<button type="button" id="charShow">차트보기</button>
					<div id="chartSpace"></div>
					</c:if>
					
					<br><br>
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