<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 퀵메뉴 -->
	<div class="quick">
		<div class="quick_header">
			<!-- <i class="fa fa-bars" aria-hidden="true"></i> -->
			<h4>Quick Menu</h4>
		</div>
		
		<ul>
			<li class="li_top basket">
				<a href="#">
					<i class="fa fa-shopping-basket"></i><br>
					<span>장바구니</span>
				</a>
			</li>
			<hr>
			<li class="li_top schedule">
				<a href="#">
					<i class="fa fa-calendar-alt"></i><br>
					<span>예약</span>
				</a>
			</li>
			<hr>
			<li>
				<a href="#">
					<i class="fa fa-pencil-alt" aria-hidden="true"></i><br>
					<span>Q/A</span>
				</a>
			</li>
			<hr>
			<li class="quick_kakao">
				<a href="#" target="_blank">
					<img src="resources/css/assets/img/talk-icon.png"><br>
					<span>카톡상담</span>
					<script>
						$(".quick_kakao").click(function(){
							location.href="http://pf.kakao.com/_xdrBTG/chat";
						})
					</script>
				</a>
			</li>
			<hr>
			<c:choose>
				<c:when test="${loginMember.gradeNo == 3}">
					<li class="quick_admin">	
						<i class="fa fa-gears" aria-hidden="true" href="admin.ad"></i><br>관리자모드
					</li>
				</c:when>
				<c:otherwise>
					<li class="li_bottom">	
						<i class="fa fa-phone" aria-hidden="true"></i><br>대표문의
						<p>02)1234<br>- 1234</p>
					</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!-- 퀵메뉴 -->
	<div class="up_arrow">
		<img src="resources/css/assets/img/up-arrow.png" alt="">
	</div>
	<div></div>
	<script type="text/javascript" src="resources/css/assets/js/quick.js"></script> 

	<!-- 사이드바 -->
	<div class="menu_bg"></div>
	<div class="sidebar_menu side_basket">
		<div class="close_btn"><a href="#">       
			<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBkPSJNMjMuOTU0IDIxLjAzbC05LjE4NC05LjA5NSA5LjA5Mi05LjE3NC0yLjgzMi0yLjgwNy05LjA5IDkuMTc5LTkuMTc2LTkuMDg4LTIuODEgMi44MSA5LjE4NiA5LjEwNS05LjA5NSA5LjE4NCAyLjgxIDIuODEgOS4xMTItOS4xOTIgOS4xOCA5LjF6Ii8+PC9zdmc+">
			</a>
		</div>
		<h4><i class="fa fa-shopping-basket"></i> 장바구니</h4>
		
		<hr>
		<form action="quickOrder.bk" method="post" id="submitBasket">
			<table>
				<thead>
				<tr>
					<th>
						<input class="basket_item" type="checkbox" name="checkedValue" value="p1">
						<input class="gift_no" type="hidden" name="giftNo" >
					</th>
					<th>
						<h5>TRAVICHE</h5>						
					</th>
				</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2" class="pImg_area">
							<img src="data:image/jpeg;base64,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" alt="">
						</td>
						<td class="perPrice_area">
							개당 : <span class="per_price">1500</span>원
						</td>
					</tr>
					<tr>
						<td class="pCount">
							수량 : 
							<i class="fas fa-plus"></i>
							<input type="text" value="1" name="count">
							<i class="fas fa-minus"></i>
						</td>
						
					</tr>
					<tr>
						<th colspan="2" class="total_area">
							금액 : <span class="total">0</span>원
						</th>
					</tr>
				</tbody>
			</table>
			<hr>

			<table>
				<thead>
					<tr>
						<th>
							<input class="basket_item" type="checkbox" name="checkedValue" value="p1">
							<input class="gift_no" type="hidden" name="giftNo" id>
						</th>
						<th>
							<h5>ILIAS</h5>						
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2" class="pImg_area">
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_MGz8eKOgtg4yj8Xjyxb9B2yccUF2Im6iwg&usqp=CAU" alt="">
						</td>
						<td class="perPrice_area">
							개당 : <span class="per_price">2500</span>원
						</td>
					</tr>
					<tr>
						<td class="pCount">
							수량 : 
							<i class="fas fa-plus"></i>
							<input type="text" value="1" name="count">
							<i class="fas fa-minus"></i>
						</td>
						
					</tr>
					<tr>
						<th colspan="2" class="total_area">
							금액 : <span class="total">0</span>원
						</th>
					</tr>
				</tbody>
				</table>
		
			<hr>
			<!-- <ul class="menu_wrap">
				<li><a href="#">메뉴01</a></li>
				<li><a href="#">메뉴02</a></li>
				<li><a href="#">메뉴03</a></li>
				<li><a href="#">메뉴04</a></*li>
				</ul> -->
			<span><h5 class="finalTotal">총금액 : 0원</h5></span><br>
		</form>
		
		<button class="btn btn-outline-secondary" onclick="order();" type="button" >구매하기</button>
	</div>

	
	
	
	<!-- 예약 사이드바 -->
	<div class="sidebar_menu side_schedule">

	</div>
	<script>
		function order() {
			console.log("오더탐")
		// 선택된 제품 정보 배열
		var selectedProducts = [];
	
		// "check__it" 클래스를 가진 모든 체크박스를 반복
		$(".basket_item").each(function () {
			if ($(this).prop("checked")) {
				// 체크된 체크박스의 부모 행을 가져옵니다
				var table = $(this).closest("table");
	
				// 제품 ID를 가져옵니다 (행의 ID 속성을 사용)
				var giftNo = table.find('.gift_no').val();
	
				// 클래스 "count_btn"을 가진 입력란을 찾아 수량을 가져옵니다
				var orderCount = table.find('.count').val();
	
				// 선택한 제품 정보를 배열에 추가합니다
				selectedProducts.push({ giftNo: giftNo, orderCount: orderCount });
			}
		});
	
		if (selectedProducts.length > 0) {
			// 선택한 제품 정보를 JSON 문자열로 변환합니다
			var selectedProductsJSON = JSON.stringify(selectedProducts);
	
			// 폼을 생성하고 데이터를 POST 요청으로 서버에 보냅니다
			var form = document.createElement("form");
			form.method = "POST";
			form.action = "order.bk"; // 컨트롤러 URL
	
			// userNo와 selectedProducts를 각각의 hidden 필드로 추가합니다
			var userNoInput = document.createElement("input");
			userNoInput.type = "hidden";
			userNoInput.name = "userNo";
			userNoInput.value = ${loginMember.userNo}; // 사용자 번호
			form.appendChild(userNoInput);
	
			var selectedProductsInput = document.createElement("input");
			selectedProductsInput.type = "hidden";
			selectedProductsInput.name = "selectedProducts";
			selectedProductsInput.value = selectedProductsJSON;
			form.appendChild(selectedProductsInput);
	
			document.body.appendChild(form);
			form.submit();
		} else {
			// 제품을 선택하지 않았을 경우 알림을 표시합니다
			alert("주문할 제품을 선택하세요.");
		}
	}
	
		</script>
	  
	<script>
		(function(){
			var w=window;
			if(w.ChannelIO){
				return w.console.error("ChannelIO script included twice.");
			}
			var ch=function(){
				ch.c(arguments);
			};
			ch.q=[];
			ch.c=function(args){
				ch.q.push(args);
			};
			w.ChannelIO=ch;
			function l(){
				if(w.ChannelIOInitialized){
					return;
				}
				w.ChannelIOInitialized=true;
				var s=document.createElement("script");
				s.type="text/javascript";
				s.async=true;
				s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";
				var x=document.getElementsByTagName("script")[0];
				if(x.parentNode){x.parentNode.insertBefore(s,x);
				}}
				if(document.readyState==="complete"){
					l();
				}else{w.addEventListener("DOMContentLoaded",l);
				w.addEventListener("load",l);
			}
		}
		)();
	  
		ChannelIO('boot', {
		  "pluginKey": "934a239f-155d-4a7e-a439-29e60d3ed745"
		});
	  </script>
</body>
</html>