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
<title>MapTest00.html</title>

 <style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .name {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<!-- 발급받은 key를 활용하여 리소스 참조 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b06299aedd9f29b60afd90850c8308ed&libraries=services"></script>
    <script type="text/javascript">
	function initialize()
	{
		var container = document.getElementById("map");	
		var options = 
		{
				// 지도의 중심 좌표 (풍성빌딩)
			center: new kakao.maps.LatLng(37.556529, 126.919508),
			
			// 지도의 최대 레벨(cf, GoogleMap 이나 NaverMap 은 Zoom 으로 구성)
			level: 7.
		};

		// 지도를 그릴 대상 div 의 옵션을 넘겨주며 지도 생성
		/* var map = new kakao.maps.Map(container, options);  */ // 지역변수기 떄문에 var 을 빼줘야함
		
		map = new kakao.maps.Map(container, options); 	
 
		geocoder = new kakao.maps.services.Geocoder();

		
		 // 다중 마커를 등록할 속성 구성
	     var positions = 
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
	            title: "서울특별시 마포구 동교동 159-8"
	           ,name:"서울특별시 마포구 테스트"
	         }
	      ];
		
		// 주소로 좌표를 검색합니다
		for (var i=0; i<positions.length; i++)
        {
			alert(positions[i].name);
			
		    name = positions[i].name;
		
			geocoder.addressSearch(positions[i].title, function(result, status) 
			{
			
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK)
		     {
		    	
		         coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		    
		        
		         marker = new kakao.maps.Marker
		        ({
		            map: map,
		            position: coords
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
		        map.setCenter(coords);
		    
		     }// end if
		    
		  }); // end geocoder
		
      } // end for
   // 주소로 좌표를 검색합니다
		geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);

		        
		        
		     // 지도에 표시할 원을 생성합니다
				var circle = new kakao.maps.Circle({
				    center : new kakao.maps.LatLng(result[0].y, result[0].x),// 원의 중심좌표 입니다 
				    radius: 5000, // 미터 단위의 원의 반지름입니다 
				    strokeWeight: 5, // 선의 두께입니다 
				    strokeColor: '#75B8FA', // 선의 색깔입니다
				    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
				    strokeStyle: 'dashed', // 선의 스타일 입니다
				    fillColor: '#CFE7FF', // 채우기 색깔입니다
				    fillOpacity: 0.4  // 채우기 불투명도 입니다   
				});
				circle.setMap(map);
				
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});   
		
		
	}
	

	</script>
</head>

<body onload="initialize()">

<div id="map" style="width:100%;height:800px;"></div>    



</body>
</html>