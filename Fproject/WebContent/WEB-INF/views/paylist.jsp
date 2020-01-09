<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paylist.jsp</title>

<script src="js/jquery-1.12.1.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> -->
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-theme.min.css">

<!-- jquery plugins here-->
<!-- jquery -->

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
<script type="text/javascript">

   function paycontent()
   {
      
      var modal = document.getElementById('myModal');

      // Get the button that opens the modal
      var btn = document.getElementById("myBtn");

      // Get the <span> element that closes the modal
      var span = document.getElementsByClassName("close")[0];

      // When the user clicks on the button, open the modal 
      btn.onclick = function()
      {
         modal.style.display = "block";
      }

      // When the user clicks on <span> (x), close the modal
      span.onclick = function()
      {
         modal.style.display = "none";
      }

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event)
      {
         if (event.target == modal)
         {
            modal.style.display = "none";
         }
      }
      
      $(function() {
  		function runEffect() {
  			$("#effect").toggle("blind", null, 700);
  		}
  		;

  		$("#btn_toggle").on("click", function() {
  			runEffect();
  		});
  	});

   }
</script>

<style type="text/css">
.modal {
   display: none; /* Hidden by default */
   position: fixed; /* Stay in place */
   z-index: 1; /* Sit on top */
   left: 0;
   top: 0;
   width: 100%; /* Full width */
   height: 100%; /* Full height */
   overflow: auto; /* Enable scroll if needed */
   background-color: rgb(0, 0, 0); /* Fallback color */
   background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
   background-color: #fefefe;
   margin: 15% auto; /* 15% from the top and centered */
   padding: 20px;
   border: 1px solid #888;
   width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close {
   color: #aaa;
   float: right;
   font-size: 28px;
   font-weight: bold;
}

.close:hover, .close:focus {
   color: black;
   text-decoration: none;
   cursor: pointer;
}

.accordion:hover {
	background-color: #ccc;
}
.table_pay
{
	border: 0;
	background-color: white;
}
div.card-header
{
	padding: 0px !impotant;
	
}

a.paytag
{
	color: black !important;
}

.paycontbl
{
	border: 1px solid gray;
	width: 100%;
	border: 0px;
	height: 50px;
	font-size: 20px;
}

.paycontbl th
{
	width: 140px;
}

.paycontbl th, td
{
}

</style>

</head>
<body>

<div>
   <c:import url="bar.jsp"></c:import>
</div>

<br>
<br>
<section class="course_details_area section_padding"
   style="padding-bottom: 0;">

   <div class="container">
      <div class="row">
         <c:import url="sidebar.jsp"></c:import>
         <div class="col-md-9">
            <div class="container" style="margin-left: 50px;">
               <div class="page-header">
                  <div>
                     <h3>> 결제 내역</h3>
                  </div>
               </div>
            </div>

            <br>
            
            <div class="panel-group" style="margin-left: 50px;">
            	<div class="panel panel-default" id="accordion">
            		<div>
            		<div >
            			<table class="table_pay">
            				<tr>
	            				<th style="width: 60px; height: 50px;">NUM</th>
	            				<th style="width: 305px; height: 50px;">모임명</th>	
	            				<th style="width: 200px; height: 50px;">결제날짜</th>	
	            				<th style="width: 90px; height: 50px;">결제방법</th>	
	            				<th style="width: 80px; height: 50px;">결제금액</th>	
	            				<th style="width: 85px; height: 50px;">비고</th>
            				</tr>
            			</table>
            		</div>
            		</div>
            		<c:forEach var="list" items="${payList }">
            		
            		<div >
            		<div >
            				<a class="card-link d-flex justify-content-start paytag" data-toggle="collapse" href="#collapse${list.rNum}">
            					<table class="table_pay">
            					<tr>
            					<td style="width: 60px; height: 50px;">${list.rNum }</td>
	            				<td style="width: 305px; height: 50px;">${list.grName }</td>
	            				<td style="width: 200px; height: 50px;">${list.payDate }</td>
	            				<td style="width: 90px; height: 50px;">${list.pmName }</td>
	            				
            					<td style="width: 80px; height: 50px;">
            					<fmt:setLocale value="ko_KR" />
            					<fmt:formatNumber type="currency" value="${list.ngCost }" />
            					</td>
            					<td style="width: 85px; height: 50px;"> 
            					<c:if test="${list.rfCode != 0 }">
                           		<span style="color: red;">환불</span>
                           		</c:if>
                           		</td>
                           		</tr>
                           		</table>
            				</a>
            		</div>
            		
            		<div id="collapse${list.rNum}" class="collapse" data-parent="#accordion">
            			<div >
            				<table class="paycontbl">
            				<tr>
            					<th style="">그룹이름 &nbsp;&nbsp;-</th>
            					<td colspan="3">${list.grName }</td>
            				</tr>
            				<tr>
            					<th>결제자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-</th>
            					<td colspan="2">${list.memName }</td>
            					
            					<th>결제일자 &nbsp;&nbsp;-</th>
            					<td>${list.payDate }</td>
            				</tr>
            				<tr>
            					<th>결제방법 &nbsp;&nbsp;-</th>
            					<td colspan="2">${list.pmName }</td>
            					
            					<th>결제내용 &nbsp;&nbsp;-</th>
            					<td>${list.pmDetail }</td>
            				</tr>
            				<c:if test="${list.rfCode == 0 }">
            				<tr>
            					<th>결제상태 &nbsp;&nbsp;-</th>
            					<td colspan="3">결제 완료</td>
            				</tr>	
            				</c:if>
            				
            				<c:if test="${list.rfCode != 0 }">
            				<tr>
            					<th>결제상태 &nbsp;&nbsp;-</th>
            					<td colspan="2">
            						<span style="color: red;">환불</span>
            					</td>
            					<th>환불일자 &nbsp;&nbsp;-</th>
            					<td>${list.rfDate }</td>
            				</tr>
            				</c:if>
            				
                           		
                           		
            				
            				
            				
            				</table>
            				
            				
            			</div>
            		</div>
            		
            		</div>
            		
            		</c:forEach>
            	</div>
            </div>
			
			<!--  
            <table class="table" style="margin-left: 50px;">
               <tr class="active">
                  <th>NUM</th>
                  <th>모임명</th>
                  <th>결제날짜</th>
                  <th>결제방법</th>
                  <th>결제금액</th>
                  <th>비고</th>
               </tr>
               <c:forEach var="list" items="${payList}">
                  <tr class="success" id="myBtn" onclick="paycontent()">
                     <td>${list.rNum }</td>
                     <td>${list.grName }</td>
                     <td>${list.payDate }</td>
                     <td>${list.pmName }</td>
                     <td><fmt:setLocale value="ko_KR" />
                        <fmt:formatNumber type="currency" value="${list.ngCost }" /></td>
                     <td><c:if test="${list.rfCode != 0 }">
                           <span style="color: red;">환불</span>
                        </c:if></td>
                  </tr>

                  <div id="myModal" class="modal">
                     <div class="modal-content">
                        <span class="close">&times;</span>
                        <p>${list.pmDetail }</p>
                     </div>
                  </div>
                  </c:forEach>
            </table>
            -->
            <!--  
            <br>
            <br>
            <br>
            <div style="margin-left: 350px;">
               <ul class="pagination">
                  <li class="page-item"><a class="page-link" href="#"
                     aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                  </a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#"
                     aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                  </a></li>
               </ul>
            </div>
            -->

         </div>
      </div>
   </div>
   <br>
   <br>
   <br>
   <br>
   <div>
      <c:import url="footer.jsp"></c:import>
   </div>

</section>
</body>
</html>