
<html lang="en">
<head>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
	<!-- title -->
	<title>웨딩홀 목록</title>

	

	<style>
		#menu1{
			/* border: 1px solid black; */
			height: 350px;
			width: 1100px;
			float: left;
		}
		#menu2{
			/* border: 1px solid black; */
			float: left;
			width: 20%;
			height: 280px;
		}
		#menu3{
			/* border: 1px solid black; */
			float: left;
			width: 60%;
			height: 280px;
		}
		#menu4{
			/* border: 1px solid black; */
			float: left;
			width: 20%;
			height: 280px;
		}

		#menu5{
			/* border: 1px solid black; */
			height: 50px;
		}

		#insertposts{
			float: right;
			border-radius: 10px; 
			width: 80px; 
			height: 50px;
		}
/* Make the image fully responsive */
		.carousel-inner img {
		  width: 100%;
		  height: 100%;
		}
		  #search_table{
    height: 200px;
    margin: 0;
    width: 900px;
    border: 1px solid black;
    border-radius: 18px;
    border-style: hidden;
    box-shadow: 0 0 0 1px #000;;
  }
  
  .tabcontent thead h3{
    padding-top: 10px;
  }

  .tabcontent thead{
    border-bottom: 2px solid black;
  }

  .tab .btn{
    font-weight: 700;
  }

  td:has(#availableSeat){
    width: 220px;
  }
  
  .input_area span input{
    border: none;  
    width: 80%;
    height: 20px;
    text-align: right;
  }  
  .input_area input[type="number"]::-webkit-outer-spin-button,
  .input_area input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

  #search_table span{
    display: inline-block;
    border: 1.714px solid rgb(133, 133, 133);
    border-radius: 2px;
    padding: 0px 5px;
    height: 30px;
  }
  
  #search_table{
    width: 1100px;
    z-index: 99999 !important;
    margin: 1% auto;
  }

  #search_title{
    background-color: #F28123;
    text-align: right;
    width: 80%;
  }

  #search_title * {
    border-top-right-radius: 18px;
    border-top-left-radius: 18px;
    color: white;
    padding: 2px 1%;
  }

  .tabcontent table{
    width: 100%;
  }
  
  .mSearch td{
    padding-top: 10px;
  }

  .mSearch td span{
    width: 200px;
    margin-right: 10px;  
  }

  .mSearch td span input{
    height: 20px;
    border: none;
    text-align: right;
  }
  
  .search *{
    text-align: right;
  }
  
  .input_area .address{
    width: 240px;
  }

  .input_area{
    height: 50px;
  }

  .input_area td{
    text-align: center;
  }

  .input_area .select_area{
    text-align: center;
  }

  #seat_avail{
    width: 200px;
    height: 30px;
    margin-right: 85px;
  }
  
/* 모달영역 */
.md1 {
  display: none;
  position: absolute;
  width: 770px;
  height: 430px;
  left: 30px;
  top: 160px;
  background: lightgray;
  color: white;
  border-radius: 5px;
  padding: 12px 12.8px;
  box-shadow: rgb(255, 255, 255) 1px 1px 15px;
  z-index: 100;

  background-color: #eef3fd;
  border: black solid 1px;
}

.md1:after {
  border-color: #eef3fd transparent;
  border-style: solid;
  border-width: 0 6px 8px 6.5px;
  content: '';
  display: block;
  left: 75px;
  position: absolute;
  top: -7px;
  width: 0;
  z-index: 1;
}
.md1::before {
  border-color: #ccc transparent;
  border-style: solid;
  border-width: 0 6px 8px 6.5px;
  content: '';
  display: block;
  left: 75px;
  position: absolute;
  top: -8px;
  width: 0;
  z-index: 0;
}

.md2 {
  display: none;
  position: absolute;
  width: 770px;
  height: 430px;
  left: 30px;
  top: 160px;
  background: lightgray;
  color: white;
  border-radius: 5px;
  padding: 12px 12.8px;
  box-shadow: rgb(255, 255, 255) 1px 1px 15px;

  background-color: #eef3fd;
  border: black solid 1px;

}

.md2:after {
  /* z-index: 999; */
  top: 65px;
  left: 770px;

  border-color: #eef3fd transparent;
  border-style: solid;
  border-width: 0 6px 8px 6.5px;
  content: '';
  display: block;
  position: absolute;
  width: 0;
  z-index: 1;
}
.md1::before {
  border: 1px solid black;
  border-color: #ccc transparent;
  border-style: solid;
  border-width: 0 6px 8px 6.5px;
  content: '';
  display: block;
  left: 75px;
  position: absolute;
  top: -8px;
  width: 0;
  z-index: 0;
}

.allTag_area{
  overflow-y: auto;
  color: black;
  background-color: #eef3fd;
  height: 310px;
  width: 744px;
  padding: 10px;
}
.allTag_area button{
  margin: 0px 10px 10px 0px;
}

/* 탭 스타일링 */
* {box-sizing: border-box}

/* Style the tab */
.ltab {
  overflow-y: scroll;
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 140px;
  height: 300px;
}

/* Style the buttons inside the tab */
.ltab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 10px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.ltab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.ltab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.ltabcontent {
  background-color: white;
  display: block;
  transition: 0.3s;
  font-size: 17px;
  color: black;
  background-color: inherit;
  overflow-x: hidden;
  overflow-y: auto;
  float: left;
  padding: 22px 16px;
  border: 1px solid #ccc;
  width: 81%;
  border-left: none;
  height: 300px;
}

/* Change background color of buttons on hover */
.ltabcontent button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.ltabcontent button.active {
  background-color: #ccc;
}

.ltabcontent button {
  border-radius: 5px;
  width: 87px;
  height: 45px;
  margin: 5px 10px;
  background-color: #f1f1f1;
}

.mSearch .taglist{
  width: auto;
  border: none;
}

.mSearch .hover{
  cursor: pointer;
}
/* .tab-content table{
  width: 100%;
} */

.next_prev_area a{
  margin: 0px 10px 10px 10px;
}

.find_tag button{
  margin: 0px 10px 0px 10px !important;
  width: 80px;
}

.close_tab {
  position: absolute;
  left: 720px;
  background-color: #eef3fd;
  border: none;
  border-radius: 10px;
  display:inline-block;
  height: 28px;
  line-height: 10px;
} 
.close_tab:after {
  display: inline-block;
  content: "\00d7";
  font-size:20px;
}

.close_tab:hover{
  color: red;
}

.close_tab:focus {
  border: none;
  outline: none;
}

.confirm_city{
  text-align: right;
  padding-top: 320px;
  padding-right: 10px;
}

.confirm_tag{
  text-align: right;
  padding-top: 10px;
  padding-right: 10px;
}

/* 드레스 */
.weekendYN{
  zoom: 2.5;
}

.weekendYNArea{
  text-align: left !important;
  padding-left: 100px;
}

/* 태그에 호버시 이벤트 */
.tagHover-text {
  padding: 15px 20px;
  background-color: #444444;
  border-radius: 5px;
  color: #ffffff;
  display: none;
}

.sortBtn{
	font-size:5px;
	width:150px;
	border-radius: 15px;
	margin: auto;
}
		
	</style>

</head>
<body>
	
	<jsp:include page="../common/header.jsp"/>
	

	<!-- 목록시작 -->
	<br>
	<div class="latest-news mt-150 mb-150">
		<div class="container">
			
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
                                                    <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="dWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                </label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <input class="hidden_tag d" type="hidden" name="dTag">
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
                                                        <input type="checkbox" class="form-check-input weekendYN" style="margin-right: 0px;" name="mWeek"><span style="vertical-align:10px; width: 120px; border: none; font-size: 17px;">주말영업여부</span>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <input class="hidden_tag m" type="hidden" name="mTag">
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
			
			<br>
			<h2>선택한 조건으로 검색된 정보에요^_^</h2>
			<br>
			<div id="menu5">
				<div>
					<button class="sortBtn btn btn-outline-info">웨딩홀 보기</button> 
					<button class="sortBtn btn btn-outline-info">스튜디오 보기</button> 
					<button class="sortBtn btn btn-outline-info">드레스 보기</button> 
					<button class="sortBtn btn btn-outline-info">메이크업 보기</button>
				</div>
			</div>
			
	
			
			<h4>웨딩홀</h4>			
			<div class="row">
				<c:forEach var="h" items="${ list }">
					<div class="col-lg-4 col-md-6">
						<div class="single-latest-news">
							<a href="${ h.img1 }">사즨</a>
							<div class="news-text-box">
								<h3><a href="#">${ h.name }</a></h3>
								<h3><a href="#">${ h.address }</a></h3>
								<p class="blog-meta">
									<span class="author"><i class="fas fa-user"></i>${ h.enterprise }</span>
								</p>
								<p class="excerpt">대관비 : ${ h.rental }원</p>
								<p class="excerpt">수용인원 : ${ h.seat }석</p>
								<p class="excerpt">1인당 식비 : ${ h.meal }원</p>
								<p class="excerpt">태그 : <p># ${ h.tagContent }</p>
								<a href="#" class="read-more-btn">상세보기 <i class="fas fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="row">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 text-center">
							<div class="pagination-wrap">
								<ul>
									<c:choose>
										<c:when test="${ pi.currentPage eq 1 }">
											<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ pi.currentPage - 1 }">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ p }">${ p }</a></li>
									</c:forEach>
									<c:choose>
										<c:when test="${ pi.currentPage eq pi.maxPage }">
											<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="hList.pr?cpage=${ pi.currentPage + 1 }">Next</a></li>
										</c:otherwise>	
									</c:choose>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 목록 끝 -->
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





	

    
	
	<script>
       	function submitSearch(){
       		$("#searchPlace").submit();
       	}
           $('.basket').on('click', function(){
            $.ajax({
                url:"selectBasket.sb",
                data:{
                    userNo:'${loginMember.userNo}'
                },success:function(list){
                	let value = ""
                	for(let i in list){
                	console.log(list[i])
                		value += `<table><thead>
            				<tr>
            					<th>
            						<input class="basket_item" type="checkbox" name="checkedValue" value="` + list[i].giftNo +`">
            					</th>
            					<th>
            						<h5>` + list[i].giftName + `</h5>						
            					</th>
            				</tr>
            				</thead>
            				<tbody>
            					<tr>
            						<td rowspan="2" class="pImg_area">
            							<img src="` + list[i].filePath + 
            						`"></td>
            						<td class="perPrice_area">
            							개당 : <span class="per_price">` + list[i].giftPrice + `</span>원
            						</td>
            					</tr>
            					<tr>
            						<td class="pCount">
            							수량 : 
            							<i class="fas fa-plus"></i>
            							<input type="text" value="` + list[i].count +`">
            							<i class="fas fa-minus"></i>
            						</td>
            						
            					</tr>
            					<tr>
            						<th colspan="2" class="total_area">
            							금액 : <span class="total">` + (list[i].giftPrice * list[i].count).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") +`</span>원
            						</th>
            					</tr>
            				</tbody>
            			</table>
            			<hr>`
                	}
                    value+=`			<span><h5 class="finalTotal">총금액 : 0원</h5></span><br>
                    <button class="btn btn-outline-secondary" type="submit">구매하기</button>`
                	$("#submitBasket").html(value);
                	
               
                    
                },error:function(){
                    console.log("장바구니 불러오기 ajax 요청 실패!");
                }
            })
            // $('.menu_bg').show(); 
            $('.side_basket').show().animate({
                right:0
            });  
            $(".pCount input").trigger("change");
            // $("html").css("overflow", "hidden")
        })
        $('.schedule').on('click', function(){
            // $('.menu_bg').show(); 
            console.log("오나?")

            $.ajax({
                url:"selectRsv.sb",
                data:{
                    userNo:'${loginMember.userNo}'
                },success:function(list){
                	let value =`<div class="close_btn"><a href="#">       
            			<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBkPSJNMjMuOTU0IDIxLjAzbC05LjE4NC05LjA5NSA5LjA5Mi05LjE3NC0yLjgzMi0yLjgwNy05LjA5IDkuMTc5LTkuMTc2LTkuMDg4LTIuODEgMi44MSA5LjE4NiA5LjEwNS05LjA5NSA5LjE4NCAyLjgxIDIuODEgOS4xMTItOS4xOTIgOS4xOCA5LjF6Ii8+PC9zdmc+">
            			</a>
            		</div>
            		<h4><i class="fas fa-calendar-alt"></i> 예약</h4>
            		<hr>
            		
            		<label class="allCheck" style=" font-size: 18px;"><input type="checkbox" style="zoom: 1.5;"><span style="vertical-align:5px; margin-left: 5px;">전체선택</span></label>
            		<hr style="border: 1px solid lightgray; margin-bottom: 0px; margin-top: 0px;">`;
					for(let i in list){
						value += `<table><thead>
							<tr>
								<th colspan="3">
									<input class="basket_item" type="checkbox" name="checkedValue" value="` + list[i].companyNo +`">
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="3" class="pImg_area">
									<img src="` + list[i].filepath + `">
								</td>
								<td style="padding-left: 10px;">
									<h5>` + list[i].enterprise + `</h5>						
								</td>
							</tr>
							<tr>
								<td style="padding-left: 10px;">
									<span>` + list[i].address + `
										서울특별시 서초구 서초중앙로 14
									</span>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="reservation_phone">
									<h5>
										<i class="fas fa-phone fa-flip-horizontal"></i>
										` + list[i].phone + `
									</h5>
								</td>
							</tr>
							
						</tbody>
					</table>
					<hr>`
					}
					value += `<span><h5 class="reservation_Total">0개 선택</h5></span><br>
						<button class="btn btn-outline-secondary" type="submit">예약하기</button>`
					$(".side_schedule").html(value);        	
                },error:function(){
                    console.log("예약 장바구니 불러오기 ajax 요청 실패!")
                }
            })



            $('.side_schedule').show().animate({
                right:0
            });  
            $(".pCount input").trigger("change");
        });
    </script>

	<jsp:include page="../common/footer.jsp"/>
	
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