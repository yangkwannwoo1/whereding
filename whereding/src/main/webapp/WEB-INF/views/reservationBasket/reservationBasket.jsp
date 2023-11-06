<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <link rel="stylesheet" href="resources/css/assets/css/basket.css">


            <style>
                .cart__info p {
                    font-size: large;
                    font-weight: 400;
                }

                .cart__tag span {
                    font-size: large;
                    margin: 0px 5px;
                    font-weight: 600;
                    color: gray;
                }

                .carousel-inner img {
                    width: 100%;
                    height: 100%;
                    text-align: center !important;
                }

                .cart_detail_img img {
                    height: 300px !important;
                    width: 400px;
                    border: 1px solid lightgrey;
                    border-radius: 20px;
                    margin: auto !important;
                }

                .cart__list {
                    border: none;
                }

                .cart__list td .btn-success {
                    width: 150px;
                    height: 50px;
                    line-height: 35px;
                    font-size: large;
                }

                .cart__list__detail :nth-child(4) {
                    border-left: none;
                }

                .cart__list__detail .carousel-indicators {
                    background-color: transparent;
                    padding: 0px;
                    margin-bottom: 0px;
                    border: none;
                    border-radius: 0px;
                    font-size: 0px;
                    font-weight: 300;
                }

                .cart form {
                    margin: 0px 0px 40px 0px;
                    border: 2px solid lightgray;
                    border-radius: 20px;
                }

                .cart form>h2 {
                    padding: 15px;
                    border-bottom: 2px solid black;
                    margin: 0px !important;
                }

                .carousel-item {
                    text-align: center;
                }

                .cart ul {
                    margin-bottom: 0px;
                }

                .cart table {
                    border-top: none;
                }

                .Calendar {
                    text-align: center;
                }

                .Calendar>thead>tr:first-child>td {
                    font-family: 'Questrial', sans-serif;
                    font-size: 1.1em;
                    font-weight: bold;
                }

                .Calendar>thead>tr:last-child>td {
                    font-family: 'Questrial', sans-serif;
                    font-weight: 600;
                }

                .Calendar>tbody>tr>td>p {
                    font-family: 'Montserrat', sans-serif;
                    height: 45px;
                    width: 45px;
                    border-radius: 45px;
                    transition-duration: .2s;
                    line-height: 45px;
                    margin: 2.5px;
                    display: block;
                    text-align: center;
                }

                .pastDay {
                    color: lightgray;
                }

                .today {
                    background-color: #F5D042;
                    color: #fff;
                    font-weight: 600;
                    cursor: pointer;
                }

                .futureDay {
                    background-color: #FFFFFF;
                    cursor: pointer;
                }

                .futureDay:hover {
                    background: #eee;
                }

                .futureDay.choiceDay,
                .today.choiceDay {
                    background: #0A174E;
                    color: #fff;
                    font-weight: 600;
                    cursor: pointer;
                }

                .modal-content {
                    border: 1px solid black;
                }

                .time_body .btn {
                    width: 75px;
                    margin: 1%;
                    border-color: rgba(var(--gray80), 1);
                }

                .time_body {
                    margin-left: 5%;
                }


                .time_body .act {
                    color: #212529;
                    background-color: #e2e6ea;
                    border-color: #dae0e5;
                    box-shadow: 0 0 0 0.2rem rgba(216, 217, 219, .5);
                }

                /* 토스트메시지 */
                .notification-container {
                    background: white;
                    border-radius: 10px;
                    padding: 15px 20px;
                    opacity: 0;
                    visibility: none;
                    transition: all 1s ease-in-out;
                    text-align: center;
                    width: auto;
                    height: 50px;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    z-index: -999;
                    position: fixed;
                }

                .notification-container.show {
                    z-index: 99999;
                    opacity: 1;
                    visibility: visible;

                    position: fixed;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);

                }
                
                .cart__info *{
                	font-size: 10px;
                }
                .address_area *{
                	font-size: large;
                	font-weight: 600;
                }
            </style>
        </head>

        <body>
            <jsp:include page="../common/header.jsp" />
            <section class="cart">
                <div class="cart__information">
                    <ul>
                        <li>가명을 사용하거나 전화번호 등 타인명의 사용시 예약이 취소 될 수 있습니다.</li>
                        <li>상담은 1:1로 진행합니다.</li>
                        <li>기타문의는 유선전화 또는 카카오톡채널 '웨어딩'으로 해주세요.</li>
                    </ul>
                </div>

                <!-- 여기에 ajax로 데이터 뿌려준다 -->
            </section>
            <div class="cart__mainbtns">
                <button class="cart__bigorderbtn left" onclick="history_back()">이전으로 가기</button>
                <button class="cart__bigorderbtn right" onclick="location.href='index.jsp'">홈으로 가기</button>
            </div>
            <script>
				function history_back(){
					history.back()
				}
            </script>
            <!-- The Modal -->

            <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
                tabindex="-1">

                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <input type='hidden' class='modalCno' value=''>
                            <input type='hidden' class='modalUnit' value=''>
                            <h3 class="modal-title" class="consulting_btn">예약하기</h3>
                            <input type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                                style="background-color: inherit; border: none;" value="X" />

                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <table class="Calendar" style="margin: auto;">
                                <thead>
                                    <tr>
                                        <td onClick="prevCalendar();" class="chmonth" style="cursor:pointer;">&#60;</td>
                                        <td colspan="5">
                                            <span id="calYear"></span>년
                                            <span id="calMonth"></span>월
                                        </td>
                                        <td onClick="nextCalendar();" class="chmonth" style="cursor:pointer;">&#62;</td>
                                    </tr>
                                    <tr>
                                        <td>일</td>
                                        <td>월</td>
                                        <td>화</td>
                                        <td>수</td>
                                        <td>목</td>
                                        <td>금</td>
                                        <td>토</td>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer" style=" border-bottom: 1px solid #ccc;">
                            <h4 style="width: 100%; text-align: left; margin: 1%">시간선택</h4>
                            <div class="time" style="width: 100%;">
                                <div class="time_body">
                                </div>
                            </div>
                        </div>
                        <div style="padding: 3%;">
                            <input id="nextBtn" class="btn btn-success float-right"
                                data-bs-target="#exampleModalToggle2" data-bs-toggle="modal" data-bs-dismiss="modal"
                                onclick="nextForm()" value="다음" style="width: 50px;" disabled />

                            <!-- <button class="btn btn-success float-right" onclick="rsWriteForm();">다음</button> -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="exampleModalToggle2" aria-hidden="true"
                aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalToggleLabel2">예약하기</h5>
                            <input type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                                style="background-color: inherit; border: none;" value="X" />
                        </div>
                        <div class="modal-body">
                            <div class="form-group" style="margin-bottom: 0;">
                                <label for="rsComment" style="font-size:large">궁금하신 사항</label>
                                <textarea class="form-control" rows="10" id="rsComment" style="resize: none;"
                                    placeholder="필수입력 사항입니다." required></textarea>
                                <span class="footer_rsDate"></span>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-success" style="position: absolute;  left: 10.5px;"
                                data-bs-target="#exampleModalToggle" data-bs-toggle="modal" data-bs-dismiss="modal"
                                value="이전" />
                            <button type="submit" class="btn btn-success float-right" id="submitCs" disabled>예약</button>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b886c1f0a0359c5d351f5484b7fce9d&libraries=services"></script>

            <script>
                /*1. 먼저 장바구니에서 예약버튼 눌렸을떄 홀 스드메 구분해서 ajax로 불러온다. 버튼의 갯수를 동적생성위해서 unitTime startTime endTime 가져와야함
          
                  2. 에이작스를 통해서 동적으로 버튼을 만들어준다. 슬라이싱필요
          
                  4. 날짜.trigger(click)	
          
                  3. document click 날짜 함수(){
                      날짜를 클릭했을때 그 해당하는 날짜값을 controller 에 가져가서 그 해당 날짜에 대한 예약을 ajax로 불러온다.
                      상담 시간만 불러오면 됨 - 데이터 형식은 (18:00)으로 되어있음
                      
                      에이작스 성공시 반복문 안에 조건문 생성
                      조건은 해당 시간과 button의 value 가 같은 버튼의 클릭을 막는다. 
          
                  }
          
                  5. 예약을 눌렀을경우 db에 해당 매장의 해당시간의 컬럼을 조회 
          
                  6. 1이면 return error 0이면 insert 하고 돌아옴 , 상담 메시지 창으로 넘어감
          
                  7. 상담메시지 작성하면 insert 를 통해서 db 저장 
          
                  8. 모달 닫음 ->  장바구니에서 제거됨 */

                $(function () {
                    selectBasketList()
                })

                function selectBasketList() {


                    $.ajax({
                        url: "selectBasketList.rs",
                        data: {
                            userNo: ${ loginMember.userNo }
                                }, success: function (list) {
                    //console.log(list.length);
                    if (list.length > 0) {
                        let hall = "";
                        let studio = "";
                        let dress = "";
                        let makeup = "";
                        let null_rs= "";
                        for (let i in list) {
                            let value = "";
                            value += `<table class="cart__list">
                                                        <colgroup>
                                                            <col style="width:30%;">
                                                            <col style="width:25%;">
                                                            <col style="width:25%;">
                                                            <col style="width:20%;">
                                                        </colgroup>
                                                        <tbody class="cart__list__tbody">
                                                            <tr class="cart__list__detail">
                                                                <td rowspan="4" class="cart_detail_img">
                                                                    <div id="demo" class="carousel slide" data-ride="carousel">
                                                                        
                                                                        <ul class="carousel-indicators">
                                                                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                                                                            <li data-target="#demo" data-slide-to="1"></li>
                                                                            <li data-target="#demo" data-slide-to="2"></li>
                                                                        </ul>
        
                                                                        <div class="carousel-inner">
                                                                            <div class="carousel-item active">
                                                                                <img src="` + list[i].file1 + `" width="1100" height="500">
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="` + list[i].file2 + `" width="1100" height="500">
                                                                            </div>
                                                                            <div class="carousel-item">
                                                                                <img src="` + list[i].file2 + `" width="1100" height="500">
                                                                            </div>
                                                                        </div>
                                                                        
                                                                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                                                            <span class="carousel-control-prev-icon"></span>
                                                                        </a>
                                                                        <a class="carousel-control-next" href="#demo" data-slide="next">
                                                                            <span class="carousel-control-next-icon"></span>
                                                                        </a>
                                                                    </div>
                                                                </td> 
                                                                <td style="padding: 15px 2%;" colspan="2">
                                                                    <h3>` + list[i].enterprise + `</h3>
                                                                </td>
                                                                <td rowspan="3" style="border-left: 1px solid lightgrey; padding: 15px;">
                                                                    <input type="hidden" class="hiddenAddress" value="` + list[i].address + `">
                                                                    <div id="map` + i + `" style="width:260px;height:230px; margin-top: 20px; border: 2px solid; display: none;"></div>

                                                                </td>
                                                            </tr>
                                                            <tr>
                                                            	<td colspan="2" style="padding: 15px 2%;" class="address_area">
                                                                    <p><i class="fas fa-map-marker-alt"></i> ` + list[i].address + `</p>
                                                            	</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="cart__info" style="padding: 15px 2%;">
                                                                    <p style="text-align: left;"><i class="fas fa-phone fa-flip-horizontal"></i> ` + list[i].phone + `</p>
                                                                    <p style="text-align: left;"><i class="fas fa-calendar-alt"></i> open ` + list[i].startTime + `:00 / ` + list[i].endTime + `:00</p>
                                                                </td>
                                                                <td class="cart__info" style="padding: 15px 2%;">`;
                            if ((list[i].companyNo).substr(0, 1) == "H") {
                                value +=
                                    `<p><i class="fas fa-utensils"></i> 주말영업 : ` + list[i].weekOpen + `</p>                                                    
                                                                                <p><i class="fas fa-won-sign"></i> 대관비 : ` + list[i].price + `</p>
                                                                                <p><i class="fas fa-chair"></i> 홀 좌석수: `+ list[i].hallSeat + `석</p>
                                                                                <p></p>
                                                                                <p><i class="fas fa-utensils"></i> 식당 좌석수 : ` + list[i].restaurantSeat + `석</p>
                                                                                <p><i class="fas fa-utensils"></i> 식대 : ` + list[i].hallMeal + `원</p>`;
                            } else {
                                value +=
                                    `<p><i class="fas fa-utensils"></i> 주말영업 : ` + list[i].weekOpen + `</p>                                                    
                                                                                <p><i class="fas fa-won-sign"></i> 가격 : ` + list[i].price + `</p>
                                                                                <p></p>`;
                            }

                            value += `</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" class="cart__tag" style="padding: 15px 2%;">`;

                            let tag = (list[i].tagContent)
                            if (tag != null) {
                                tag = tag.split(', ')
                                for (let t in tag) {
                                    value += `<span># ` + tag[t] + `</span>`;
                                }
                            } else {
                                value += `<span> 태그가 존재하지 않습니다.`
                            }
                            value += `</td>
                                                                <td style="text-align: right; padding-right: 15px;">
                                                                    <input type="hidden" value="` + list[i].companyNo + `">
                                                                    <a class="btn btn-success selectSchedule" data-bs-toggle="modal" href="#exampleModalToggle" role="button">예약하기</a>
                                                                </td>  
                                                                
                                                            </tr>
                                                        </tbody>
                                                    </table>`;
                            if ((list[i].companyNo).substr(0, 1) == "H") {
                                hall += value;
                            } else if ((list[i].companyNo).substr(0, 1) == "S") {
                                studio += value;
                            } else if ((list[i].companyNo).substr(0, 1) == "D") {
                                dress += value;
                            } else {
                                makeup += value;
                            }

                        }
                        let html = "";
                        if (hall != "") {
                            html += "<form><h2>WEDDINGHALL</h2>" + hall + "</form>";
                        }
                        if (studio != "") {
                            html += "<form><h2>STUDIO</h2>" + studio + "</form>";
                        }
                        if (dress != "") {
                            html += "<form><h2>DRESS</h2>" + dress + "</form>";
                        }
                        if (makeup != "") {
                            html += "<form><h2>MAKEUP</h2>" + makeup + "</form>";
                        }
                        $(".cart").html(html);
                    } else {
                        console.log("장바구니가 비어있습니다.")
                        null_rs = "<div><br><br><br><h3 style='text-align:center'>장바구니가 비어있습니다.</h3></div>"
                        	let tmp = $(".cart").html()
                    		$(".cart").html(tmp + null_rs);
                    }
                    
                    for(let i in list){
                        a(i,list)

                    }

                }, error: function () {
                    console.log("예약 장바구니 ajax 통신 실패!")
                }
                            })
                        }

            function a(a,list){
                
                                            // 카카오맵 영역
                                            var infowindow = new kakao.maps.InfoWindow({zIndex:1});
                                            var mapContainer = document.getElementById("map" + a)// 지도를 표시할 div 
                
                                            mapOption = {
                                                center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                                                level: 3 // 지도의 확대 레벨
                                            };  
                                            if (mapContainer.style.display === 'none') {
                                                mapContainer.style.display = 'block';
                                            // 지도를 생성합니다    
                                            var map = new kakao.maps.Map(mapContainer, mapOption); 
                                        
                                            // 주소-좌표 변환 객체를 생성합니다
                                            var geocoder = new kakao.maps.services.Geocoder();
                                        
                                            // 주소로 좌표를 검색합니다
                                            geocoder.addressSearch(list[a].address, function(result, status) {
                                        
                                        

                                                // 정상적으로 검색이 완료됐으면 
                                                if (status === kakao.maps.services.Status.OK) {
                                           
                                                   var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                                           
                                                   // 결과값으로 받은 위치를 마커로 표시합니다
                                                   var marker = new kakao.maps.Marker({
                                                       map: map,
                                                       position: coords
                                                   });
                                           

                                                   // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                                   map.setCenter(coords);
                                               } 
                                           });    
                                        }
                                                                            
            }
            
            </script>
            <script>
                function range(start, stop, step) { // 파이썬의 for range함수 
                    if (typeof stop == 'undefined') {
                        stop = start;
                        start = 0;
                    }
                    if (typeof step == 'undefined') {
                        step = 1;
                    }
                    if ((step > 0 && start >= stop) || (step < 0 && start <= stop)) {
                        return [];
                    }
                    var result = [];
                    for (var i = start; step > 0 ? i < stop : i > stop; i += step) {
                        result.push(i);
                    }
                    return result;
                };

                function numberPad(n, width) {  // 숫자 9를 09로 변환
                    n = n + '';
                    return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
                }

                $(function () {

                    // 달력의 날짜를 클릭했을 경우
                    $(document).on("click", ".Calendar tbody tr td p", function () {
                        $(".time_body button").attr("disabled", false);

                        $.ajax({
                            url: "reservationList.rs",
                            data: {
                                code: $(this).closest(".modal-content").find(".modalCno").val(),
                                csYear: $(this).closest(".Calendar").children("thead").find("#calYear").text(),
                                csMonth: $(this).closest(".Calendar").children("thead").find("#calMonth").text(),
                                csDay: $(this).text()
                            }, success: function (list) {
                                //{csNo: 1, productNo: 'H1', userNo: 0, csDate: '2023-11-09 00:00:00', consultingTime: '14:00'}
                                // list가 null이 아닐때 consultingtime에 대해 같은 값을 갖는 버튼 비활성화
                                // 다를 경우 없음

                                // 오늘이선택됐을때
                                if($(".today.choiceDay").length > 0){
                                    // 현재시간이랑 현재분을 가져와서 540 이나 600 같이 바꿔줌
                                    // 600 일경우 600이상인 값에 대한 버튼만 생성
                                    // 만약 선택날짜가 오늘일경우 필터된 결과로 생성
                                    let now = new Date();
                                    let hr = now.getHours();
                                    let min = now.getMinutes();
                                    let castMin = hr*60 + min;
                                    let arr = $(".time_body .btn").get() // 버튼믜 모든 값 09:00, 09:30, ...
                                    let chArr = [];
                                    for(let i in arr){
                                        console.log(arr[i])
                                        let time = Number(arr[i].innerText.substr(0,2)) * 60 + Number(arr[i].innerText.substr(3,2))
                                        chArr.push(time)
                                    }
                                    let filtered = chArr.filter((element) => element > castMin);
                                    console.log(filtered) // 540, 600, ...
                                    // 9:00 을 540으로
                                    // 필터링으로 현재시간보다 높은값만 남김
                                    // 남은것들을 다시 9:00으로 변환
                                    // 변환된 값들을 찾아서 remove
                                    let btnHtml = "";
                                    for (let j in filtered) {
                                        btnHtml += `<button class="btn btn-light">` + numberPad(Math.floor(filtered[j] / 60), 2) + `:` + numberPad(filtered[j] % 60, 2) + `</button>`
                                    }
                                    $(".modal-footer .time_body").html(btnHtml);
                                    if($(".time_body").html() == ""){
                                        console.log("Zzzzzzzzzzz")
                                            $(".time_body").html("<h4 style='margin-top:5px;'>영업이 끝났습니다.</h4>")
                                    }
                                    // 필터된 결과값
                                    //$('button[value>' + castMin + ']');
                                    //console.log(arr[1].innerText) // 19:00
                                    
                                    
                                }else{
                                    createBtn($(".modal-content .modalCno").val())//***
                                }
                                console.log(list)
                                console.log("오냐?")
                                if (list != "") {
                                    console.log("오냐??")
                                    
                                    for (let i in list) {
                                        console.log("오냐???")
                                        $("button:contains('" + list[i].consultingTime + "')").attr("disabled", true);
                                        console.log(list[i].consultingTime)
                                    }
                                }
                                $(".time_body button").removeClass("act");
                                $("#nextBtn").attr("disabled", true);


                            }, error: function () {
                                console.log("예약날짜 불러오기 ajax 통신 실패!")
                            }
                        })

                        $(".chmonth").click(function () {
                            // 다음월이나 이전월로 이동했을때 시간 선택 초기화
                            $(".time_body button").attr("disabled", false);
                            // 현재월일때는 현재날짜로 선택
                            $(".Calendar tbody tr td .today").click();

                        })
                    })


                    $(document).on("click", ".selectSchedule", function () {
                        // 버튼의 갯수를 동적으로 생성하기 위한 ajax
                        $("#rsComment").val("");
                        createBtn($(this).prev().val())
                        $(".Calendar tbody tr td .today").click();
                    })

                })
                function createBtn(e){
                    $.ajax({
                        url: "selectTimeInfo.rs",
                        async: false,
                        data: {
                            companyNo: e
                        }, success: function (data) {
                            
                            //console.log(data) 
                            //Consulting(csNo=0, productNo=H1, userNo=0, csContent=null, csDate=null, startTime=9, endTime=18, consultingTime=null, unitTime=60, openTime=null, closeTime=null)
                            let btnHtml = "";
                            for (let i in data) {

                                // 영업시작 시간부터 영업종료 시간까지 분으로 변경후 step으로 unit 값을 넣어줌 [540, 600, 660, ...]
                                let slicingTime = range(Number(data[i].startTime) * 60, Number(data[i].endTime) * 60, Number(data[i].unitTime))
                                //console.log(slicingTime)

                                for (let j in slicingTime) {
                                    btnHtml += `<button class="btn btn-light">` + numberPad(Math.floor(slicingTime[j] / 60), 2) + `:` + numberPad(slicingTime[j] % 60, 2) + `</button>`
                                }

                            }
                            $(".modal-footer .time_body").html(btnHtml);
                            $(".modal-header .modalCno").val(data[0].productNo);
                            $(".modal-header .modalUnit").val(data[0].unitTime);

                            // 창을 켰을때 오늘날짜에 대해서 예약을 불러와야한다. 
                            //$(".Calendar tbody tr td .today").click();

                        }, error: function () {
                            console.log("스케줄 조회용 ajax 통신 실패!")
                        }

                    })
                }
                function nextForm() {
                    // 예약하기 눌렀을때 현재 페이지에 있는 연 월 일 시간 제품코드를 가져감 userNo는 세션값으로 가져온다
                    // 상세페이지하단에 예약 정보를 뿌려준다.
                    // 글쓰기를 한 후 완료를 누르면 모달이 닫히고 예약완료 토스트 띄워준다.
                    let csno = $(".modal-content .modalCno").val()
                    let csyear = $(".Calendar thead #calYear").text()
                    let csmonth = $(".Calendar thead #calMonth").text()
                    let csday = $(".Calendar tbody tr td .choiceDay").text()
                    let cstime = $(".time_body .act").text()
                    console.log(csno)

                    $(".footer_rsDate").text("예약날짜 : " + csyear + "/" + csmonth + "/" + csday + " " + cstime.substr(0, 2) + "시 " + cstime.substr(3, 2) + "분");
                    //예약날짜 : 2011/11/12 12시 00분

                }
                $(document).on("click", ".time_body button", function () {
                    $(".time_body button").removeClass("act");

                    $(this).addClass('act');
                })
                // 날짜와 시간을 다 눌렀을때 다음버튼 활성화
                $(function () {
                    $(document).on("click", ".modal-content *", function () {
                        if ($(".Calendar tbody .choiceDay").length > 0 && $(".time_body .act").length > 0) {
                            $("#nextBtn").attr("disabled", false);
                        } else {
                            $("#nextBtn").attr("disabled", true);
                        }
                    })

                    $(document).on("click", ".Calendar thead tr td", function () {
                        $(".time_body button").removeClass("act");
                    })
                })
                $("#rsComment").keyup(function () {
                    if ($("#rsComment").val() == "") {
                        $("#submitCs").attr("disabled", true)
                    } else {
                        $("#submitCs").attr("disabled", false)
                    }
                })

                // 예약하기를 눌렀을때
                $("#submitCs").click(function () {
                    let csyear = $(".Calendar thead #calYear").text()
                    let csmonth = $(".Calendar thead #calMonth").text()
                    let csday = $(".Calendar tbody tr td .choiceDay").text()
                    let cstime = $(".time_body .act").text()
                    console.log($(".modalUnit").val())
                    $.ajax({
                        url: "insert.rs",
                        data: {
                            productNo: $(".modal-content .modalCno").val(),
                            userNo: ${ loginMember.userNo },
                        csContent: $("#rsComment").val(),
                        csDate: csyear + "/" + csmonth + "/" + csday,
                        startTime: cstime,
                        unitTime: $(".modalUnit").val()
                        }, success: function (data) {
                    if (data == "NNNNN") {
                        $(".notification-container").css("background-color", "red")
                        $("#notification-container p").text("해당 시간에는 예약할 수 없습니다.")
                    } else if (data == "NNNNS") {
                        $(".notification-container").css("background-color", "#28a745")
                        $("#notification-container p").text("예약이 완료되었습니다.")
                        $(".btn-close").click();
                        selectBasketList();


                    } else {	// insert 오류 발생
                        $(".notification-container").css("background-color", "red")
                        $("#notification-container p").text("오류가 발생했습니다.")
                    }
                    showNotification()
                }, error: function () {
                    console.log("예약하기 ajax 전송 실패")
                }
                    })
                })

            </script>

            <script>
                window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행

                let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
                let today = new Date();     // 페이지를 로드한 날짜를 저장
                today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

                // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
                function buildCalendar() {

                    let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
                    let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

                    let tbody_Calendar = document.querySelector(".Calendar > tbody");
                    document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
                    document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신


                    while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                        tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
                    }

                    let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           

                    for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
                        let nowColumn = nowRow.insertCell();        // 열 추가
                    }

                    for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

                        let nowColumn = nowRow.insertCell();        // 새 열을 추가하고


                        let newDIV = document.createElement("p");
                        newDIV.innerHTML = leftPad(nowDay.getDate());        // 추가한 열에 날짜 입력
                        nowColumn.appendChild(newDIV);

                        if (nowDay.getDay() == 6) {                 // 토요일인 경우
                            nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
                        }

                        if (nowDay < today) {                       // 지난날인 경우
                            newDIV.className = "pastDay";
                        }
                        else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                            newDIV.className = "today";
                            newDIV.onclick = function () { choiceDate(this); }
                        }
                        else {                                      // 미래인 경우
                            newDIV.className = "futureDay";
                            newDIV.onclick = function () { choiceDate(this); }
                        }
                    }
                }

                // 날짜 선택
                function choiceDate(newDIV) {
                    if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
                        document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
                    }
                    newDIV.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
                }

                // 이전달 버튼 클릭
                function prevCalendar() {
                    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
                    buildCalendar();    // 달력 다시 생성
                }
                // 다음달 버튼 클릭
                function nextCalendar() {
                    nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
                    buildCalendar();    // 달력 다시 생성
                }

                // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
                /* function leftPad(value) {
                    if (value < 10) {
                        value = "0" + value;
                        return value;
                    }
                    return value;
                }*/
                function leftPad(value) {
                    return value;
                }
            </script>
            <div class="notification-container" id="notification-container">
                <p></p>
            </div>
            <script>
                const notification = document.getElementById('notification-container')
                // Show notification
                const showNotification = () => {
                    notification.classList.add('show')
                    setTimeout(() => {
                        notification.classList.remove('show')
                    }, 2000)
                }
            </script>
            <jsp:include page="../common/footer.jsp" />

        </body>

        </html>