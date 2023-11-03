<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웨어딩 헤더</title>
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
<!-- jQuery 라이브러리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- TweenMax CDN을 통해 로드 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
<!-- quick css -->
<link rel="stylesheet" href="resources/css/assets/css/quick.css">
<!-- sidebar css-->
<link rel="stylesheet" href="resources/css/assets/css/sidebar.css">
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<!-- 글씨체 -->
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">

<style>
@font-face {
    font-family: 'TheJamsil';
    font-weight: 300;
    font-style: normal;
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/TheJamsil/TheJamsil-Light.eot');
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/TheJamsil/TheJamsil-Light.eot?#iefix') format('embedded-opentype'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/TheJamsil/TheJamsil-Light.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/TheJamsil/TheJamsil-Light.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/TheJamsil/TheJamsil-Light.ttf') format("truetype");
    font-display: swap;
}
*{
    font-family: 'TheJamsil';
    /* font-family: 'IBM Plex Sans KR', sans-serif; */
}


#login_container {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    height: 500px;
    border-radius: 5px;
    box-shadow: 1px 1px 50px #000;
    display: none;
    z-index: 9999; /* 다른 요소 위에 띄우기 위한 z-index 설정 */
}
#login_container::after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-image: url("resources/images/hall.jpg");
	opacity: 0.7;
	z-index: -1; /* 가상 요소를 요소 뒤에 배치 */
}

.close-btn {
	position: absolute;
	cursor: pointer;
	font-family: 'Open Sans Condensed', sans-serif;
	line-height: 18px;
	top: 3px;
	right: 3px;
	width: 20px;
	height: 20px;
	text-align: center;
	border-radius: 10px;
	opacity: .2;
	-webkit-transition: all 2s ease-in-out;
	-moz-transition: all 2s ease-in-out;
	-o-transition: all 2s ease-in-out;
	transition: all 0.2s ease-in-out;
}

#login_container>h1 {
	font-family: 'Open Sans Condensed', sans-serif;
	position: relative;
	margin-top: 0px;
	text-align: center;
	font-size: 40px;
	color: white;
	text-shadow: 3px 3px 10px #000;
}

#login_container form>button{
	position: relative;
	text-align: center;
	padding: 4px 8px;
	background: #f28123;
	width: 80%;
	display: block;
	margin: 9px auto;
	font-size: 17px;
	color: #fff;
	border-radius: 6px;
	border: none;
}
#login_container form>input{
font-family: 'Open Sans Condensed', sans-serif;
    text-decoration: none;
    position: relative;
    width: 80%;
    display: block;
    margin: 9px auto;
    font-size: 17px;
    color: #fff;
    padding: 8px;
    border-radius: 6px;
    border: 1px solid gray;
    background: rgba(3,3,3,.1);
}

#idforget-container {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	width: 300px;
	height: 200px;
	border-radius: 10px;
	background: white;
	box-shadow: 1px 1px 50px #000;
	display: none;
}

#idforget-container>h3 {
	position: relative;
	margin-top: 0px;
	text-align: center;
	font-size: 20px;
	color: black;
}

#idforget-container input {
	background: white;
	border: 1px gray;
}
#kakaoLogin{
	background:yellow;
}
#cuser:hover{
	cursor: default;
}
</style>
</head>
<body>
	<jsp:include page="quick.jsp"/>
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="header-a">

				<!-- 로그인 버튼 및 세션확인 -->
				<c:choose>
					<c:when test="${not empty loginMember}">
								<span>${loginMember.userName}님 환영</span>
								<a class="logout" href="logout.me"><span>로그아웃</span></a>
					</c:when>

					<c:otherwise>
					   <a class="login">로그인</a> / <a id="enroll_btn">회원가입</a>
					</c:otherwise>
				</c:choose>
					<c:if test="${not empty alertMsg }">
							<script>
									alert("${alertMsg}");
							</script>
							<c:remove var="alertMsg" scope="session"/>
					</c:if>
						
				
				<script>
					$("#enroll_btn").click(function(){
						location.href="memberEnrollForm.me";
					})
				</script>
					
				<!-- 로그인모달~!@#!@#!@#!@# -->
				<div id="login_container">
					<h1>로그인 하쇼</h1>
					<span class="close-btn"> <img
						src="https://cdn4.iconfinder.com/data/icons/miu/22/circle_close_delete_-128.png"></img>
					</span>

					<form action="login.me" method="post">
						<input type="text" name="userId" placeholder="id를 입력"  required> 
						<input type="password" name="userPwd" placeholder="비밀번호 입력"  required> 
						<button type="submit">로그인</button>
					</form>
						
						
						<!--  아이디 찾기 -->
						<div id="remember-container">
							<a href="idFind.me"><span id="idFind">아이디 찾기</span></a> <span id="forgotten">비번 찾기</span>
						</div>
					
						<!--  카카오 로그인 버튼 -->
						<button id = "kakaoLogin" onclick="kakaoLogin();">
							<img src="https://careerly.co.kr/_next/static/images/img_symbol-kakao-b1fe6197135e5beead71b1a90f8e2b7d.png" width="100px"; height="50px";>
						</button>
						<form action="kakaoLogin.me" method="post" id="kakaoCheck">
							<input type="hidden" id="kakaoInput" name="kakaoInput"/>
						</form>
						
						<!--  네이버 로그인 버튼 -->
						<button id = "naverLogin" onclick="naverLogin();">
							<img src="https://image.edaily.co.kr/images/Photo/files/NP/S/2014/04/PS14040100352.jpg" width="100px"; height="50px";>
						</button>
						
						<script>
							function naverLogin(){
									console.log("되냐");
		                    		 $.ajax({
		                 		        type: "GET",
		                 		        url: "createState.me",
		                 		        success: function(state) {
		                 		            var clientId = "by2SkrFNRCAcBUVgh7MX";
		                 		            var redirectUri = "http://localhost:8009/whereding/naverEnroll.do"; 
		                 		            var naverLoginUrl = "https://nid.naver.com/oauth2.0/authorize"
		                 		                + "?client_id=" + clientId
		                 		                + "&response_type=code"
		                 		                + "&redirect_uri=" + redirectUri
		                 		                + "&state=" + state;
		                 		            
		                 		            window.location.href = naverLoginUrl;
		                 		        },error:function(){
		                 		        	console.log("ajax실패띠");
		                 		        }
		                 		    })
							}
						</script>
						
						<!-- 카카오 로그인 -> 아이디있는지 검사 -->
						<script>
                    	Kakao.init('bb694f7fac67300cb1cee4c96ec94ade'); //발급받은 키 중 javascript키를 사용해준다.
                    	console.log(Kakao.isInitialized());
                    	
                    	function kakaoLogin() {
                    	    Kakao.Auth.login({
                    	      success: function (response) {
                    	        Kakao.API.request({
                    	          url: '/v2/user/me',
                    	          success: function (response) {
                    	        	  const id = response.id;
                    	        	  $("#kakaoInput").val(id);
                    	        	  
                    	        	  $("#kakaoCheck").submit();
                    	        	  
                    	          },
                    	          fail: function (error) {
                    	            console.log(error)
                    	          },
                    	        })
                    	      },
                    	      fail: function (error) {
                    	        console.log(error)
                    	      },
                    	    })
                    	  }
                    </script>
					
				</div>

				<script>
				$(".login").click(function() {
				    $("#login_container").css({
				        "top": "50%",
				        "left": "50%",
				        "transform": "translate(-50%, -50%)"
				    }).fadeIn();
				});
				</script>


			</div>
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="index.jsp"> 
							<img src="resources/css/assets/img/logo.png" alt=""></a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item" id="main-menu-home">
								<a href="index.jsp">Home</a> <a href="index.jsp">홈</a>
								</li>
								<li id="main-menu-wedding"><a href="hList.pr">Wedding Holl</a> <a
									href="hList.pr">웨딩홀</a></li>
								<li id="main-menu-collection"><a href="news.html">Wedding
										Collection</a>
									<ul class="sub-menu">
										<li><a>Studio</a> 
											<a>스튜디오</a>
										</li>
										
										<li><a>Dress</a> 
											<a>드레스</a></li>
											
										<li><a>MakeUp</a>
											<a>메이크업</a>
										</li>
									</ul> <a id="cuser">컬렉션</a></li>
								<!--  <li id="main-menu-event"><a href="contact.html">Event</a> <a
									href="contact.html">이벤트</a></li>  -->
								<li id="main-menu-shop"><a href="shop.html">Present</a>
									<a href="giftShop.bo">답례품</a></li>
								<li id="main-menu-community"><a href="contact.html">Community</a>
									<ul class="sub-menu">
										<li><a href="#">Notice</a> <a href="notice.bo">공지사항</a></li>
										<li><a href="#">Q&A</a> <a href="qna.bo">질의응답</a></li>
										<li><a href="#">Application for partner</a> <a href="collabo.bo">협력업체 신청</a></li>
									</ul> <a href="service.bo">커뮤니티</a></li>
								<li id="main-menu-mypge"><a href="contact.html">myPage</a>
									<ul class="sub-menu">
										<li><a href="giftOredrList.me?userNo=${loginMember.userNo}">Payment History</a> 
										<a href="giftOredrList.me?userNo=${loginMember.userNo}">결제내역/배송조회</a></li>
										<li><a href="reserveList.me?userNo=${loginMember.userNo}">Consultation Reservation</a> <a
											href="reserveList.me?userNo=${loginMember.userNo}">상담예약 내역</a></li>
										<li><a href="myPage.me">My Information</a> <a 
											href="myPage.me">나의 정보</a>
										</li>
									</ul> <a href="myPage.me">마이페이지</a></li>
								<li id="main-menu-icon">
									<div class="header-icons">
										<a class="shopping-cart jb-title" href="detail.ba"><i
											class="fas fa-shopping-cart"></i></a>
										<div class="jb-text">
											<p>장바구니</p>
										</div>
										<a class="mobile-hide search-bar-icon jb-title" href="consulting.rs"><i
											class="fas fa-calendar-check"></i></a>
										<div class="jb-text">
											<p>예약하기</p>
										</div>
									</div>

								</li>
							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" href="#"><i
							class="fas fa-search"></i></a>
						<div class="mobile-menu"></div>
						<!-- menu end -->

					</div>
				</div>
			</div>
		</div>

	</div>

	<div></div>
	
	    <script>
		//장바구니
	    $('.basket').on('click', function(){
	     $.ajax({
	         url:"selectBasket.sb",
	         data:{
	             userNo:${loginMember.userNo}
	         },success:function(list){
	         	let value = ""
	         	for(let i in list){
	         	console.log(list[i])
	         		value += `<table><thead>
	     				<tr>
	     					<th>
	     						<input class="basket_item" type="checkbox" name="checkedValue">
	     						<input class="gift_no" type="hidden" name="giftNo" value="` + list[i].giftNo +`">
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
	     							<input type="text" name="count"class="count" value="` + list[i].count +`">
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
	             value+=`			<span><h5 class="finalTotal">총금액 : 0원</h5></span><br>`
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

	<!-- jquery -->
	<script src="resources/css/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="resources/css/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="resources/css/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="resources/css/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="resources/css/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="resources/css/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="resources/css/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="resources/css/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="resources/css/assets/js/main.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
	<script>
		$(".close-btn")
				.click(
						function() {
							TweenMax.from("#container", .4, {
								scale : 1,
								ease : Sine.easeInOut
							});
							TweenMax.to("#container", .4, {
								left : "0px",
								scale : 0,
								ease : Sine.easeInOut
							});
							$(
									"#login_container, #forgotten-container, #idforget-container")
									.fadeOut(800, function() {
										$("#login-button").fadeIn(800);
									});
						});
		$("#main-menu-collection .sub-menu li a").click(
			function(){
				let category = $(this).prev().text();
				location.href="cList.bo?category=" + category;
			}
		)
	</script>
	<br><br><br><br><br>
</body>
</html>