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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5e3c767f6c8a910153a4b8ca76545343"></script>
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

div.rights{
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

.Lsearch{
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

<script type="text/javascript">
	function initialize()
	{
		container = document.getElementById("map");
		options =
		{
			center : new kakao.maps.LatLng(37.556576, 126.919548), // 풍성빌딩	
			level : 3, // 지도의 확대 레벨 
		};

		// 지도를 그릴 대상 div 와 옵션을 넘겨주며 지도 생성
		map = new kakao.maps.Map(container, options);
	}
	
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
	
	function showPosition(position) {
		  var latitude = position.coords.latitude
		  var longitude = position.coords.longitude;
		  
		  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption =
			{
				center : new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
				level : 4
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
			infowindow = new kakao.maps.InfoWindow(
			{
				zindex : 1
			}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

			// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);

			// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
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
								+ '<span class="title">법정동 주소정보</span>'
								+ detailAddr + '</div>';

						// 마커를 클릭한 위치에 표시합니다 
						marker.setPosition(mouseEvent.latLng);
						marker.setMap(map);

						// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
						infowindow.setContent(content);
						infowindow.open(map, marker);
					}
				});
			});

			// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
			kakao.maps.event.addListener(map, 'idle', function()
			{
				searchAddrFromCoords(map.getCenter(), displayCenterInfo);
			});

			function searchAddrFromCoords(coords, callback)
			{
				// 좌표로 행정동 주소 정보를 요청합니다
				geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
						callback);
			}

			function searchDetailAddrFromCoords(coords, callback)
			{
				// 좌표로 법정동 상세 주소 정보를 요청합니다
				geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
			}

			// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
			function displayCenterInfo(result, status)
			{
				if (status === kakao.maps.services.Status.OK)
				{
					var infoDiv = document.getElementById('centerAddr');

					for (var i = 0; i < result.length; i++)
					{
						// 행정동의 region_type 값은 'H' 이므로
						if (result[i].region_type === 'H')
						{
							infoDiv.innerHTML = result[i].address_name;
							break;
						}
					}
				}
			}

		  
		}
	
	
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption =
		{
			center : new kakao.maps.LatLng(position.coords.latitude, position.coords.longitude), // 지도의 중심좌표
			level : 4
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new kakao.maps.InfoWindow(
		{
			zindex : 1
		}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
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
							+ '<span class="title">법정동 주소정보</span>'
							+ detailAddr + '</div>';

					// 마커를 클릭한 위치에 표시합니다 
					marker.setPosition(mouseEvent.latLng);
					marker.setMap(map);

					// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
					infowindow.setContent(content);
					infowindow.open(map, marker);
				}
			});
		});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', function()
		{
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback)
		{
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
					callback);
		}

		function searchDetailAddrFromCoords(coords, callback)
		{
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status)
		{
			if (status === kakao.maps.services.Status.OK)
			{
				var infoDiv = document.getElementById('centerAddr');

				for (var i = 0; i < result.length; i++)
				{
					// 행정동의 region_type 값은 'H' 이므로
					if (result[i].region_type === 'H')
					{
						infoDiv.innerHTML = result[i].address_name;
						break;
					}
				}
			}
		}
</script>


</head>
<body onload="initialize()">

<%-- <div>
	<c:import url="bar.jsp"></c:import>
</div>

<section class="course_details_area section_padding" style="padding-bottom: 0;">
	<div>
		<c:import url="MeetingBar.jsp"></c:import>
	</div>
</section> --%>


<div class="container">
	<div>
		<div class="left" align="left">
			<button type="button" style="margin-right: 135px;" class="btn btn-default">내위치</button>
			<!-- <button type="button" class="btn btn-default"><img src="img/loc.JPG" alt="" style="width:30px; height:30px;"></button> -->
		</div>

		<div class="right" align="left">
			<button type="button" style="border: none; background-color: white;" onclick="getLocation()">
				<img alt="현위치" src="images/location.png" style="border: none;">
			</button>
		</div>

	</div>

	<br>
	<br>
	<div id="map" class="left" style="width: 50%; height: 350px;"></div>
	<div class="rights" style="padding: 30px;">
		<input type="text" class="Lsearch" style="width: 300px;">&nbsp;&nbsp;
		<button type="button" class="btn4">검색</button>
		<br><br><br>
		<table class="table" style="text-align: center;">
			<tr>
				<th>모임이름</th>
				<th>호스트명</th>
			</tr>
			<tr>
				<td>모임이름</td>
				<td>호스트명</td>
			</tr>
			<tr>
				<td>모임이름</td>
				<td>호스트명</td>
			</tr>
		</table>
	</div> 
	<br><br>

	<!-- <div class="row">
	<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<img src="img/map.JPG" alt="썸네일" style="width: 100%;">
		<div class="caption">
		
		</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<img src="img/gd.jpg" alt="썸네일" style="width: 100%; height: 200px;">
		<div class="caption">
			<h3>모임</h3>
			<p>호스트이름</p>
		</div>
		</div>
	</div>
	<div class="col-sm-6 col-md-4">
		<div class="thumbnail">
			<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
		<div class="caption">
			<h3>모임</h3>
			<p>호스트이름</p>
		</div>
		</div>
	</div>
	
	<div class="col-sm-6 col-md-4">
	<br><br>
		<div class="thumbnail">
			<input type="text">
			<button type="button" class="btn btn-default"><img src="img/lense.JPG" alt="" style="width:35px; height:35px;"></button>
		
		<br><br><br><br><br>
		
		<div class="caption">
			주소 : <input type="text">
		</div>
		</div>
	</div>
</div>
-->
	<br>
	<!-- 	<div class="left">
		<button type="button" class="btn btn-default">내위치</button>
	</div>
	<br> -->
	<!-- <button type="button" class="btn btn-default">내 주변 모임</button>
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
		
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%; height: 200px;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="img/gd.jpg" alt="썸네일" style="width: 100%;">
			<div class="caption">
				<h3>모임</h3>
				<p>호스트이름</p>
			</div>
			</div>
		</div>
	</div>

</div>
 -->
</div>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>




</body>
</html>