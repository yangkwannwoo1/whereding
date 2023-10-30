<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="resources/css/assets/css/collectionDetailView.css">
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
	<style>
		.main {
			width: 1200px;
			margin: auto;
		}

		.slider {
			width: 640px;
			height: 480px;
			position: relative;
			margin: 0 auto;
			overflow: hidden;
		}

		.slider input[type=radio] {
			display: none;
		}

		ul.imgs {
			padding: 0;
			margin: 0;
		}

		ul.imgs li {
			position: absolute;
			left: 640px;
			transition-delay: 0.5s;
			list-style: none;
			padding: 0;
			margin: 0;
		}

		.bullets {
			position: absolute;
			left: 50%;
			transform: translateX(0%);
			bottom: 20px;
			z-index: 2;
		}

		.bullets label {
			display: inline-block;
			border-radius: 50%;
			background-color: rgba(0, 0, 0, 0.55);
			width: 20px;
			height: 20px;
			cursor: pointer;
		}

		.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1) {
			background-color: #fff;
		}

		.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2) {
			background-color: #fff;
		}

		.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3) {
			background-color: #fff;
		}

		.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1) {
			left: 0;
			transition: 1s;
			z-index: 2;
		}

		.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2) {
			left: 0;
			transition: 1s;
			z-index: 1;
		}

		.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3) {
			left: 0;
			transition: 1s;
			z-index: 1;
		}

		button {
			height: 50px;
		}
		.rate{
			background: url(https://aldo814.github.io/jobcloud/html/images/user/star_bg02.png) no-repeat;
			width: 121px;
			height: 20px;
			position: relative;
		}
		.rate span{position: absolute;
			background: url(https://aldo814.github.io/jobcloud/html/images/user/star02.png);
			width: auto;
			height: 20px;
		}


	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<script>
		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) { slideIndex = 1 }
			if (n < 1) { slideIndex = x.length }
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-opacity-off";
		}
		
	</script>

	<!-- single article section -->
	<div class="main">
		<table style="width: 1200px; border-collapse: separate;">
			<tr>
				<th colspan="2">
					<h2 style="padding: 0% 2%;" class="hr_style"> Studio</h2>
				</th>
			</tr>
			<tr>
				<td rowspan="3" style="width: 60%; vertical-align: top; border-right: 2px dotted #cecece;">
					<br>
					<div class="w3-content" style="width:700px; padding: 3%; text-align: center; vertical-align: top;">
						<img class="mySlides" src="${ c.imgPath }${ c.img1 }" style="width:auto; height: 600px;">
						<img class="mySlides" src="${ c.imgPath }${ c.img2 }" style="width:auto; height: 600px;display:none">
						<img class="mySlides" src="${ c.imgPath }${ c.img3 }" style="width:auto; height: 600px;display:none">

						<div class="w3-row-padding w3-section" style="margin-top: 3%; text-align: center;">
							<div class="w3-col s4">
								<img class="" src="${ c.imgPath }${ c.img1 }"
									style="width:auto; height: 100px ;cursor:pointer" onclick="currentDiv(1)">
							</div>
							<div class="w3-col s4">
								<img class="" src="${ c.imgPath }${ c.img2 }"
									style="width:auto; height: 100px ;cursor:pointer" onclick="currentDiv(2)">
							</div>
							<div class="w3-col s4">
								<img class="" src="${ c.imgPath }${ c.img3 }"
									style="width:auto; height: 100px ;cursor:pointer" onclick="currentDiv(3)">
							</div>
						</div>
					</div>

				</td>
				<td style="padding: 0% 2%; height: 220px; border: 0px">
					<br>
					<h2 style="font-weight: 700;">
						${c.enterprise }
					</h2>
					<div class="rate total_rate" style="margin-bottom: 1%">
						<span style="width: 0%"></span>
					</div>
					<div style="color: rgb(61, 61, 61); font-size: small; margin-bottom: 1%;">${ c.address }</div>
					<div style="color: rgb(61, 61, 61); font-size: small; margin-bottom: 1%;"><i class="fas fa-calendar"></i> 오전 ${ c.startDate } ~ 오후 ${ c.endDate }</div>
					<div style="color: rgb(61, 61, 61); font-size: small; margin-bottom: 1%;"><i class="fas fa-phone fa-flip-horizontal"></i> ${ c.phone }</div>
					<div style="color: rgb(61, 61, 61); font-size: small; margin-bottom: 1%;"><i class="fas fa-won-sign"></i> ${ c.price }</div>
				</td>
			</tr>
			<tr>
				<td style="width: 40%; padding: 0% 2%; vertical-align: text-top;">

					<div style="font-size: large; margin:5% auto;">${ c.detail }</div>
					<div id="map" style="width:100%;height:400px; border: 2px solid black; border-radius: 10px; margin: 2% auto;">
					
					</div>
					
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3b886c1f0a0359c5d351f5484b7fce9d&libraries=services"></script>
					<script>
					var mapContainer = document.getElementById("map"), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3, // 지도의 확대 레벨
					        draggable: true
					    };  
					
					// 지도 생성    
					var map = new kakao.maps.Map(mapContainer, mapOption); 

					// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
					var mapTypeControl = new kakao.maps.MapTypeControl();	

					// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
					// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
					map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
					
					// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
					var zoomControl = new kakao.maps.ZoomControl();
					map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

					// 주소-좌표 변환
					var geocoder = new kakao.maps.services.Geocoder();
					
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('${ c.address }', function(result, status) {

					    // 정상적으로 검색이 완료됐으면 
					     if (status === kakao.maps.services.Status.OK) {

					        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

					        // 결과값으로 받은 위치를 마커로 표시합니다
					        var marker = new kakao.maps.Marker({
					            map: map,
					            position: coords
					        });

					        // 인포윈도우로 장소에 대한 설명을 표시합니다
					        var infowindow = new kakao.maps.InfoWindow({
					            content: '<div style="width:150px;text-align:center;padding:6px 0;">${ c.enterprise }</div>'
					        });
					        infowindow.open(map, marker);

					        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					        map.setCenter(coords);
					    } 
					}); 
					
					</script>
				</td>
			</tr>
			<tr>
				<td style="text-align: right; padding: 0% 2%; height: 60px;">
					<button class="btn btn-warning"><i class="fas fa-shopping-cart"> 장바구니</i></button>

				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="tag-section" style="padding: 1%;">
						<ul style="margin: 0; padding: 0%;">
							<c:set var="tag" value="${fn:split(c.tagContent,',')}" />
							<c:forEach var="it" items="${tag}" varStatus="g">
								<c:if test="${not empty it }">
								<li><a href="single-news.html"># ${ it }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>

				</td>

			</tr>
			<tr>
				<th colspan="2">
					<h2>
						<div style="font-style: italic; padding-left: 1%; height: 50px;">
							<img src="resources/css/assets/img/products/instagram.png" style="height: 30px;" alt="">
							instagram
						</div>

					</h2>

				</th>

			</tr>
			<tr>
				<td colspan="2">
					<div class="instaimg">
						<div class="row">
							<div class="col-lg-3 col-md-6">
								<img src="resources/css/assets/img/products/slide1.png" style="height: 200px;">
							</div>
							<div class="col-lg-3 col-md-6">
								<img src="resources/css/assets/img/products/slide2.png" style="height: 200px;">
							</div>
							<div class="col-lg-3 col-md-6">
								<img src="resources/css/assets/img/products/slide3.png" style="height: 200px;">
							</div>
							<div class="col-lg-3 col-md-6">
								<img src="resources/css/assets/img/products/slide3.png" style="height: 200px;">
							</div>
						</div>
					</div>
				</td>
			</tr>
			<tfoot class="review_area">
				<tr>
					<th style="padding: 5% 1% 1% 1%" colspan="2">
						<h3 class="comment-count-title" style=" font-weight: 700;">리뷰 (0)</h3>
						<hr style="margin-bottom: 0; border: 1px solid black;">
					</th>
				</tr>

				<!-- <tr>
					<td  colspan="2">
						<img src="https://via.placeholder.com/80x80" alt="1" style="float: left; margin: 1%;">
						<p style="margin: 1%;"><textarea name="" id="" cols="30" rows="5" style="width: 80%; resize: none;" ></textarea></p>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-bottom: 1px solid #cecece; text-align: right;">
						<input type="number" max="5" min="0" placeholder="별점">
						<input type="button" value="등록">
					</td>
				</tr> -->






			</tfoot>
		</table>
	

	</div>

	<hr>
	<div class="recent-posts">
		<h4>최근 본 게시글</h4>
		<ul>
			<li><a href="single-news.html">kh양관우교육원 - sinse 2023 - 10 - 17 </a></li>
			<li><a href="single-news.html">kh윤재성교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh이원종교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh김현우교육원 - sinse 2023 - 10 - 17</a></li>
			<li><a href="single-news.html">kh김시연교육원 - sinse 2023 - 10 - 17</a></li>
		</ul>
		<hr>
	</div>
	<!-- end single article section -->
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$(function(){
    		selectReplyList();
		})
	
    	function selectReplyList(){ // 해당 게시글에 딸린 댓글리스트 조회용 ajax
			$.ajax({
				url:"crList.bo",
				data:{cno:'${ c.code }'},
				success:function(list){
					console.log(list);
					let value = "";
					
					let sum = 0;
					let score = 0;
					for(let i in list){
						let avgScore = 0;
						console.log(score)
						score = (Number(list[i].rvScore)/5)*100;
						value += `<tr style="margin: 5%;">
							<td style="padding-left: 1%;" colspan="2">
							<h4 style="font-weight: 600; padding-top: 1%; margin-bottom: 0px;">`+ list[i].userName + `<span class="comment-date">&nbsp; `+ list[i].createDate + `</span>
							</h4>
							<div class="rate">
								<span style="width: `+ score +`%"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td  colspan="2" style="border-bottom: 1px solid #cecece;">
							<img src="` + list[i].filePath + `" alt="1" style="float: left; margin: 1%; height:120px;">
							<p style="margin: 1%;">`+ list[i].rvContent + `</p>
						</td>
					</tr>`
					sum += score;
					}
					avgScore = sum / list.length;
					$(".review_area").html(value);
					$(".comment-count-title").text("리뷰 " + list.length)
					$(".total_rate span").css("width",avgScore+"%");
				}, error:function(){
					console.log("댓글리스트 조회용 ajax 통신 실패!")
				}
			})    			
    	}
	</script>
	


</body>

</html>