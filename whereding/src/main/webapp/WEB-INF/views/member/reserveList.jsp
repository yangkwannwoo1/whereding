<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 변경</title>

    <!-- 필요한 스타일시트 및 스크립트 링크 추가 -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <!-- 추가적인 스타일시트 및 스크립트를 여기에 추가 -->
    <!-- 카카오 지도용 -->
    <!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7706a53c60198a30475a97398b6f325"></script> -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b7706a53c60198a30475a97398b6f325&libraries=services,clusterer,drawing"></script>
    <style>
        /* 카테고리 */
        main {
             width: 1200px;
             height: auto;
             margin: 0 auto;
             overflow: hidden;
         }
 
         main > aside {
             float: left;
             width: 220px;
             height: 100%;
         }
 
         main > aside > .category {
             position: relative;
             width: 100%;
             height: 600px;
             background: #0073C6;
             margin-top: 80px;
         }
 
         main > aside > .category > li {
             width: 100%;
             line-height: 50px;
             color: #ccc;
             font-size: 15px;
             font-weight: bold;
             border-bottom: 1px solid #2b313f;
             box-sizing: border-box;
         }
 
         main > aside > .category > li > a {
             display: block;
             padding: 0 30px;
             line-height: 80px;
             color: #F98973  ;
             font-weight: bold;
             text-decoration: none;
             font-size: 1em;
         }
 
         main > aside > .category > li > a:hover {
             background: #F28123;
             color: #fff;
         }
 
         main > section {
             float: right;
             width: 900px;
             height: auto;
             box-sizing: border-box;
         }
 
         .tab-content{
             display: none;
             background: #F28123;
             padding: 15px;
         }
 
         /*수정 */
         .wrap{
             box-sizing: border-box;
             width: 1200px;
             height: 700px;
             margin: auto;
             margin-top: 100px;
         }   
         #header_1{
             margin: auto;
             height: 100px;
         }
         #header_2{
             float:right;
             margin:auto;
             width: 570px;
             margin-top: 8px;
         }
         #navi{
             box-sizing: border-box;
             width: 260px;
             margin-left: 30px;
             box-shadow: 5px 0 5px -5px #333;
         }
         
         #main{
             box-sizing: border-box;
             width: 800px;
         }
         .cont{
             float: left;
         }
         input{
             border-radius: 5px;
         }
         .sujung{
             background-color: black;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         .chenge{
             background-color: blue;
             color: white;
             border-radius: 10px;
             width: 130px;
             height: 50px;
         }
         .exit{
             background-color: red;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         input{
             width: 200px;
             height: 30px;
         }
         #pwd_sujung{
             background-color: blue;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         #exit_1{
             background-color: red;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         
         #cg-span{
             top:8px;
         }
         
         #profileimg{
             border-radius: 80px;
         }
         
         .gradedetail2{
           position: absolute;
           width: 100px;
           -webkit-border-radius: 8px;
           -moz-border-radius: 8px;
           border-radius: 10px;
           background: #333;
           color: #fff;
           font-size: 14px;
         }
 
         .gradedetail1{
             cursor: pointer;
         }
         
         .my-navi{
             width: 140px;
             height: 60px;
             margin-bottom: 30px;
             padding-top: 10px;
             font-size: 25px;
         }
         
         .myProfile{
             border: 2px solid lightgray;
             width: 450px;
             height: 340px;
             padding: 50px;
             border-radius: 10px;
             margin-left: 20px;
         }
         
         .select-navi{
             text-decoration : underline;
             text-underline-position: under;
             font-weight: bolder;
         }
         li{
             list-style: none;
         }
         a{
             color: white;
         }
         ul{
             padding-left: 30px;
         }
         #container{
         width: 800px;
         height: auto;
         margin: auto;
     }
     .container_header{
         width: 100%;
         height: 20%;
         border: 1px solid black;
     }
     .product_wrap{
         width: 750px;
         /* height: 330px; */
         
         border-radius: 12px;
         box-shadow: rgba(0, 0, 0, 0.08) 0px 2px 4px 0px, rgba(0, 0, 0, 0.16) 0px 0px 1px 0px;
         padding: 24px 24px 16px;
     }
     .product_header{
         width: 100%;
         height: 28px;
         display: flex;
         font-size: 20px;
         font-weight: bold;
         font-stretch: normal;
         font-style: normal;
         line-height: 1.4;
         letter-spacing: -0.5px;
         color: rgb(17, 17, 17);
     }
     .product_content{
         border-radius: 8px;
         border: 1px solid rgb(238, 238, 238);
         background-color: rgb(255, 255, 255);
         margin-top: 16px;
     }
     .d{
         margin-left: 400px;
         color: #999;
         font-size: 17px;
         font-weight: 700;
     }
     .content_tr{
         /* border: 1px solid red; */
         width: 100%;
       
     }
     .content_td1{
         height: 100%;
         padding: 20px;
         vertical-align: top;
     }
     .content_td2{
         width: 200px;
         height: 100%;
         text-align: center;
         border-left: 1px solid rgb(238, 238, 238);
         padding: 20px;
     }
     .product_status{
         width: 100%;
         align-items: center;
         margin-bottom: 4px;
         height: 20px;
     }
     .product_img{
         width: 100%;
         border: none;
         height: 80px;
         display: flex;
         margin-top: 10px;
         
     }
     .product_status{
         font-weight: bold;
         font-size: 1.25rem;
         color: #111111;
         line-height: 1;
     }
     .product_name{
        padding-top: 0;
         padding: 10px;
     }
     .refund_btn, .cancel_btn{
         width: 150px;
         border: 1px solid rgb(221, 221, 221);
         color: rgb(17, 17, 17);
         background-color: rgb(255, 255, 255);
         border-radius: 4px;
         height: 2.25rem;
     }
     .cancel_btn{
         margin-top: 10px;
 
     }
     hr {
         border: none; /* 기본 선 제거 */
         border-top: 1px solid #9999994d; /* 원하는 스타일 및 색상으로 설정 */
     }
     .header_h{
         color: #f28123;
         font-weight: bold;
         font-size: 20px;
     }
     .header_span{
         font-size: 15px;
         margin-left: 270px;
         color: #999;
 
     }
     .product_review{
         margin : 10px;
         margin-top: 10px;
     }
     #review_btn{
         width: 58px;
         height: 34px;
         color: rgb(52, 106, 255);
         background-color: rgb(255, 255, 255);
         border: 1px solid #f28123;
         cursor: pointer;
     }
   
   
     .refund_btn:hover, .cancel_btn:hover, #review_btn:hover{
         background-color: #f28123;
         color: white;
     }
     h3{
         background-color: #f28123;
     }
     h3>span{
         color: rgba(255, 255, 255, 0.929);
     }
     .rating {
         font-size: 30px;
     }
 
     .rating span {
         cursor: pointer;
     }
 
     .rated {
         color: black;
     }
 
     #selectedRating {
         font-size: 20px;
     }
     /* 모달 스타일 */
     .modal {
    display: none; /* 초기에 숨김 */
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7); /* 반투명 배경 */
    z-index: 1;
    overflow: auto;
    }

    .modal-content {
        background-color: #fff;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 60%;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        text-align: center;
        position: relative;
    }

    .close {
        position: absolute;
        right: 5px;
        top: 5px;
        font-size: 20px;
        font-weight: bold;
        color: #888;
        cursor: pointer;
    }
    
     </style>
</head>
<body>
    <!-- 상단 헤더 포함 -->
    <jsp:include page="../common/header.jsp"/>

    <div id="wrapper">
        <main>
            <aside>
                <ul class="category">
                    <li>
                        마이페이지
                    </li>
                    <li>
                        <a href="giftOredrList.me?userNo=${loginMember.userNo}">
                            <i class="fas fa-home"data-tab="tab-1"> </i> 쇼핑
                            </i>
                        </a>
                        <ul>
                            <li>
                                <a href="giftOredrList.me?userNo=${loginMember.userNo}" style="color: white;">결제내역 / 배송조회</a>
                            </li>
                            <li>
                                <a href="reserveList.me?userNo=${loginMember.userNo}" style="color: white;">상담예약 확인목록</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-laptop" data-tab="tab-2"></i> my 혜택
                            </i>
                        </a>
                        <ul>
                            <li>
                                <a href="#" style="color: white;">쿠폰 보유내역</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="myPage.me">
                            <i class="fas fa-utensils" data-tab="tab-4"></i> my정보
                            </i>
                        </a>
                        <ul>
                            <li>
                                <a href="myPage.me" style="color: white;">내정보조회</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </aside>
            <section class="cart">
                <div id="container" style="margin: 0;">
                    <h3 align="center" class="header_h"><span>상담 예약 내역</span></h3>
                    <span class="header_span">고갱님이 예약하신 상담 내역입니다.</span>
                    
                    
                    <c:forEach var="hal" items="${hall}">
	                    <div class="product_wrap">
	                        <table>
	                            <colgroup>
	                                <col width="600">
	                                <col width>
	                            </colgroup>
	                            <div class="product_header">${hal.csDate} ${hal.csStartTime} 예약<div class="d">상품 상세</div></div>
	                            <tr class="content_tr">
	                                <td class="content_td1">
	                                    <div class="product_status">
	                                        <span>웨딩홀</span>
	                                    </div>
	                                    <div class="product_img">
	                                        <img src="${hal.imgPath}/${hal.img1}" width="25%" height="100%">
	                                        <div class="product_name">
	                                            <div><span>${hal.enterprise}</span></div>
	                                            <div><span>${hal.name}</span></div>
	                                            <div><span>${hal.phone}</span></div>
	                                            <div><span>${hal.address}</span></div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td class="content_td2">
	                                    <button class="cancel_btn" onclick="cansel('${hal.phone}');">일정변경</button>
	                                    <button class="cancel_btn">상담취소</button>
	                                    <button class="cancel_btn map-button" onclick="toggleMap('${hal.enterprise}', 'map_${hal.csNo}','${hal.enterprise}');" >지도보기</button>

	                                </td>
	                            </tr>
	                        </table>
                            <div id="${hal.enterprise}" style="width:700px;height:300px; margin-top: 20px; border: 2px solid; display: none;"></div>
                            <c:if test="${hal.reviewNo eq '0'}">
	                        <div class="product_review">
	                            <form action="consultingReview.me" method="post" enctype="multipart/form-data" style="margin-top: 20px;">
	                                리뷰 : <select name="score" id="grivGrade">
                                        <option value="5">★★★★★</option>
                                        <option value="4">★★★★</option>
                                        <option value="3">★★★</option>
                                        <option value="2">★★</option>
                                        <option value="1">★</option>
                                    </select>
                                    <input type="file" name="upfile" style="height: 32px;">                                        
	                                <input type="text" style="width: 90%; height: 30px; margin-top: 7px;" name="content" required>
	                                <button id="review_btn">등록</button>
                                    <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                    <input type="hidden" name="csNo" value="${hal.csNo}">
	                            </form>
	                        </div>
                        </c:if>
                        
                          
	                    </div>
                    </c:forEach>
                    <c:forEach var="st" items="${studio}">
	                    <div class="product_wrap">
	                        <table>
	                            <colgroup>
	                                <col width="600">
	                                <col width>
	                            </colgroup>
	                            <div class="product_header">${st.csDate} ${st.csStartTime} 예약<div class="d">상품 상세</div></div>
	                            <tr class="content_tr">
	                                <td class="content_td1">
	                                    <div class="product_status">
	                                        <span>스튜디오</span>
	                                    </div>
	                                    <div class="product_img">
	                                        <img src="${st.imgPath}/${st.img1}" width="25%" height="100%">
	                                        <div class="product_name">
	                                            <div><span>${st.stEnterprise}</span></div>
	                                            <div><span>${st.phone}</span></div>
	                                            <div><span>${st.address}</span></div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td class="content_td2">
	                                    <button class="cancel_btn" onclick="cansel('${st.phone}');">일정변경</button>
	                                    <button class="cancel_btn">상담취소</button>
                                        <button class="cancel_btn map-button" onclick="toggleMap('${st.stEnterprise}', 'map_${st.csNo}','${st.stEnterprise}');" >지도보기</button>
	                                </td>
	                            </tr>
	                        </table>
                            <div id="${st.stEnterprise}" style="width:700px;height:300px; margin-top: 20px; border: 2px solid; display: none;"></div>
                            <c:if test="${st.reviewNo eq '0'}">
	                        <div class="product_review">
	                            <form action="consultingReview.me" method="post" enctype="multipart/form-data" style="margin-top: 10px;">
	                                리뷰 : <select name="score" id="grivGrade">
                                        <option value="5">★★★★★</option>
                                        <option value="4">★★★★</option>
                                        <option value="3">★★★</option>
                                        <option value="2">★★</option>
                                        <option value="1">★</option>
                                    </select>
                                    <input type="file" name="upfile">                                        
	                                <input type="text" style="width: 90%; height: 30px; margin-top: 7px;" name="content" required>
	                                <button id="review_btn">등록</button>
                                    <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                    <input type="hidden" name="csNo" value="${st.csNo}">
	                            </form>
	                        </div>
                            </c:if>
	                    </div>
                    </c:forEach>  
                    <c:forEach var="dr" items="${dress}">
	                    <div class="product_wrap">
	                        <table>
	                            <colgroup>
	                                <col width="600">
	                                <col width>
	                            </colgroup>
	                            <div class="product_header">${dr.csDate} ${dr.csStartTime} 예약<div class="d">상품 상세</div></div>
	                            <tr class="content_tr">
	                                <td class="content_td1">
	                                    <div class="product_status">
	                                        <span>드레스</span>
	                                    </div>
	                                    <div class="product_img">
	                                        <img src="${dr.imgPath}/${dr.img1}" width="25%" height="100%">
	                                        <div class="product_name">
	                                            <div><span>${dr.drEnterprise}</span></div>
	                                            <div><span>${dr.phone}</span></div>
	                                            <div><span>${dr.address}</span></div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td class="content_td2">
	                                    <button class="cancel_btn" onclick="cansel('${dr.phone}');">일정변경</button>
	                                    <button class="cancel_btn">상담취소</button>
                                        <button class="cancel_btn map-button" onclick="toggleMap('${dr.drEnterprise}', 'map_${dr.csNo}','${dr.drEnterprise}');" >지도보기</button>
	                                </td>
	                            </tr>
	                        </table>
                            <div id="${dr.drEnterprise}" style="width:700px;height:300px; margin-top: 20px; border: 2px solid; display: none;"></div>
                            <c:if test="${dr.reviewNo eq '0'}">
	                        <div class="product_review">
	                            <form action="consultingReview.me" method="post" enctype="multipart/form-data">
	                                리뷰 : <select name="score" id="grivGrade">
                                        <option value="5">★★★★★</option>
                                        <option value="4">★★★★</option>
                                        <option value="3">★★★</option>
                                        <option value="2">★★</option>
                                        <option value="1">★</option>
                                    </select>
                                    <input type="file" name="upfile">                                        
	                                <input type="text" style="width: 90%; height: 30px; margin-top: 7px;" name="content" required>
	                                <button id="review_btn">등록</button>
                                    <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                    <input type="hidden" name="csNo" value="${dr.csNo}">
	                            </form>
	                        </div>
                            </c:if>
	                    </div>
                    </c:forEach>  
                    <c:forEach var="ma" items="${makeup}">
	                    <div class="product_wrap">
	                        <table>
	                            <colgroup>
	                                <col width="600">
	                                <col width>
	                            </colgroup>
	                            <div class="product_header">${ma.csDate} ${ma.csStartTime} 예약<div class="d">상품 상세</div></div>
	                            <tr class="content_tr">
	                                <td class="content_td1">
	                                    <div class="product_status">
	                                        <span>메이크업</span>
	                                    </div>
	                                    <div class="product_img">
	                                        <img src="${ma.imgPath}/${ma.img1}" width="25%" height="100%">
	                                        <div class="product_name">
	                                            <div><span>${ma.maEnterprise}</span></div>
	                                            <div><span>${ma.phone}</span></div>
	                                            <div><span id="address">${ma.address}</span></div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td class="content_td2">
	                                    <button class="cancel_btn" onclick="cansel('${ma.phone}');">일정변경</button>
	                                    <button class="cancel_btn">상담취소</button>
                                        <button class="cancel_btn map-button" onclick="toggleMap('${ma.maEnterprise}', 'map_${ma.csNo}','${ma.maEnterprise}');" >지도보기</button>
	                                </td>
	                            </tr>
	                        </table>
                            <div id="${ma.maEnterprise}" style="width:700px;height:300px; margin-top: 20px; border: 2px solid; display: none;"></div>
                            <c:if test="${ma.reviewNo eq '0'}">
	                        <div class="product_review">
	                            <form action="consultingReview.me" method="post" enctype="multipart/form-data">
	                                리뷰 : <select name="score" id="grivGrade">
                                        <option value="5">아따 아주 좋았다</option>
                                        <option value="4">좋았다</option>
                                        <option value="3">그냥 뭐</option>
                                        <option value="2">꺼져라</option>
                                        <option value="1">퉤</option>
                                    </select>
                                    <input type="file" name="upfile">                                        
	                                <input type="text" style="width: 90%; height: 30px; margin-top: 7px;" name="content" required>
	                                <button id="review_btn">등록</button>
                                    <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                    <input type="hidden" name="csNo" value="${ma.csNo}">
	                            </form>
	                        </div>
                            </c:if>
	                    </div>
                    </c:forEach>  
                </div>
                
            </section>
        </main>
    </div>
    <script>
                                
        // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
        var infowindow = new kakao.maps.InfoWindow({zIndex:1});
    
        
        function toggleMap(address, mapId, mapnam) {
         console.log(address)
         console.log(mapId)
         console.log(mapnam)
  

        var mapContainer = document.getElementById(mapnam), // 지도를 표시할 div 
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
        ps.keywordSearch(address, placesSearchCB); 
    
    
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
                infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
                infowindow.open(map, marker);
            });
        }
     } else {
     mapContainer.style.display = 'none';
 }
        }
     
    </script>
    <script>
        function cansel(phone){
            console.log(phone);
            alert("일정변경은 업체측으로 연락 바랍니다.  ☎"+phone);
        }
    </script>
    
    
    <!-- jQuery 및 추가 스크립트 포함 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    
<!-- 하단 푸터 포함 -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>
