<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        #product > .cart > form > table {
            width: 100%;
            border-bottom: 1px solid #d3d3d3;
            border-collapse: collapse;
            border-spacing: 0;
        }

        #product > .cart > form > table tr { border-bottom: 1px solid #d3d3d3 ;}

        #product > .cart > form > table th:first-child {width: 80px;}

        #product > .cart > form > table th {
            padding: 12px 0;
            border-top: 2px solid #000;
            border-bottom: 1px solid #d3d3d3;
            background: #fff;
            color: #383838;
            font-size: 0.95em;
            text-align: center;
            letter-spacing: -0.1em;
        }

        #product > .cart > form > table .empty { display: none ;}

        #product > .cart > form > table td { text-align: center;}

        #product > .cart > form > table td:last-child {
            color: #ff006c;
            font-weight: bold;
        }

        #product > .cart > form > table td > article {
            padding: 6px;
            overflow: hidden;
        }

        #product > .cart > form > table td > article > a {
            float: left;
        }

        #product > .cart > form > table td > article > a > img { width: 80px;}

        #product > .cart > form > table td > article > div {
            float: left;
            margin-left: 10px;
        }

        #product > .cart > form > table td > article > div > h2 { text-align: left; }

        #product > .cart > form > table td > article > div > p {
            text-align: left;
            color: #777;
            margin-top: 4px;
        }

        #product > .cart > form > input[name=del] {
            border-color: #bdbdbd;
            border-bottom-color: #828282;
            background: #fafafa;
            color: #4d4d4d;
            padding: 6px 11px;
            border-width: 1px;
            margin-top: 6px;
            border-radius: 15px;
        }

        #product > .cart > form > .total {
            float: right;
            width: 800px;
            height: 412px;
            padding: 20px;
            margin-top: 12px;
            background: #fff;
            border: 1px solid #d3d3d3;
            box-sizing: border-box;
        }

        #product > .cart > form > .total > h2 {
            width: 100%;
            font-weight: bold;
            font-size: 16px;
            border-bottom: 1px solid #111;
            margin-bottom: 10px;
            padding-bottom: 10px;
            box-sizing: border-box;
            color: #1e1e1e;
        }

        #product > .cart > form > .total > table { width: 100%; }

        #product > .cart > form > .total > table tr:nth-last-child(1) td {
            font-size: 20px;
        }

        #product > .cart > form > .total > table tr:nth-last-child(1) td:last-child {
            color: #ff006c;
            font-size: 20px;
            font-weight: bold;
        }

        #product > .cart > form > .total > table td {
            padding: 10px 0;
            font-size: 14px;
            color: #555;
        }

        #product > .cart > form > .total > table td:last-child { text-align: right; }

        #product > .cart > form > .total > input[type=submit] {
            width: 100%;
            height: 80px;
            font-size: 30px;
            border-width: 1px;
            border-color: #d81818;
            border-bottom-color: #9e1212;
            background: #ed2f2f;
            background-image: -webkit-linear-gradient(#ed2f2f, #dd0e0e);
            color: #fff;
            box-sizing: border-box;
            margin-top: 40px;
        }

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
            background: #333949;
            margin-top: 80px;
        }

        main > aside > .category > li {
            width: 100%;
            height: 80px;
            line-height: 50px;
            color: #ccc;
            font-size: 18px;
            font-weight: bold;
            border-bottom: 1px solid #2b313f;
            box-sizing: border-box;
        }


        main > aside > .category > li > a {
            display: block;
            padding: 0 30px;
            line-height: 80px;
            color: #F28123  ;
            font-weight: bold;
            text-decoration: none;
            font-size: 1em;
        }

        main > aside > .category > li > a:hover {
            background: #F28123;
            color: #fff;
        }

        main > aside > .category > li > a:hover + ol {
            display: block;
        }

        main > aside > .category ol:hover {
            display: block;
        }   

        main > aside > .category i {
            width: 22px;
            font-size: 16px;
            margin-right: 12px;
        }

        main > aside > .category > li i.fa-angle-right{
            float: right;
            width: auto;
            margin-right: 0;
        }

        main > aside > .category ol {
            position: absolute;
            left: 215px;
            top: 0;
            display: none;
            width: 220px;
            height: 100%;
            border: 1px solid #787f89;
            background: #fff;
            box-sizing: border-box;
            z-index: 10000;
        }

        main > aside > .category ol > li {
            width: 100%;
            height: 80px;
            padding: 10px;
            box-sizing: border-box;
            margin-top: 60px;
        }

        main > section {
            float: right;
            width: 900px;
            height: auto;
            box-sizing: border-box;
        }

        /*탭메뉴 체크*/
        ul.category li.current{
            background: #ededed;
            color: #222;
        }

        .tab-content{
            display: none;
            background: #ededed;
            padding: 15px;
        }

        

    </style>
</head>
<body>
 <!-- header -->
 <div class="top-header-area" id="sticker">
    <div class="container">
        <div class="header-a">
            <a>로그인</a> /
            <a>회원가입</a>
        </div>
        <div class="row">
            <div class="col-lg-12 col-sm-12 text-center">
                <div class="main-menu-wrap">
                    <!-- logo -->
                    <div class="site-logo">
                        <a href="index.html">
                            <img src="assets/img/logo.png" alt="">
                        </a>
                    </div>
                    <!-- logo -->

                    <!-- menu start -->
                    <nav class="main-menu">
                        <ul>
                            <li class="current-list-item" id="main-menu-home">
                                <a href="index.html">Home</a>
                                <a href="index.html">홈</a>
                            </li>
                            <li id="main-menu-about">
                                <a href="about.html">About</a>
                                <a href="about.html">회사소개</a>
                            </li>
                            <li id="main-menu-wedding">
                                <a href="#">Wedding Holl</a>
                                <a href="#">웨딩홀</a>
                            </li>
                            <li id="main-menu-collection">
                                <a href="news.html">Wedding Collection</a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="news.html">Studio</a>
                                        <a href="news.html">스튜디오</a>
                                    </li>
                                    <li>
                                        <a href="single-news.html">Dress</a>
                                        <a href="single-news.html">드레스</a>
                                    </li>
                                    <li>
                                        <a href="single-news.html">MakeUp</a>
                                        <a href="single-news.html">메이크업</a>
                                    </li>
                                </ul>
                                <a href="news.html">컬렉션</a>
                            </li>
                            <li id="main-menu-event">
                                <a href="contact.html">Event</a>
                                <a href="contact.html">이벤트</a>
                            </li>
                            <li id="main-menu-shop">
                                <a href="shop.html">Shop</a>
                                <ul class="sub-menu">
                                </ul>
                                <a href="shop.html">쇼핑</a>
                            </li>
                            <li id="main-menu-community">
                                <a href="contact.html">Community</a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="#">Notice</a>
                                        <a href="#">공지사항</a>
                                    </li>
                                    <li>
                                        <a href="#">Reviews</a>
                                        <a href="#">리뷰</a>
                                    </li>
                                </ul>
                                <a href="contact.html">커뮤니티</a>
                            </li>
                            <li id="main-menu-mypge">
                                <a href="contact.html">myPage</a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="contact.html">Contact</a>
                                        <a href="contact.html">상담</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html">Check Out</a>
                                        <a href="checkout.html">체크아웃</a>
                                    </li>
                                    <li>
                                        <a href="cart.html">Cart</a>
                                        <a href="cart.html">장바구니</a>
                                    </li>
                                </ul>
                                <a href="contact.html">마이페이지</a>
                            </li>
                            <li id="main-menu-icon">
                                <div class="header-icons">
                                    <a class="shopping-cart jb-title" href="cart.html"><i class="fas fa-shopping-cart"></i></a>
                                        <div class="jb-text">
                                            <p>
                                               장바구니
                                            </p>
                                        </div>
                                    <a class="mobile-hide search-bar-icon jb-title" href="#"><i class="fas fa-calendar-check"></i></a>
                                    <div class="jb-text">
                                        <p>
                                           장바구니
                                        </p>
                                    </div>
                                </div>
                                
                            </li>
                        </ul>
                    </nav>
                    <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                    <div class="mobile-menu"></div>
                    <!-- menu end -->
                    
                </div>
            </div>
        </div>
    </div>

</div>
<br><br><br><br><br>
<!-- end header -->
    <div id="wrapper">
    
        <main id="product">
            <section class="cart">
                <nav>
                    <h3>답례품 장바구니</h3>
                    <div id="my_modal" style="display: none;">
                        <div id="main" class="cont">
                            <h3>쿠폰목록</h3>
                            <br>
                            <table>
                                <thead align="center">
                                    <tr>
                                        <th width="128" height="40"><input type="checkbox" id="selectAll"></th>
                                        <th width="200">쿠폰명</th>
                                        <th width="150">쿠폰내용</th>
                                        <th width="300">할인금액</th>
                                        <th width="500">유효기간</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                <!-- 
                                    <% if(list.isEmpty()){ %>
                                    <% }else{ %>
                                        <% for(Board b : list){ %> -->
                                            <tr class="wishList">
                                                <td height="100" onclick=""><input type="checkbox" name="cpno" value=""></td>
                                                <td>웰컴쿠폰</td>
                                                <td>답례품용</td>
                                                <td ><h4 style="color: #ff006c;">1000</h4></td>  
                                                <td><h4 style="color: #ff006c;">2023-10-18 ~ 2023-11-18</h4></td>
                                            </tr>
                                            <tr class="wishList">
                                                <td height="100" onclick=""><input type="checkbox" name="cpno" value=""></td>
                                                <td>웰컴쿠폰</td>
                                                <td>답례품용</td>
                                                <td ><h4 style="color: #ff006c;">1000</h4></td>
                                                <td><h4 style="color: #ff006c;">2023-10-18 ~ 2023-11-18</h4></td>
                                            </tr>
                                </tbody>
                            </table>
                            <br>
                            <div  class="CPbutton"> &nbsp;  &nbsp;  
                                <button type="button" id="delete" style="border-radius: 10px; background-color: red; width: 80px; height: 50px;">삭제하기</button>
                                <button type="button" id="pay-go" style="float: right; border-radius: 10px; width: 80px; height: 50px;">적용하기</button>
                            </div>
                        </div>
                    </div>
                    <br>
                </nav>
               <form action="#">
                    <table border="0">
                        <tr>
                            <th><input type="checkbox" id="selectAll" ></th>
                            <th>상품명</th>
                            <th>총수량</th>
                            <th>판매가</th>
                            <th>금액</th>
                        </tr>
                        <tr class="empty">
                            <td colspan="7">장바구니에 상품이 없습니다.</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=giftno></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h4>와인</h4>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>
                                <div class="table_row" >
                                    <label for="product_amount" > &nbsp;
                                        <button class="product_plus">▲</button> 
                                        <div class="ammount" style="float: left;">1 </div> 
                                    <button class="product_minus">▼</button>
                                    </label>
                                </div>
                            </td>
                            <td>27,000</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=giftno></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h4>참지</h4>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>
                                <div class="table_row">
                                    <label for="product_amount"> &nbsp;
                                        <button class="product_plus">▲</button> 
                                        <div class="ammount" style="float: left;">1</div> 
                                    <button class="product_minus">▼</button>
                                    </label>
                                </div>
                            </td>
                            <td>27,000</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=giftno></td>
                            <td><article>
                                <a href="#">
                                    <img src="	https://via.placeholder.com/80x80" alt="1">
                                </a>
                                <div>
                                    <h4>반즤</h4>
                                    <p>상품설명</p>
                                </div>
                            </article></td>
                            <td>
                                <div class="table_row">
                                    <label for="product_amount"> &nbsp;
                                        <button class="product_plus">▲</button>
                                        <div class="ammount" style="float: left;">1</div> 
                                    <button class="product_minus">▼</button>
                                    </label>
                                </div>
                            </td>
                            <td>27,000</td>
                            <td>27,000</td>
                        </tr>
                    </table>
                    <br>  &nbsp;
                    <button type="button" id="delete" value="선택삭제" style="width: 60px; height: 50px; border-radius: 15px;">삭제</button>
                    <div class="total">
                        <button style="float: right; width: 100px; height: 50px;" type="button" id="chatBot">내 쿠폰 적용</button>
                        <h2>총 금액</h2>
                        <table>
                            <tr>
                                <td>개수 </td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td>총 금액</td>
                                <td>27,000</td>
                            </tr>
                            <tr>
                                <td>할인금액</td>
                                <td>-1,000</td>
                            </tr>
                            <tr>
                                <td>전체주문금액</td>
                                <td>26,000</td>
                            </tr>
                        </table>
                        <br>
                        <button type="button" id="paygo" style="font-size: 30px; width: 760px; height: 80px;">주문하기</button>
                    </div>
               </form>
            </section>
        </main> 
       
        <script>
            // 수량 더하기
            const plusButtons = document.querySelectorAll('.product_minus')

            plusButtons.forEach((button) => {
            button.addEventListener('click', () => {
                const parent = button.closest('.table_row') // 버튼의 부모 요소인 .table_row를 찾음
                const amountElement = parent.querySelector('.ammount') // 부모 요소 내에서 .ammount 요소를 찾음

                // 현재 ammount 값을 가져와서 1을 더한 후 다시 적용
                let amount = parseInt(amountElement.textContent)
                amount -= 1
                amountElement.textContent = amount

                })
            })

            // 수량 빼기
            const minusButtons = document.querySelectorAll('.product_plus')

            minusButtons.forEach((button) => {
            button.addEventListener('click', () => {
                const parent = button.closest('.table_row') // 버튼의 부모 요소인 .table_row를 찾음
                const amountElement = parent.querySelector('.ammount') // 부모 요소 내에서 .ammount 요소를 찾음

                // 현재 ammount 값을 가져와서 1을 더한 후 다시 적용
                let amount = parseInt(amountElement.textContent)
                amount += 1
                amountElement.textContent = amount

                })
            })

            // 쿠폰 모달창 띄우기
            function modal(id) {
                var zIndex = 9999;
                var modal = document.getElementById(id);

                // 모달 div 뒤에 희끄무레한 레이어
                var bg = document.createElement('div');
                bg.setStyle({
                    position: 'fixed',
                    zIndex: zIndex,
                    left: '0px',
                    top: '0px',
                    width: '100%',
                    height: '100%',
                    overflow: 'auto',
                    // 레이어 색갈은 여기서 바꾸면 됨
                    backgroundColor: 'lightgray'
                });
                document.body.append(bg);

                // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
                modal.querySelector('#pay-go').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });

                modal.setStyle({
                    position: 'fixed',
                    display: 'block',
                    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                    // 시꺼먼 레이어 보다 한칸 위에 보이기
                    zIndex: zIndex + 1,

                    // div center 정렬
                    top: '50%',
                    left: '50%',
                    transform: 'translate(-50%, -50%)',
                    msTransform: 'translate(-50%, -50%)',
                    webkitTransform: 'translate(-50%, -50%)'
                });
            }

            // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
            Element.prototype.setStyle = function(styles) {
                for (var k in styles) this.style[k] = styles[k];
                return this;
            };

            document.getElementById('chatBot').addEventListener('click', function() {
                // 모달창 띄우기
                modal('my_modal');
            });

            // 선택체크
            $(function(){
                $("#selectAll").click(function(){
                       if($(this).is(':checked')){
                           $("input[name=giftno]").prop("checked",true);
                       }else{
                           $("input[name=giftno]").prop("checked",false);
                       }
                })

                $("#delete").click(function(){
                    let checkBoxArr = [];
                    if(confirm("쿠폰을 삭제하시겠습니까?")){
                        
                        $("input:checkbox[name=giftno]:checked").each(function(){
                            checkBoxArr.push($(this).val());
                        })
                        
                        $.ajax({
                            url:"#",
                            traditional: true,
                            data:{arr:checkBoxArr},
                            success:function(result){
                                document.location.href = document.location.href;
                            },
                            error:function(){
                                console.log("삭제 오류")
                            }
                        })
                    }
                })
                
                $("#paygo").click(function(){
                    location.href="../finalView/결재폼.html";
                })
            })
            
          </script>

    </div>
    <!-- 푸터바  인클루드-->
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
						<img src="assets/img/location.png">
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
					<p class="copyright-etc">
						서비스 이용약관 | 전자금융거래 약관 | 개인정보 처리방침 | 면책 공고 | 개인정보 수집항목 | ⓒ FOUREVER Corp.
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>COPYRIGHT &copy; 2023 WHEREDING, ALL RIGHT RESERVED.<br>
						DISTRIBUTED BY - FOUREVER
					</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	<!-- 푸터바 끝 -->
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
   
   <script>
        $(product).ready(function(){
    
            $('ul.category li').click(function(){
            var tab_id = $(this).attr('data-tab');
        
            $('ul.category li').removeClass('current');
            $('.tab-content').removeClass('current');
        
            $(this).addClass('current');
            $("#"+tab_id).addClass('current');
            })
        
        })
    </script>
</body>

</body>
</html>