<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<br><br><br><br><br>
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->

	<!-- hero area -->
	<div class="hero-area">
		<div class="container">
			<!-- home page slider -->
			<div class="homepage-slider">
				<!-- single home slider -->
				<div class="single-homepage-slider homepage-bg-1">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
								<div class="hero-text">
									<div class="hero-text-tablecell">
										<p class="subtitle">Fresh & Organic</p>
										<h1>Delicious Seasonal Fruits</h1>
										<div class="hero-btns">
											<a href="shop.html" class="boxed-btn">Fruit Collection</a>
											<a href="contact.html" class="bordered-btn">Contact Us</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single home slider -->
				<div class="single-homepage-slider homepage-bg-2">
					<div class="container">
						<div class="row">
							<div class="col-lg-10 offset-lg-1 text-center">
								<div class="hero-text">
									<div class="hero-text-tablecell">
										<p class="subtitle">Fresh Everyday</p>
										<h1>100% Organic Collection</h1>
										<div class="hero-btns">
											<a href="shop.html" class="boxed-btn">Visit Shop</a>
											<a href="contact.html" class="bordered-btn">Contact Us</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single home slider -->
				<div class="single-homepage-slider homepage-bg-3">
					<div class="container">
						<div class="row">
							<div class="col-lg-10 offset-lg-1 text-right">
								<div class="hero-text">
									<div class="hero-text-tablecell">
										<p class="subtitle">Mega Sale Going On!</p>
										<h1>Get December Discount</h1>
										<div class="hero-btns">
											<a href="shop.html" class="boxed-btn">Visit Shop</a>
											<a href="contact.html" class="bordered-btn">Contact Us</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end hero area -->

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
                                            <input class="hidden_address w" type="hidden" name="wAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area w" type="text" placeholder="지역선택" readonly></span>
                                            
                                            대관비
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="wMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="wMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td colspan="4">
                                            좌석
                                            <!-- <span id="seat_avail" style="margin-right: 80px;"><input type="number">석</span> -->
                                            <select id="seat_avail" name="wSeat">
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
                                        <input class="hidden_tag w" type="hidden" name="wTag">
                                        <td colspan="3" class="selectTagArea">
                                            <span class="taglist"># 호텔웨딩</span>
                                            
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
                                            <input class="hidden_address s" type="hidden" name="sAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area s" type="text" placeholder="지역선택" readonly></span>
                                            
                                            가격
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="sMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="sMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td class="weekendYNArea" colspan="4">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="sWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag s" type="hidden" name="sTag">
                                        <td colspan="3" class="selectTagArea">
                                            <span class="taglist"># 호텔웨딩</span>
                                            
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
                                            <input class="hidden_address d" type="hidden" name="dAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                            지역
                                            <span  style="margin-right: 70px;"><input class="select_area d" type="text" placeholder="지역선택" readonly></span>
                                            
                                            가격
                                            <span class="minPrice"><input type="number" placeholder="0" value="0" name="dMinPrice">만원</span>~&nbsp;
                                            <span class="maxPrice"><input type="number" placeholder="100" value="100" name="dMaxPrice">만원</span>
                                        </td>
                                    </tr>
                                    <tr class="input_area">
                                        <td class="weekendYNArea" colspan="4">
                                            <div class="form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" value="" name="dWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag d" type="hidden" name="dTag">
                                        <td colspan="3" class="selectTagArea">
                                            <span class="taglist"># 호텔웨딩</span>
                                            
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
                                                <input class="hidden_address m" type="hidden" name="mAddress"><!-- 서울특별시 강남구, 서울특별시 영등포구... -->
                                                지역
                                                <span  style="margin-right: 70px;"><input class="select_area m" type="text" placeholder="지역선택" readonly></span>
                                                
                                                가격
                                                <span class="minPrice"><input type="number" placeholder="0" value="0" name="mMinPrice">만원</span>~&nbsp;
                                                <span class="maxPrice"><input type="number" placeholder="100" value="100" name="mMaxPrice">만원</span>
                                            </td>
                                        </tr>
                                        <tr class="input_area">
                                            <td class="weekendYNArea" colspan="4">
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" value="" nmae="mWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <input class="hidden_tag m" type="hidden" name="mTag">
                                            <td colspan="3" class="selectTagArea">
                                                <span class="taglist"># 호텔웨딩</span>
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
                                                <a class="btn btn-outline-warning float-right" onclick="submitSearch();">검색</a>
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



	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">
			<h3>Best weding hall</h3>
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
	<!-- end features list section -->

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