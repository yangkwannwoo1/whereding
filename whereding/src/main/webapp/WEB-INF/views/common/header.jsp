<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<style>
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
					<c:when test="${empty loginMember}">
						<a class="login">로그인</a> / <a id="enroll_btn">회원가입</a>
					</c:when>
					<c:otherwise>
						<script>
							alert("${alertMsg}");
						</script>
						<span>${loginMember.userName}님 환영</span>
						<a class="logout" href="logout.me"><span>로그아웃</span></a>
					</c:otherwise>
				</c:choose>
					
				<script>
					$(".logout").click(function(){
						alert("로그아웃 한다잉");
					})
				</script>	
				
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
						<div id="remember-container">
							<span id="idFind">아이디 찾기</span> <span id="forgotten">비번 찾기</span>
						</div>
					
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
							<a href="index.html"> <img
								src="resources/css/assets/img/logo.png" alt="">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item" id="main-menu-home"><a
									href="index.html">Home</a> <a href="index.html">홈</a></li>
								<li id="main-menu-about"><a href="about.html">About</a> <a
									href="about.html">회사소개</a></li>
								<li id="main-menu-wedding"><a href="#">Wedding Holl</a> <a
									href="#">웨딩홀</a></li>
								<li id="main-menu-collection"><a href="news.html">Wedding
										Collection</a>
									<ul class="sub-menu">
										<li><a href="news.html">Studio</a> <a href="news.html">스튜디오</a>
										</li>
										<li><a href="single-news.html">Dress</a> <a
											href="single-news.html">드레스</a></li>
										<li><a href="single-news.html">MakeUp</a> <a
											href="single-news.html">메이크업</a></li>
									</ul> <a href="news.html">컬렉션</a></li>
								<li id="main-menu-event"><a href="contact.html">Event</a> <a
									href="contact.html">이벤트</a></li>
								<li id="main-menu-shop"><a href="shop.html">Shop</a>
									<ul class="sub-menu">
									</ul> <a href="shop.html">쇼핑</a></li>
								<li id="main-menu-community"><a href="contact.html">Community</a>
									<ul class="sub-menu">
										<li><a href="#">Notice</a> <a href="#">공지사항</a></li>
										<li><a href="#">Reviews</a> <a href="#">리뷰</a></li>
									</ul> <a href="contact.html">커뮤니티</a></li>
								<li id="main-menu-mypge"><a href="contact.html">myPage</a>
									<ul class="sub-menu">
										<li><a href="contact.html">Contact</a> <a
											href="contact.html">상담</a></li>
										<li><a href="checkout.html">Check Out</a> <a
											href="checkout.html">체크아웃</a></li>
										<li><a href="cart.html">Cart</a> <a href="cart.html">장바구니</a>
										</li>
									</ul> <a href="contact.html">마이페이지</a></li>
								<li id="main-menu-icon">
									<div class="header-icons">
										<a class="shopping-cart jb-title" href="cart.html"><i
											class="fas fa-shopping-cart"></i></a>
										<div class="jb-text">
											<p>장바구니</p>
										</div>
										<a class="mobile-hide search-bar-icon jb-title" href="#"><i
											class="fas fa-calendar-check"></i></a>
										<div class="jb-text">
											<p>장바구니</p>
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
	</script>
	<br><br><br><br><br>

</body>
</html>