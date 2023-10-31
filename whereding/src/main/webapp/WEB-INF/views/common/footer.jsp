<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7706a53c60198a30475a97398b6f325&libraries=services,clusterer,drawing"></script>
<title>Insert title here</title>
<!-- favicon -->
<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet" href="resources/css/assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet" href="resources/css/assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet" href="resources/css/assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet" href="resources/css/assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet" href="resources/css/assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet" href="resources/css/assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet" href="resources/css/assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet" href="resources/css/assets/css/responsive.css">
</head>
<body>
	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">회사소개</h2>
						<ul>
							<li>Kh정보교육원 Fourever Team</li>
							<li>대표자 | 양관우</li>
							<li>개발자 | 김현우</li>
							<li>개발자 | 윤재성</li>
							<li>개발자 | 이원종</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">고객센터</h2>
						<ul>
							<li>주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 2,3F</li>
							<li>이메일 : khfinalproject4@gmail.com</li>
							<li>전화번호 : 02-1234-1234</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">찾아오시는 길</h2>
						<div id="map" style="width:400px;height:200px; margin-top: 20px; border: 2px solid; display: none;"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->

	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<p class="copyright-etc">서비스 이용약관 | 전자금융거래 약관 | 개인정보 처리방침 | 면책
						공고 | 개인정보 수집항목 | ⓒ FOUREVER Corp.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>
						COPYRIGHT &copy; 2023 WHEREDING, ALL RIGHT RESERVED.<br>
						DISTRIBUTED BY - FOUREVER
					</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i
									class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b886c1f0a0359c5d351f5484b7fce9d&libraries=services"></script>
	
	<script>
                                
        // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
        var infowindow = new kakao.maps.InfoWindow({zIndex:1});
    
        
      
  

        var mapContainer = document.getElementById("map"), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨

            };  
    
            if (mapContainer.style.display === 'none') {
             mapContainer.style.display = 'block';
            
        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption); 
    
        // 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places(); 
    
        // 키워드로 장소를 검색합니다
        ps.keywordSearch("kh정보교육원 1관", placesSearchCB); 
    
    
        // 키워드 검색 완료 시 호출되는 콜백함수 입니다
        function placesSearchCB (data , status, pagination) {
            if (status === kakao.maps.services.Status.OK) {
    
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                // LatLngBounds 객체에 좌표를 추가합니다
                var bounds = new kakao.maps.LatLngBounds();
    
                for (var i=0; i<data.length; i++) {
                    displayMarker(data[i]);    
                    bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
                }       
    
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                map.setBounds(bounds);
            } 
        }
    
        // 지도에 마커를 표시하는 함수입니다
        function displayMarker(place) {
            
            // 마커를 생성하고 지도에 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(place.y, place.x) 
            });
    
            // 마커에 클릭이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'click', function() {
                // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                infowindow.setContent('<div style="padding:5px;font-size:12px; color:black;">Whereding</div>');
                infowindow.open(map, marker);
            });
        }
   
        }
     
    </script>
</body>
</html>