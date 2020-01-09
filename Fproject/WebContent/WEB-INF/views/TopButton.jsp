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
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->

<style type="text/css">

	a#MOVE_TOP_BTN {
    position: fixed;
    right: 10%;
    bottom: 150px;
    display: none;
    z-index: 999;
	}

	a#MOVE_TOP_BTN:link {
	text-decoration: none;
	}

	a#MOVE_TOP_BTN:visited {
	text-decoration: none;
	}
	
	a#MOVE_TOP_BTN:hover {
	text-decoration: none;
	}

</style>

<script type="text/javascript">

	$(function() {
	    $(window).scroll(function() {
	        if ($(this).scrollTop() > 100) {
	            $('#MOVE_TOP_BTN').fadeIn();
	        } else {
	            $('#MOVE_TOP_BTN').fadeOut();
	        }
	    });
	    
	    $("#MOVE_TOP_BTN").click(function() {
	        $('html, body').animate({
	            scrollTop : 0
	        }, 400);
	        return false;
	    });
	});

</script>

</head>
<body>

<a id="MOVE_TOP_BTN" href="#"><span style="font-size: 16px; color: black;"><i class="fas fa-chevron-up fa-3x"></i><br>&nbsp;&nbsp;TOP</span></a>


</body>
</html>