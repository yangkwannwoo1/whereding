<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.popup {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  z-index: 9999; /* 높은 우선 순위 값 */
}


.popup-content {
  position: absolute;
  width: 400px;
  height: 530px;
  top: 50%;
  left: 35%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}
.popup-content2 {
  position: absolute;
  width: 400px;
  height: 530px;
  top: 50%;
  left: 65%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}
#closeButton1{
    cursor: pointer;
}
#closeButton2{
    cursor: pointer;
}

</style>
<title>결혼은 웨어딩에서</title>
<!-- title -->
	<title>Fruitkha</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
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
	<!-- search style -->
	<link rel="stylesheet" href="resources/css/assets/css/search.css">
	<style>
		/* Make the image fully responsive */
		.carousel-inner img {
		  width: 100%;
		  height: 100%;
		}
	</style>
</head>
<body>
	<jsp:include page="common/header.jsp"/>
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
    <!-- carousel -->
    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        
        <!-- The slideshow -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://incheon.wedding/wp-content/uploads/2017/06/weddinghall-lbwedding-2023-new-01-1000x667.jpg">
          </div>
          <div class="carousel-item">
            <img src="https://incheon.wedding/wp-content/uploads/2019/09/weddinghall-marryvilia-2023-02.jpg" alt="Chicago" width="1100" height="500">
          </div>
          <div class="carousel-item">
            <img src="https://incheon.wedding/wp-content/uploads/2019/09/weddinghall-marryvilia-2023-03.jpg" alt="New York" width="1100" height="500">
          </div>
        </div>
        
        <!-- Left and right controls -->
        <!-- <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a> -->
      </div>
      


	<!-- start main search-->
    <form action="search.mn" method="post" id="searchPlace">

        <table id="search_table">
            <thead>
                <tr id="search_title">
                    <th>
                        <h5>결혼준비는 역시 Whereding</h5>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <nav id="tab_top_area">
                            <div class="nav nav-tabs" id="nav-tab" role="tablist" style="border: none;">
                                <button class="nav-link active" id="nav-wedding-tab" data-bs-toggle="tab" data-bs-target="#nav-wedding" type="button" role="tab" aria-controls="nav-wedding" aria-selected="true">웨딩</button>
                                <button class="nav-link" id="nav-studio-tab" data-bs-toggle="tab" data-bs-target="#nav-studio" type="button" role="tab" aria-controls="nav-studio" aria-selected="false">스튜디오</button>
                                <button class="nav-link" id="nav-dress-tab" data-bs-toggle="tab" data-bs-target="#nav-dress" type="button" role="tab" aria-controls="nav-dress" aria-selected="false">드레스</button>
                                <button class="nav-link" id="nav-makeup-tab" data-bs-toggle="tab" data-bs-target="#nav-makeup" type="button" role="tab" aria-controls="nav-makeup" aria-selected="false">메이크업</button>
                            </div>
                        </nav>
                    </td>
                </tr>
            <tr>
                <td>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-wedding" role="tabpanel" aria-labelledby="nav-wedding-tab">
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th colspan="4">
                                            <input type="hidden" class="hidden_tab_area" value="wedding">
                                            <h3>🤵Wedding Hall👰</h3>
                                        </th>
                                    </tr>
                                    <!-- <tr>
                                        <th colspan="4">
                                            <p style="margin:10px;">***님께 딱 맞는 장소를 추천해드릴게요.</p>
                                        </th>
                                    </tr> 이원벨이 머리가 감고 댕겨라 -->
                                </thead>
                                <tbody class="mSearch wedding">
                                    <!-- 검색 -->
                                    <!-- <tr class="search">
                                        <td colspan="4">
                                            <span style="width: 300px;">
                                                <input type="text" style="width: 260px;">
                                                <i class="fas fa-search"></i>
                                            </span>
                                        </td>
                                    </tr> -->
                                    <tr class="input_area">
                                        <td class="address" colspan="4">
                                            <input class="hidden_address w" type="hidden" name="wsAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area w" type="text" placeholder="지역선택" readonly></span>
                                            
                                            대관비
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="wsMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="wsMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td colspan="4">
                                            좌석
                                            <!-- <span id="seat_avail" style="margin-right: 80px;"><input type="number">석</span> -->
                                            <select id="seat_avail" name="wsSeat">
                                                <option value="1">0명   ~ 100명</option>
                                                <option value="2">101명 ~ 300명</option>
                                                <option value="3">301명 ~ 500명</option>
                                                <option value="4">501명 ~ </option>
                                            </select>
                                            식대
                                            <!-- 식대 -->
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="EatMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="10" value="10" name="EatMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag w" type="hidden" name="wsTag">
                                        <td colspan="3" class="selectTagArea">
                                        </td>
                                        <td class="find_tag w">
                                            <button type="button" class="btn btn-outline-secondary float-right">태그찾기</button>
                                        </td>
                                    </tr>
                                    <tr class="next_prev_area">
                                        <td colspan="4">
                                            <a class="btn btn-outline-warning float-right" onclick="nextTab(this);">다음</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-studio" role="tabpanel" aria-labelledby="nav-studio-tab">
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th colspan="4">
                                            <input type="hidden" class="hidden_tab_area" value="studio">
                                            <h3>📸STUDIO</h3>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="mSearch studio">
                                    <tr class="input_area">
                                        <td class="address" colspan="4">
                                            <input class="hidden_address s" type="hidden" name="ssAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area s" type="text" placeholder="지역선택" readonly></span>
                                            
                                            가격
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="ssMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="ssMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td class="weekendYNArea" colspan="4">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="ssWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag s" type="hidden" name="ssTag">
                                        <td colspan="3" class="selectTagArea">
                                        </td>
                                        <td class="find_tag">
                                            <button type="button" class="btn btn-outline-secondary float-right">태그찾기</button>
                                        </td>
                                    </tr>
                                    <tr class="next_prev_area">
                                        <td colspan="2">
                                            <a class="btn btn-outline-warning float-left" onclick="prevTab(this);">이전</a>
                                        </td>
                                        <td colspan="2">
                                            <a class="btn btn-outline-warning float-right" onclick="nextTab(this);">다음</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-dress" role="tabpanel" aria-labelledby="nav-dress-tab">
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th colspan="4">
                                            <input type="hidden" class="hidden_tab_area" value="dress">
                                            <h3>👗DRESS</h3>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="mSearch dress">
                                    <tr class="input_area">
                                        <td class="address" colspan="4">
                                            <input class="hidden_address d" type="hidden" name="dsAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area d" type="text" placeholder="지역선택" readonly></span>
                                            
                                            가격
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="dsMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="dsMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td class="weekendYNArea" colspan="4">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="dsWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag d" type="hidden" name="dsTag">
                                        <td colspan="3" class="selectTagArea">
                                        </td>
                                        <td class="find_tag">
                                            <button type="button" class="btn btn-outline-secondary float-right">태그찾기</button>
                                        </td>
                                    </tr>
                                    <tr class="next_prev_area">
                                        <td colspan="2">
                                            <a class="btn btn-warning float-left" onclick="prevTab(this);">이전</a>
                                        </td>
                                        <td colspan="2">
                                            <a class="btn btn-warning float-right" onclick="nextTab(this);">다음</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-makeup" role="tabpanel" aria-labelledby="nav-makeup-tab">
                            <table style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th colspan="4">
                                            <input type="hidden" class="hidden_tab_area" value="makeup">
                                            <h3>💄MAKEUP</h3>
                                        </th>
                                    </tr>
                                </thead>
                                    <tbody class="mSearch makeup">
                                        <tr class="input_area">
                                            <td class="address" colspan="4">
                                                <input class="hidden_address m" type="hidden" name="msAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                                지역
                                                <span  style="margin-right: 70px;"><input class="select_area m" type="text" placeholder="지역선택" readonly></span>
                                                
                                                가격
                                                <span class="minPrice"><input type="number" placeholder="0" value="0" name="msMinPrice">만원</span>~&nbsp;
                                                <span class="maxPrice"><input type="number" placeholder="100" value="100" name="msMaxPrice">만원</span>
                                            </td>
                                        </tr>
                                        <tr class="input_area">
                                            <td class="weekendYNArea" colspan="4">
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="msWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <input class="hidden_tag m" type="hidden" name="msTag">
                                            <td colspan="3" class="selectTagArea">
                                            </td>
                                            <td class="find_tag">
                                                <button type="button" class="btn btn-outline-secondary float-right">태그찾기</button>
                                            </td>
                                        </tr>
                                        <tr class="next_prev_area">
                                            <td colspan="2">
                                                <a class="btn btn-outline-warning float-left" onclick="prevTab(this);">이전</a>
                                            </td>
                                            <td colspan="2">
                                                <a class="btn btn-outline-warning float-right" onclick="submitSearch();"><li class="fas fa-search">검색</li></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        
                        </div>
                    
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <script>
       	function submitSearch(){
       		$("#searchPlace").submit();
       	}
       	
    </script>

    
    <!-- STUDIO modal -->
    <div class="md md1">
        <button class="close_tab"></button>
        <div class="tab-area">
            
            <h3>지역선택</h3>
            <div class="ltab">
                <button class="ltablinks Seoul" onclick="openCity(event, 'Seoul');" id="defaultOpen">서울</button>
                <button class="ltablinks Gyeonggi" onclick="openCity(event, 'Gyeonggi')">경기도</button>
                <button class="ltablinks" onclick="openCity(event, 'Incheon')">인천</button>
                <button class="ltablinks" onclick="openCity(event, 'Busan')">부산</button>
                <button class="ltablinks" onclick="openCity(event, 'Daegu')">대구</button>
                <button class="ltablinks" onclick="openCity(event, 'gwangju')">광주</button>
                <button class="ltablinks" onclick="openCity(event, 'Daejeon')">대전</button>
                <button class="ltablinks" onclick="openCity(event, 'Ulsan')">울산</button>
                <button class="ltablinks" onclick="openCity(event, 'Sejong')">세종</button>
                <button class="ltablinks" onclick="openCity(event, 'Gangwon')">강원도</button>
                <button class="ltablinks" onclick="openCity(event, 'NChungcheong')">충청북도</button>
                <button class="ltablinks" onclick="openCity(event, 'SChungcheong')">충청남도</button>
                <button class="ltablinks" onclick="openCity(event, 'NJeolla')">전라북도</button>
                <button class="ltablinks" onclick="openCity(event, 'SJeolla')">전라남도</button>
                <button class="ltablinks" onclick="openCity(event, 'NGyeongsang')">경상북도</button>
                <button class="ltablinks" onclick="openCity(event, 'SGyeongsang')">경상남도</button>
                <button class="ltablinks" onclick="openCity(event, 'Jeju')">제주도</button>
            </div>
            
            <div id="Seoul" class="ltabcontent area">
                <table>
                    <tbody>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">종로구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">중구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">용산구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">성동구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">광진구</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">동대문</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">중랑구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">용산구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">강북구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">도봉구</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">노원구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">은평구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">성북구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">서대문</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">마포구</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">양천구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">강서구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">구로구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">금천구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">영등포</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">동작구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">관악구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">서초구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">강남구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">송파구</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">강동구</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="Gyeonggi" class="ltabcontent area">
                <table>
                    <tbody>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">수원시</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">성남시</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">고양시</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">안양시</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">부천시</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">광명시</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">평택시</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="Incheon" class="ltabcontent area">
                <table>
                    <tbody>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">남구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">남동구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">동구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">부평구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">서구</button></td>
                        </tr>
                        <tr>
                            <td><button class="selectCity" onclick="clickCity(event)">연수구</button></td>
                            <td><button class="selectCity" onclick="clickCity(event)">중구</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="confirm_city">
                <button class="btn btn-outline-warning" onclick="submitCity()">확인</button>
            </div>

        </div>
    </div>
    <div class="md md2">
        <button class="close_tab"></button>
        <div class="tab_area">
            <h3>태그</h3>
            <div class="allTag_area">
                <!-- <button class="btn btn-outline-secondary"># 호텔웨딩</button>
                <button class="btn btn-outline-secondary"># 스몰웨딩</button>
                <button class="btn btn-outline-secondary"># 일반웨딩</button>
                <button class="btn btn-outline-secondary"># 하우스웨딩</button>
                <button class="btn btn-outline-secondary"># 전통혼례</button>
                <button class="btn btn-outline-secondary"># 호텔웨딩</button>
                <button class="btn btn-outline-secondary"># 스몰웨딩</button>
                <button class="btn btn-outline-secondary"># 일반웨딩</button>
                <button class="btn btn-outline-secondary"># 하우스웨딩</button>
                <button class="btn btn-outline-secondary"># 전통혼례</button>
                <button class="btn btn-outline-secondary"># 호텔웨딩</button>
                <button class="btn btn-outline-secondary"># 스몰웨딩</button>
                <button class="btn btn-outline-secondary"># 일반웨딩</button>
                <button class="btn btn-outline-secondary"># 하우스웨딩</button>
                <button class="btn btn-outline-secondary"># 전통혼례</button> -->
            </div>
            <div class="confirm_tag">
                <button class="btn btn-outline-warning" onclick="submitTag()">확인</button>
            </div>

        </div>
    </div>
    <!-- End STUDIO Modal -->
	
    <!-- end main search-->





	<!-- product section -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3><span class="orange-text"></span>Wedding Collection</h3>
						<p>Studio, Dress, MakeUp</p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-md-6 text-center">
					<h3>STUDIO</h3>
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="https://cdn.imweb.me/thumbnail/20210317/1d76f943457d7.jpg" alt=""></a>
						</div>
						<h3>피엔스튜디오 강남점</h3>
						<p class="product-price"><span class="address">서울 강남구 강남대로96길 19 지하1층</span></p>
						<a href="cart.html" class="cart-btn"><img class="book-icon" src="resources/css/assets/img/booking.png"> 예약하기</a>			
					</div>
				</div>
				<div class="col-lg-4 col-md-6 text-center">
					<h3>DRESS</h3>
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="https://www.qplace.kr/content/images/2021/12/8-9.jpg" alt=""></a>
						</div>
						<h3>로브드k</h3>
						<p class="product-price"><span class="address">서울 강남구 도산대로 427 파모소빌딩 4층</span></p>
						<a href="cart.html" class="cart-btn"><img class="book-icon" src="resources/css/assets/img/booking.png"> 예약하기</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0 text-center">
					<h3>MAKEUP</h3>
					<div class="single-product-item">
						<div class="product-image">
							<a href="single-product.html"><img src="https://cdn.hkbs.co.kr/news/photo/201806/472435_238631_1557.jpg" alt=""></a>
						</div>
						<h3>그리다 청담</h3>
						<p class="product-price"><span class="address">서울 강남구 도산대로75길 6 2층 그리다 청담</span></p>
						<a href="cart.html" class="cart-btn"><img class="book-icon" src="resources/css/assets/img/booking.png"> 예약하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end product section -->

    	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">
			<h3 style="padding-left: 30px;">Best weding hall</h3>
			<div class="row">
				
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<img src="https://www.ihall.co.kr/center/pic/banquet_ent_poto/13998558121612918786.jpg" alt="">
					<div class="list-box d-flex align-items-center">
						<div class="content">
							<h3>더 클래스 청담</h3>
							<p>서울 강남구 청담동</p>
							<p>식대비용 : 3~4만원</p>
							<p>최대수용인원 : 450명</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<img src="https://www.iwedding.co.kr/center/website/ihall_img/1166679588/1166679588_img_230_0_1608692935.jpg" alt="">
					<div class="list-box d-flex align-items-center">
						<div class="content">
							<h3>더컨벤션 신사</h3>
							<p>서울 강남구 신사동</p>
							<p>식대비용 : 4~5만원</p>
							<p>최대수용인원 : 350명</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbaj8YWRl4TPt8n4jvQqcYGqr0RVYWliSWPsna_ifTAUQnALl5QoW3GxqYWaZMxt-tz_s&usqp=CAU" alt="">
					<div class="list-box d-flex align-items-center">
						<div class="content">
							<h3>드레스가든</h3>
							<p>서울 강남구 청담동</p>
							<p>식대비용 : 3~5만원</p>
							<p>최대수용인원 : 550명</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	
	 <!-- 모달 팝업 -->
<div id="popup" class="popup">
    <!-- 첫 번째 모달 팝업 컨텐츠 -->
    <div class="popup-content" id="content1">
      <span class="close" id="closeButton1">&times;</span>
      <br><br>
      <img src="resources/images/모달로 띄울 내용.png" alt="">
      <br><br>
      <label><input type="checkbox" id="disablePopup1"> 일주일간 안보기</label>
    </div>
  
    <!-- 두 번째 모달 팝업 컨텐츠 -->
    <div class="popup-content2" id="content2">
      <span class="close" id="closeButton2">&times;</span>
      <br>
      <img src="resources/images/협력업체 모집.png" alt="">
      <br><br>
      <label><input type="checkbox" id="disablePopup2"> 일주일간 안보기</label>
    </div>
  </div>
  
  <script>
    // 모달 열기 함수
    function openModal() {
      var modal = document.getElementById('popup');
      modal.style.display = 'block';
    }
  
    // 모달 닫기 함수
    function closeModal() {
      var modal = document.getElementById('popup');
      modal.style.display = 'none';
    }
  
    // 쿠키를 확인하여 모달 팝업을 표시합니다.
    if (document.cookie.indexOf('disablePopup1=true') === -1 && document.cookie.indexOf('disablePopup2=true') === -1) {
      openModal();
    } else if (document.cookie.indexOf('disablePopup1=true') === -1) {
      openModal();
      document.getElementById('content2').style.display = 'none';
    } else if (document.cookie.indexOf('disablePopup2=true') === -1) {
      openModal();
      document.getElementById('content1').style.display = 'none';
    }
  
    // 첫 번째 모달 팝업 닫기
    document.getElementById('closeButton1').addEventListener('click', function () {
      document.getElementById('content1').style.display = 'none';
  
      // disablePopup1 체크박스 상태 저장
      if (document.getElementById('disablePopup1').checked) {
        var date = new Date();
        date.setDate(date.getDate() + 7); // 7일 동안 쿠키 유지
        document.cookie = 'disablePopup1=true; expires=' + date.toUTCString();
      }
      
      // 첫 번째 모달을 닫았을 때 모두 닫히는지 확인
        if (document.getElementById('content2').style.display === 'none') {
        closeModal();
        }
    });
  
    // 두 번째 모달 팝업 닫기
    document.getElementById('closeButton2').addEventListener('click', function () {
      document.getElementById('content2').style.display = 'none';
  
      // disablePopup2 체크박스 상태 저장
      if (document.getElementById('disablePopup2').checked) {
        var date = new Date();
        date.setDate(date.getDate() + 7); // 7일 동안 쿠키 유지
        document.cookie = 'disablePopup2=true; expires=' + date.toUTCString();
      }
       // 두 번째 모달을 닫았을 때 모두 닫히는지 확인
        if (document.getElementById('content1').style.display === 'none') {
        closeModal();
        }
    });
  </script>
	
	<jsp:include page="common/footer.jsp"/>

	
	<!-- jquery -->
	<script src="resources/css/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="resources/css/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="resources/css/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="resources/css/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="resources/css/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="resources/css/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="resources/css/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="resources/css/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="resources/css/assets/js/main.js"></script>
	<!-- search js -->
	<script src="resources/css/assets/js/search.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>