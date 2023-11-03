<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/assets/css/basket.css">


    <style>
        .cart__info p{
            font-size: large;
            font-weight: 400;
        }
        .cart__tag span{
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
        .cart_detail_img img{
            height: 300px !important;
            width: 400px; 
            border: 1px solid lightgrey; 
            border-radius: 20px;
            margin: auto !important;
        }

        .cart__list{
            border: none;
        }

        .cart__list td .btn-success{
            width: 150px; 
            height: 50px; 
            line-height: 35px; 
            font-size: large;
        }
        .cart__list__detail :nth-child(4){
            border-left: none;
        }

        .cart__list__detail .carousel-indicators{
            background-color: transparent;
            padding: 0px;
            margin-bottom: 0px;
            border: none;
            border-radius: 0px;
            font-size: 0px;
            font-weight: 300; 
        }
        .cart form{
            margin: 0px 0px 40px 0px;
            border: 2px solid lightgray;
            border-radius: 20px;
        }

        .cart form>h2{
            padding: 15px;
            border-bottom: 2px solid black;
            margin: 0px !important;
        }
        .carousel-item{
            text-align: center;
        }

        .cart ul{
            margin-bottom: 0px;
        }

    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>가명을 사용하거나 전화번호 등 타인명의 사용시 예약이 취소 될 수 있습니다.</li>
                <li>상담은 1:1로 진행합니다.</li>
                <li>기타문의는 유선전화 또는 카카오톡채널 '웨어딩'으로 해주세요.</li>
            </ul>
        </div>
        <form>
            <h2>WEDDING HALL</h2>
            <table class="cart__list">
                <colgroup>
                    <col style="width:30%;">
                    <col style="width:25%;">
                    <col style="width:25%;">
                    <col style="width:20%;">
                </colgroup>
                <tbody class="cart__list__tbody">
                    <tr class="cart__list__detail">
                        <td rowspan="3" class="cart_detail_img">
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
                                    <img src="https://mediahub.seoul.go.kr/wp-content/uploads/2015/11/25ff6c1d2a9567d9b9ecf9ed326273bc.jpg" alt="Los Angeles" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="https://mediahub.seoul.go.kr/wp-content/uploads/2015/11/25ff6c1d2a9567d9b9ecf9ed326273bc.jpg" alt="Chicago" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="https://mediahub.seoul.go.kr/wp-content/uploads/2015/11/25ff6c1d2a9567d9b9ecf9ed326273bc.jpg" alt="New York" width="1100" height="500">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                              </div>
                        </td> 
                        <td style="padding: 15px 2%;" colspan="2">
                            <h2>머시기 웨딩홀</h2>
    
                        </td>
                        <td rowspan="2" style="border-left: 1px solid lightgrey; padding: 15px;">
                            <img src="assets/img/location.png" style="height: 230px; width: 100%;" alt="">

                        </td>
                    </tr>
                    <tr>
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-map-marker-alt"></i> 서울 강남구 역삼 머시깽이</p>
                            <p style="text-align: left;"><i class="fas fa-phone fa-flip-horizontal"></i> 02-1234-4561</p>
                            <p style="text-align: left;"><i class="fas fa-calendar-alt"></i> open 9:00 / close 18:00</p>
                        </td>
                        
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-won-sign"></i> 대관비 : 100,000,000</p>
                            <p><i class="fas fa-chair"></i> 홀 좌석수: 500석</p>

                            <p></p>
                            <p><i class="fas fa-utensils"></i> 식당 좌석수 : 500석</p>
                            <p><i class="fas fa-utensils"></i> 식대 : 50,000원</p>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" class="cart__tag" style="padding: 15px 2%;">
                            <span># 머시꺵이</span>
                            <span># 맛있다</span>
                            <span># 분위기 좋다잉</span>
                        </td>
                        <td style="text-align: right; padding-right: 15px;">
                            <a href="" class="btn btn-success">예약하기</a>
                        </td>
                    </tr>
                </tbody>

            </table>
            <table class="cart__list">
                <colgroup>
                    <col style="width:30%;">
                    <col style="width:25%;">
                    <col style="width:25%;">
                    <col style="width:20%;">
                </colgroup>
                <tbody class="cart__list__tbody">
                    <tr class="cart__list__detail">
                        <td rowspan="3" class="cart_detail_img">
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
                                    <img src="assets/img/1.jpg" alt="Los Angeles" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="assets/img/a.jpg" alt="Chicago" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="assets/img/abt.jpg" alt="New York" width="1100" height="500">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                              </div>
                        </td> 
                        <td style="padding: 15px 2%;" colspan="2">
                            <h2>머시기 웨딩홀</h2>
    
                        </td>
                        <td rowspan="2" style="border-left: 1px solid lightgrey; padding: 15px;">
                            <img src="assets/img/location.png" style="height: 230px; width: 100%;" alt="">

                        </td>
                    </tr>
                    <tr>
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-map-marker-alt"></i> 서울 강남구 역삼 머시깽이</p>
                            <p style="text-align: left;"><i class="fas fa-phone fa-flip-horizontal"></i> 02-1234-4561</p>
                            <p style="text-align: left;"><i class="fas fa-calendar-alt"></i> open 9:00 / close 18:00</p>
                        </td>
                        
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-won-sign"></i> 대관비 : 100,000,000</p>
                            <p><i class="fas fa-chair"></i> 홀 좌석수: 500석</p>

                            <p></p>
                            <p><i class="fas fa-utensils"></i> 식당 좌석수 : 500석</p>
                            <p><i class="fas fa-utensils"></i> 식대 : 50,000원</p>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" class="cart__tag" style="padding: 15px 2%;">
                            <span># 머시꺵이</span>
                            <span># 맛있다</span>
                            <span># 분위기 좋다잉</span>
                        </td>
                        <td style="text-align: right; padding-right: 15px;">
                            <a href="" class="btn btn-success">예약하기</a>
                        </td>
                    </tr>
                </tbody>

            </table>
        </form>


        <form>
            <h2>STUDIO</h2>
            <table class="cart__list">
                <colgroup>
                    <col style="width:30%;">
                    <col style="width:25%;">
                    <col style="width:25%;">
                    <col style="width:20%;">
                </colgroup>
                <tbody class="cart__list__tbody">
                    <tr class="cart__list__detail">
                        <td rowspan="3" class="cart_detail_img">
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
                                    <img src="assets/img/1.jpg" alt="Los Angeles" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="assets/img/a.jpg" alt="Chicago" width="1100" height="500">
                                  </div>
                                  <div class="carousel-item">
                                    <img src="assets/img/abt.jpg" alt="New York" width="1100" height="500">
                                  </div>
                                </div>
                                
                                <!-- Left and right controls -->
                                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#demo" data-slide="next">
                                  <span class="carousel-control-next-icon"></span>
                                </a>
                              </div>
                        </td> 
                        <td style="padding: 15px 2%;" colspan="2">
                            <h2>머시기 웨딩홀</h2>
    
                        </td>
                        <td rowspan="2" style="border-left: 1px solid lightgrey; padding: 15px;">
                            <img src="assets/img/location.png" style="height: 230px; width: 100%;" alt="">

                        </td>
                    </tr>
                    <tr>
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-map-marker-alt"></i> 서울 강남구 역삼 머시깽이</p>
                            <p style="text-align: left;"><i class="fas fa-phone fa-flip-horizontal"></i> 02-1234-4561</p>
                            <p style="text-align: left;"><i class="fas fa-calendar-alt"></i> open 9:00 / close 18:00</p>
                        </td>
                        
                        <td class="cart__info" style="padding: 15px 2%;">
                            <p><i class="fas fa-won-sign"></i> 대관비 : 100,000,000</p>
                            <p><i class="fas fa-chair"></i> 홀 좌석수: 500석</p>

                            <p></p>
                            <p><i class="fas fa-utensils"></i> 식당 좌석수 : 500석</p>
                            <p><i class="fas fa-utensils"></i> 식대 : 50,000원</p>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2" class="cart__tag" style="padding: 15px 2%;">
                            <span># 머시꺵이</span>
                            <span># 맛있다</span>
                            <span># 분위기 좋다잉</span>
                        </td>
                        <td style="text-align: right; padding-right: 15px;">
                            <a href="" class="btn btn-success">예약하기</a>
                        </td>
                    </tr>
                </tbody>

            </table>
        </form>

        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">이전으로 가기</button>
            <button class="cart__bigorderbtn right">홈으로 가기</button>
        </div>
    </section>
    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
        <div class="modal-content">
        
            <!-- Modal Header -->
            <div class="modal-header">
            <h5 class="modal-title">내 쿠폰</h5>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            
            <!-- Modal body -->
            <div class="modal-body">
                <table>
                    <thead align="center">
                        <tr>
                            <th width="128" height="40"><input type="checkbox" id="selectAll"></th>
                            <th width="200">쿠폰명</th>
                            <th width="200">쿠폰내용</th>
                            <th width="300">할인금액</th>
                            <th width="500">유효기간</th>
                        </tr>
                    </thead>
                    <tbody align="center">
                        <tr class="wishList">
                            <td height="100" onclick=""><input type="checkbox" name="cpno" value=""></td>
                            <td>웰컴쿠폰</td>
                            <td>답례품용</td>
                            <td >10000</td>  
                            <td>2023-10-18 ~ 2023-11-18</td>
                        </tr>
                        <tr class="wishList">
                            <td height="100" onclick=""><input type="checkbox" name="cpno" value=""></td>
                            <td>웰컴쿠폰</td>
                            <td>답례품용</td>
                            <td >1000</td>
                            <td>2023-10-18 ~ 2023-11-18</td>
                        </tr>
                    </tbody>
                </table>
                
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
            
        </div>
        </div>
    </div>


    <!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

    <script src="assets/js/basket.js"></script>
   	<jsp:include page="../common/footer.jsp"/>
    
</body>
</html>