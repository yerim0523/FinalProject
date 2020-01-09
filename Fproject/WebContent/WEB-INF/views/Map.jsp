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
<title>Map.jsp</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!--  추가한거 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="js/bootstrap.min.js"></script>
<script type="js/bootstrap.js"></script>

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


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/button.css">

<style>
html {
	height: 100%;
}

div.left {
	width: 45%;
	float: left;
	box-sizing: border-box;
}

div.right {
	width: 55%;
	float: right;
	box-sizing: border-box;
	padding-left: 15px;
}

div.rights {
	width: 50%;
	float: right;
	box-sizing: border-box;
}

input.img-button {
	background: url("img/lense.JPG") no-repeat;
	border: none;
	/*     width: 32px;
        height: 32px; */
	/*  cursor: pointer; */
}

.Lsearch {
	font-size: 1rem;
	font-weight: 400;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	height: 50px;
}

</style>
    <style>
    .overlay_info {border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; box-shadow: 0px 1px 2px #888;}
    .overlay_info a {display: block; background: #d95050; background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px; border-radius: 6px 6px 0 0}
    .overlay_info a strong {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_icon.png) no-repeat; padding-left: 27px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 300px; height: 120px}
    .overlay_info img {vertical-align: top;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 80px; right: 14px; top: 24px; white-space: normal}
    .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;}
</style>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b06299aedd9f29b60afd90850c8308ed&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
	var x = document.getElementById("demo");

	function getLocation()
	{

		if (navigator.geolocation)
		{
			navigator.geolocation.getCurrentPosition(showPosition);
		} else
		{
			x.innerHTML = "Geolocation is not supported by this browser.";
		}
	}

	function showPosition(position)
	{
		var latitude = position.coords.latitude
		var longitude = position.coords.longitude;

		var mapContainer = document.getElementById('map'); // 지도를 표시할 div 

		var mapOption =
		{
			center : new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
			level : 5
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		geocoder = new kakao.maps.services.Geocoder();

		// 지도에 표시할 원을 생성합니다
		circle = new kakao.maps.Circle(
		{
			center : new kakao.maps.LatLng(latitude, longitude),// 원의 중심좌표 입니다 
			radius : 5000, // 미터 단위의 원의 반지름입니다 
			strokeWeight : 5, // 선의 두께입니다 
			strokeColor : '#75B8FA', // 선의 색깔입니다
			strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'dashed', // 선의 스타일 입니다
			fillColor : '#CFE7FF', // 채우기 색깔입니다
			fillOpacity : 0.4
		// 채우기 불투명도 입니다  

		});
		circle.setMap(map);

		// 다중 마커를 등록할 속성 구성
		positions = [
		 {	   
		}
		];

		 <c:forEach var="location" items="${location}">
		positions.push(
		{
			ngCode :"${location.ngCode}",
			title : "${location.grName}",
			loc : "${location.ngLocation}",
			ngPic : "${location.ngPic}",
			realxlocation : "${location.ylocation}",//"126.75066908491476",
			realylocation : "${location.xlocation}" // "35.xxxxxxxxxxx"
		});
		</c:forEach> 
		
		/* alert(latitude);
		alert(longitude); */
		


		for (var i = 0; i < positions.length; i++)
		{

			//alert(positions[i].title);	
			//alert(positions[i].ylocation);	
					curlatlng = new kakao.maps.LatLng(latitude, longitude);

		
					yloc = positions[i].realylocation;
					xloc = positions[i].realxlocation;
					
					
					mark = new kakao.maps.LatLng(yloc,xloc);
					// 마커 이미지 생성
					imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
					imageSize = new kakao.maps.Size(24, 35);
					// 마커 이미지
					markerImage = new kakao.maps.MarkerImage(imageSrc,imageSize);
					
					marker = new kakao.maps.Marker(
					{
						map : map,
						position : mark,
						image : markerImage
					});
					
				
	         	  // 인포윈도우로 장소에 대한 설명을 표시합니다
	         		var content = '<div class="overlay_info">';
	        		content += '    <a href="#" onclick='+'groupdetail(' + positions[i].ngCode +')'  +'<strong>'+positions[i].title+'</strong></a>';
	        		content += '    <div class="desc">';
	        		content += '        <img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/place_thumb.png" alt="">';
	        		content += '        <span class="address">'+positions[i].loc+'</span>';
	        		content += '    </div>';
	        		content += '</div>';
	        		iwRemoveable = true;
	        		
	         			 infowindow = new kakao.maps.InfoWindow(
	         			{
	         				//position : coords  
	         				content : content,
	         				removable : iwRemoveable
	         			});
	         			kakao.maps.event.addListener(marker, 'click',
	         					makeClickListener(map, marker, infowindow));
	         		
	         	
	         		
	         			 function makeClickListener(map, marker, infowindow)
	                     {
	                        return function()
	                        {
	                           infowindow.open(map, marker);
	                        };
	                     }


	         		
		} // end for
		
			

		curlatlng = new kakao.maps.LatLng(latitude, longitude);

		// 마커 생성
		var marker2 = new kakao.maps.Marker(
		{
			map : map // 마커 표시 지도
			,
			position : curlatlng // 마커 표시 위치
			,
			title : "현재위치" // 마커 표시 타이틀
			,
			image : markerImage
		});

		// 인포윈도우 옵션 구성
		var iwContent = "<div style='width:150px;text-align:center;padding:6px 0;'>현재 위치</div>"

	    
		
		// 인포윈도우 생성
		var infowindow2 = new kakao.maps.InfoWindow(
		{
			content : iwContent,
		// 『removable』 속성을 『true』로 설정할 경우
		// 인포윈도우를 닫을 수 있는 버튼 활성화
		});

		infowindow2.open(map, marker2);
	

		searchDetailAddrFromCoords(curlatlng, function(result, status)
		{
			if (status === kakao.maps.services.Status.OK)
			{
				//alert("동작");
				var detailAddr = !!result[0].road_address ? '도로명주소 : '
						+ result[0].road_address.address_name + '' : '';
				detailAddr += '내 위치 : ' + result[0].address.address_name
						+ '';

				var content = '<div class="bAddr">'
						+ '<span class="title">법정동 주소정보</span>' + detailAddr
						+ '</div>';
				document.getElementById('MyAddr').value = detailAddr;

			}// end if
		});// end searchDetail

	}// end show position

	function searchDetailAddrFromCoords(coords, callback)
	{

		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}
	
	function groupdetail(ngCode){
    	
    	location.href="groupdetail.action?ngCode="+ngCode;
    }
	
	function searchAddr()
	{
		var search = document.getElementById('search_addr').value;
		if (circle)
		{ // 최초 실행시에는 circle이 없을테니 예외처리를 해줍니다.
			circle.setMap(null);
		}

		if (marker)
		{ // 최초 실행시에는 circle이 없을테니 예외처리를 해줍니다.
			marker.setMap(null);
		}

		if (circle)
		{ // 최초 실행시에는 circle이 없을테니 예외처리를 해줍니다.
			circle.setMap(null);
		}

		geocoder.addressSearch(
						search,
						function(re, status)
						{
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK)
							{
								var coords = new kakao.maps.LatLng(re[0].y,re[0].x);

								// 마커 이미지 생성

								marker = new kakao.maps.Marker(
								{
									map : map,
									position : coords,
									image : markerImage
								});

								// 지도에 표시할 원을 생성합니다
								circle = new kakao.maps.Circle(
								{
									center : new kakao.maps.LatLng(re[0].y,
											re[0].x),// 원의 중심좌표 입니다 
									radius : 5000, // 미터 단위의 원의 반지름입니다 
									strokeWeight : 5, // 선의 두께입니다 
									strokeColor : '#75B8FA', // 선의 색깔입니다
									strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
									strokeStyle : 'dashed', // 선의 스타일 입니다
									fillColor : '#CFE7FF', // 채우기 색깔입니다
									fillOpacity : 0.4
								// 채우기 불투명도 입니다  
 
								});
								circle.setMap(map);
								infowindow = new kakao.maps.InfoWindow(
										{
											/*  position : coords  */
											content : '<div style="width:150px;text-align:center;padding:6px;">검색위치</div>'

										});
								/* 		         
										         infowindow.close(map,marker);    
															infowindow.open(map,marker);	 */

								kakao.maps.event.addListener(marker,
										'mouseover', makeOverListener(map,
												marker, infowindow));
								kakao.maps.event
										.addListener(marker, 'mouseout',
												makeOutListener(infowindow));

								function makeOverListener(map, marker,
										infowindow)
								{
									return function()
									{
										infowindow.open(map, marker);
									};
								}

								function makeOutListener(infowindow)
								{
									return function()
									{
										infowindow.close();
									};
								}

								map.setCenter(coords);
							}// end if

						}); // end geocoder

	}
</script>


</head>



<body onload="getLocation()">

	<div>
		<c:import url="bar.jsp"></c:import>
	</div>
	
	<section class="course_details_area section_padding" style="padding-bottom: 0;">
		<div>
			<jsp:include page="MeetingBar.jsp"></jsp:include>
		</div>
	</section>
	
	<div class="container">
		<div>
			<div class="left" align="left">
				<button type="button" style="margin-right: 135px;" class="btn btn-default">내위치</button>
				<!-- <input disabled="disabled" type="text" id="MyAddr" style="width: 500px;">
				<input type="text" class="Lsearch" style="width: 300px;">&nbsp;&nbsp; -->
				<!-- <button type="button" class="btn btn-default"><img src="img/loc.JPG" alt="" style="width:30px; height:30px;"></button> -->
			</div>



			<div class="right" align="left">
				<button type="button" style="border: none; background-color: white;" onclick="getLocation()">
					<img alt="현위치" src="images/location.png" style="border: none;">
					<!-- 	src="images/location.png"  -->
				</button>
			</div>

		</div>

		<br> <br>
		<div id="map" class="left" style="width: 50%; height: 360px;">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<!-- <input disabled="disabled" type="text" id="MyAddr" style="width: 500px;"> -->
		<!-- <input type="text" id="MyAddr" style="width: 400px;" readonly="readonly"> -->
		</div>
		<div class="rights" style="padding: 30px;">
			<input type="text" id="search_addr" class="Lsearch" style="width: 300px;"  placeholder="검색할 장소를 입력해주세요!">&nbsp;&nbsp;
			<button type="button" class="btn4" onclick="searchAddr()">검색</button>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<!-- <input type="text" id="search_lat">
			<input type="text" id="search_lng"> -->
			<br>
			<br>
			<input disabled="disabled" type="text" id="MyAddr" style="width: 400px;">
		</div>
	</div>
	<!-- <div id="map" style="width: 90%; height: 800px;"></div> -->
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>








	<!-- 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent)
			{
				searchDetailAddrFromCoords(mouseEvent.latLng, function(result,
						status)
				{
					if (status === kakao.maps.services.Status.OK)
					{
						var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
								+ result[0].road_address.address_name + '</div>'
								: '';
						detailAddr += '<div>지번 주소 : '
								+ result[0].address.address_name + '</div>';

						var content = '<div class="bAddr">'
								+ '<span class="title">주소정보</span>'
								+ detailAddr + '</div>';

						// 마커를 클릭한 위치에 표시합니다 
						marker.setPosition(latitude, longitude);
						marker.setMap(map);

						// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
						infowindow.setContent(content);
						infowindow.open(map, marker);
					}
				});
			});  -->
	<!-- // 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'idle', function()
			{
				searchAddrFromCoords(map.getCenter(), displayCenterInfo);
			}); -->
</body>
</html>











