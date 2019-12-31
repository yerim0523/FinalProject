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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b06299aedd9f29b60afd90850c8308ed&libraries=services,clusterer,drawing"></script>
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
			var circle = new kakao.maps.Circle({
			    center : new kakao.maps.LatLng(latitude, longitude),// 원의 중심좌표 입니다 
			    radius: 5000, // 미터 단위의 원의 반지름입니다 
			    strokeWeight: 5, // 선의 두께입니다 
			    strokeColor: '#75B8FA', // 선의 색깔입니다
			    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			    strokeStyle: 'dashed', // 선의 스타일 입니다
			    fillColor: '#CFE7FF', // 채우기 색깔입니다
			    fillOpacity: 0.4  // 채우기 불투명도 입니다  
			    
			}); 
			circle.setMap(map);
			
			
			 // 다중 마커를 등록할 속성 구성
		     positions = 
		      [
		         {
		            title: "제주특별자치도 제주시 첨단로 242"
		            	,name:"안녕"
		            
		         }, 
		         {
		            title: "제주특별자치도 제주시 애월읍 광령리 1417"
		            	,name:"안녕"
		         }, 
		         {
		            title: "서울특별시 마포구 서교동 447-5 풍성빌딩 2,3,4층"
		            	,name:"안녕못해"
		         }, 
		         {
		            title: "서울특별시 마포구 동교동 159-8"
		            	,name:"안녕"
		         },
		         {
		            title: "경기도 고양시 일산서구 일중로 30"
		           ,name:"서울특별시 마포구 테스트"
		         }
		      ];
		      
		      // 마커 이미지
		      imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		      imageSize = new kakao.maps.Size(24, 35);
		      
		      var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);	         
		         
		      for (var i=0; i<positions.length; i++)
		        {
					alert(positions[i].name);
					
				    name = positions[i].name;
				    

					geocoder.addressSearch(positions[i].title, function(re, status) 
					{
					
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK)
				     {
				    	 mark = new kakao.maps.LatLng(re[0].y, re[0].x);
				    	// 마커 이미지 생성
				         var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
				    	
				         var marker = new kakao.maps.Marker
				        ({
				            map: map,
				            position: mark,
				            image: markerImage
				        });

		/* 			     var content = '<div class="wrap">' + 
					                 '    <div class="info">' + 
					                 '        <div class="title">' + 
					                 '            카카오 스페이스닷원' + 
					                 '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
					                 '        </div>' + 
					                 '        <div class="body">' + 
					                 '            <div class="img">' +
					                 '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
					                 '           </div>' + 
					                 '            <div class="desc">' + 
					                 '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
					                 '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
					                 '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
					                 '            </div>' + 
					                 '        </div>' + 
					                 '    </div>' +    
					                 '</div>'; */
					     
					      // 인포윈도우로 장소에 대한 설명을 표시합니다
					      infowindow = new kakao.maps.InfoWindow
					    ({
					    	/*  position : coords  */
					       content: '<div style="width:150px;text-align:center;padding:6px 0;">'+name +'</div>'
					    });
					                 infowindow.open(map, marker);
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        // map.setCenter(coords);
				    
				     }// end if
				    
				  }); // end geocoder
				
		      } // end for
		      
		      
		      
		      curlatlng = new kakao.maps.LatLng(latitude, longitude);
		        
		         // 마커 생성
		         var marker = new kakao.maps.Marker(
		         {
		            map: map                     // 마커 표시 지도
		            , position: curlatlng     // 마커 표시 위치
		            , title: "현재위치"      // 마커 표시 타이틀
		            , image: markerImage
		         });
		      
		      
		

			// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);

			
			
			
			
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
						
							infoDiv.innerHTML = result[i].address_name;
							
						
					}
				}
			} // end displayCenterInfo 

			
			
			
		}// end show position
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
			<input type="text" id="centerAddr"style="width: 300px;">
			<input type="text" class="Lsearch" style="width: 300px;">&nbsp;&nbsp;
			<!-- <button type="button" class="btn btn-default"><img src="img/loc.JPG" alt="" style="width:30px; height:30px;"></button> -->
		</div>

		<div class="right" align="left">
			<button type="button" style="border: none; background-color: white;" onclick="getLocation()">
				<img alt="현위치" style="border: none;">
			<!-- 	src="images/location.png"  -->
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
		
	</div> 
	<br><br>

	
</div>
<div id="map" style="width:90%;height:800px;"></div>    
	<div>
		<c:import url="footer.jsp"></c:import>
	</div>
	
	




<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


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











