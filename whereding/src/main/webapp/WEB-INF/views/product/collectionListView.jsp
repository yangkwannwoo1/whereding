
<html lang="en">
<head>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

.news-text-box:hover{
    cursor: pointer;
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
<!-- 			<div id="menu5">
				<div>
					<button class="sortBtn btn btn-outline-info">웨딩홀 보기</button> 
					<button class="sortBtn btn btn-outline-info">스튜디오 보기</button> 
					<button class="sortBtn btn btn-outline-info">드레스 보기</button> 
					<button class="sortBtn btn btn-outline-info">메이크업 보기</button>
				</div>
			</div> -->
			
			<div style="">
				<span style="font-size: 30px; font-weight: 700; font-size: 30px">${ category }</span>	
				<input class="enroll_collection btn btn-warning float-right" type="button" value="업체등록" style="height:40px;">		
			</div>
			<script>
				$(".enroll_collection").click(function(){
					location.href="cEnrollForm.bo?category=" + '${ category }';
				})
			
			</script>
			<div class="row collectionList">
				<c:forEach var="c" items="${clist}">
					<div class="col-lg-4 col-md-6">
						<div class="single-board">
							
							<div class="news-text-box">
      							<p class="excerpt" style="text-align: right; padding: 3% 5% 0% 0%">
									<img src="resources/css/assets/img/heart_y.png" style="height: 30px; right:0"><span class="great_count" style="font-size:20px; vertical-align: middle; font-weight: 600; margin-left: 2%">${ c.greatCount }</span>
								</p>
                                <img src="${ c.imgPath }" style="width: 300px; height: 200px; margin-bottom: 3%; border-radius: 10px;">
								<h3><a href="#">${ c.enterprise }</a></h3>
								<p><i class="fas fa-map-marker-alt"> ${ c.address }</i></p>
								<p class="price_won"><i class="fas fa-won">${ c.price }</i></p>
								<p class="blog-meta">
									<span class="author">
                                        <c:set var="tag" value="${fn:split(c.tagContent,',')}" />
                                        <c:forEach var="it" items="${tag}" varStatus="g">
                                            <c:choose>
                                                <c:when test="${not empty it }">
                                                    <span style="font-size: 14px; color: black; font-weight: 600; opacity: 1;"># ${ it }</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span style="font-size: 14px; color: black; font-weight: 600; opacity: 1; opacity: 0;"> empty</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </span>
								</p>
								<a class="read-more-btn">상세보기 <i class="fas fa-angle-right"></i></a>
								<input class="cno" type="hidden" value="${ c.code }">
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<script>
	            $(function(){
                    let price = $(".collectionList .news-text-box .price_won .fa-won");
                    
                    for(let i = 0; i < price.length; i++){
                        $(price[i]).text($(price[i]).text().toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원")
                        
                    }


	        		$(".collectionList .single-board").click(function(){
	        			location.href = 'cDetail.bo?category=${ category }&cno=' + $(this).parent().find(".cno").val();
	        		})
	        	})
			</script>

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
											<li class="page-item"><a class="page-link" href="cList.bo?category=${ category }&cpage=${ pi.currentPage - 1 }">Previous</a></li>
										</c:otherwise>
									</c:choose>
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                                        <c:choose>
                                            <c:when test="${ pi.currentPage eq p }">
                                                <li class="page-item disabled"><a class="page-link" href="cList.bo?category=${ category }&cpage=${p}">${p}</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="page-item"><a class="page-link" href="cList.bo?category=${ category }&cpage=${p}">${p}</a></li>
                                            </c:otherwise>
                                        </c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${ pi.currentPage eq pi.maxPage }">
											<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="cList.bo?category=${ category }&cpage=${pi.currentPage + 1}">Next</a></li>
										</c:otherwise>	
									</c:choose>
                                    <script>
                                        $(function(){

                                            $(".page-link").click(function(e){
                                                console.log(e);
                                                $(e).parent().attr("class","page-item active");
                                            })
                                            
                                        })
                                    </script>
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