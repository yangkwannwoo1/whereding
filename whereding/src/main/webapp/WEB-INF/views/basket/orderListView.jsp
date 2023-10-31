<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>결제폼</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://kit.fontawesome.com/20962f3e4b.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- 아이콘찾기 -->
<link rel="stylesheet" href="assets/css/all.min.css">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
#product {
	width: 1000px;
}

#product>.order>form>table {
	width: 100%;
	border-top: 2px solid #000;
	border-collapse: collapse;
	border-spacing: 0;
}

#product>.order>form>table tr {
	border-bottom: 1px solid #d3d3d3;
}

#product>.order>form>table th {
	padding: 12px 0;
	background: #fff;
	color: #383838;
	font-size: 0.95em;
	text-align: center;
	letter-spacing: -0.1em;
}

#product>.order>form>table .empty {
	display: none;
}

#product>.order>form>table td {
	text-align: center;
}

#product>.order>form>table td:last-child {
	color: #ff006c;
	font-weight: bold;
}

#product>.order>form>table td>article {
	padding: 6px;
	overflow: hidden;
}

#product>.order>form>table td>article>a {
	float: left;
}

#product>.order>form>table td>article>a>img {
	width: 80px;
}

#product>.order>form>table td>article>div {
	float: left;
	margin-left: 10px;
}

#product>.order>form>table td>article>div>h2 {
	text-align: left;
}

#product>.order>form>table td>article>div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

#product>.order>form>article {
	width: 560px;
	height: auto;
	margin-top: 16px;
}

#product>.order>form>.final {
	float: right;
	width: 360px;
	height: 260px;
	padding: 20px;
	margin-top: 12px;
	background: #fff;
	border: 1px solid #d3d3d3;
	box-sizing: border-box;
	border-radius: 50px;
}

#product>.order>form>.final>h2 {
	width: 100%;
	font-weight: bold;
	font-size: 20px;
	border-bottom: 1px solid #111;
	margin-bottom: 10px;
	padding-bottom: 10px;
	box-sizing: border-box;
	color: #1e1e1e;
}

#product>.order>form>.final>table {
	width: 100%;
}

#product>.order>form>.final>table tr:nth-last-child(1) td {
	font-size: 20px;
}

#product>.order>form>.final>table tr:nth-last-child(1) td:last-child {
	color: #ff006c;
	font-size: 20px;
	font-weight: bold;
}

#product>.order>form>.final>table td {
	padding: 10px 0;
	font-size: 14px;
	color: #555;
}

#product>.order>form>.final>table td:last-child {
	text-align: right;
}

#product>.order>form>.final>input[type=submit] {
	width: 100%;
	height: 56px;
	font-size: 26px;
	border-width: 1px;
	background-image: -webkit-linear-gradient(#ed2f2f, #F28213);
	color: #fff;
	box-sizing: border-box;
	margin-top: 10px;
	border-radius: 25px;
	cursor: pointer;
}

#product>.order>form>article>h1 {
	font-weight: bold;
	font-size: 20px;
	padding: 6px 0;
	margin-bottom: 12px;
	border-bottom: 1px solid #111;
}

#product>.order>form>article>div {
	padding: 6px;
	box-sizing: border-box;
}

#product>.order>form>.delivery>table tr>td:nth-child(1) {
	padding: 10px;
}

#product>.order>form>.delivery>table input[type=button] {
	padding: 4px 6px;
	border: 1px solid #ccc;
	background-color: #f0f4f9;
	border-color: #acc0e0;
	color: #3371c9;
	outline: none;
}

#product>.order>form input {
	color: #555;
	padding: 2px 0;
	border: 1px solid #999;
	box-sizing: border-box;
}

#product>.order>form>.delivery>table input[name=addr1] {
	width: 400px;
}

#product>.order>form>.delivery>table input[name=addr2] {
	width: 400px;
}

#product>.order>form>.discount>div {
	overflow: hidden;
}

#product>.order>form>.discount>div>p {
	float: left;
}

#product>.order>form>.discount>div>label {
	float: right;
}

#product>.order>form>.discount>div>label>input[type=text] {
	display: inline-block;
	outline: none;
}

#product>.order>form>.discount>div>span {
	display: block;
	margin-top: 20px;
	color: #888;
}

#product>.order>form>.discount>div>label>input[type=button] {
	padding: 4px 6px;
	border: 1px solid #ccc;
	background-color: #f0f4f9;
	border-color: #acc0e0;
	color: #3371c9;
	outline: none;
}

#product>.order>form>.alert {
	width: 560px;
	background-color: #f7f7f7;
	padding: 6px;
	padding-left: 20px;
	color: #999;
	box-sizing: border-box;
}

#product>.order>form>.alert>ul {
	list-style: inherit;
}

#product>.order>form>.alert>ul>li {
	line-height: 20px;
}

#product>.order>form>.alert>ul>li>span {
	position: relative;
	left: -6px;
}

.delivery {
	position: absolute;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="wrapper" align="center">

		<main id="product">

			<section class="order">
				<nav>
					<h1>주문결제</h1>
				</nav>
				<form action="#">
					<table border="0">
						<tr>
							<th>답례품명</th>
							<th>총수량</th>
							<th>판매가</th>
						</tr>
						<tr class="empty">
							<td colspan="7">장바구니에 상품이 없습니다.</td>
						</tr>
						<c:forEach var="g" items="${gift}">
							<tr>
								<td><article>

										<div>
											<h2 style="color: #F28213; font-size: 2rem;">${g.giftName }</h2>
											<p>${g.giftContent }</p>
										</div>
									</article></td>
								<td>${g.orderCount }</td>
								<td>${g.giftPrice }</td>
							</tr>
						</c:forEach>
					</table>
					<div class="final">
						<h2>최종결제 정보</h2>
						<table>
							<tr>
								<td>총</td>
								<td>${gift.size()}건</td>
							</tr>
							<!-- <tr>
                                <td>상품금액</td>
                                <td>27,000</td>
                            </tr> -->
							<!-- <tr>
                                <td>할인금액</td>
                                <td>-1,000</td>
                            </tr> -->
							<tr>
								<td>전체주문금액</td>

								<c:set var="totalAmount" value="0" />
								<c:forEach var="g" items="${gift}">
									<c:set var="subTotal" value="${g.giftPrice * g.orderCount}" />
									<c:set var="totalAmount" value="${totalAmount + subTotal}" />
								</c:forEach>

								<!-- totalPrice에 합산된 값 출력 -->
								<td>${totalAmount}원</td>
							</tr>
						</table>
						<input type="button" value="결제" id="paymentButton">
						<script>
						document.getElementById('paymentButton').addEventListener('click', function() {
						    // 필수 필드 값을 가져오기
						    var orderer = document.getElementById('name').value;
						    var phone = document.getElementById('phone').value;
						    var zip = document.getElementById('Postal').value;
						    var address = document.getElementById('address').value;
						
						    // 필수 필드의 누락 여부 확인
						    if (orderer === '' || phone === '' || zip === '' || address === '') {
						        // 필수 정보가 누락된 경우 알림 표시
						        alert('모든 필수 정보를 입력하세요.');
						    } else {
						        // 모든 필수 정보가 입력된 경우 결제 진행
						        var selectedPaymentMethod = document.querySelector('input[name="payment"]:checked').value;
						        
						        if (selectedPaymentMethod === 'type3') {
						            // 신용카드로 결제 시 실행하는 로직 (이 예제에서는 iamport 함수 호출)
						            iamport();
						        }
						        // 다른 결제 방법에 대한 로직 추가 가능
						    }
						});
						</script>
						<script>
							function iamport(){
								//가맹점 식별코드
								IMP.init('imp87535328');
								IMP.request_pay({
								    pg : 'kcp',
								    pay_method : 'card',
								    merchant_uid : 'merchant_' + new Date().getTime(),
								    name : '웨어딩_답례품' , //결제창에서 보여질 이름
								    amount : ${totalAmount}, //실제 결제되는 가격
								    buyer_email : 'iamport@siot.do',
								    buyer_name : $("#name").val(),
								    buyer_tel : $("#phone").val(),
								    buyer_addr : $("#address").val(),
								    buyer_postcode : $("#Postal").val()
								}, function(rsp) {
									console.log(rsp);
									// 결제검증
									$.ajax({
							        	type : "POST",
							        	url : "/verifyIamport/" + rsp.imp_uid 
							        }).done(function(data) {
							        	
							        	console.log(data);
							        	// 여기서 컨트롤러 타게 해줘야함
							        	 // ${loginMember.userNo}와 ${gift} 데이터를 URL 매개변수로 전달
								        var userNo = ${loginMember.userNo}; // 사용자 번호
								        var giftData = JSON.stringify(${gift}); // ${gift} ArrayList 데이터를 JSON 문자열로 변환
								        var redirectUrl = "orderCompleted.bk?userNo=" + userNo + "&giftData=" + encodeURIComponent(giftData);
								        
								        // AJAX로 페이지 이동
								        window.location.href = redirectUrl;
							        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
							        	if(rsp.paid_amount == data.response.amount){
								        	alert("결제 및 결제검증완료");
							        	} else {
							        		alert("결제 실패");
							        	}
							        });
								});
							}
						</script>




						<br>
						<br>
						<!-- 경고 -->
						<article class="alert">
							<ul>
								<li><span>결재 규정 </span></li>
								<li><span>웨어딩의 전자금융거래법에 의해 결제대금예치업 등록번호는
										00-000-00000 입니다. </span></li>
								<li><span>등록여부는 금융감독원 홈페이지(www.fss.or.kr)의
										업무자료>인허가업무안내>전자금융업등록현황에서 확인하실수 있습니다. </span></li>
							</ul>
						</article>
					</div>
					<!-- 배송정보 -->
					<article class="delivery">
						<h1>배송정보</h1>
						<table>
							<tr>
								<td>주문자</td>
								<td><input type="text" name="orderer" id="name"></td>
							</tr>
							<tr>
								<td>휴대폰</td>
								<td><input type="text" name="hp" id="phone"> <span>- 포함
										입력</span></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input type="text" name="zip" id="Postal"> <!-- <input type="button" value="검색"> -->
								</td>
							</tr>
							<tr>
								<td>기본주소</td>
								<td><input type="text" name="addr1" id="address"></td>
							</tr>
							<tr>
								<td>상세주소</td>
								<td><input type="text" name="addr2"></td>
							</tr>
						</table>

						<!-- 결제방법 -->
						<h1>결제방법</h1>
						<div>
						    <p>
						        <label>
						            <input type="radio" name="payment" value="type3" id="creditCardRadio">신용카드
						        </label>
						        <label>
						            <input type="radio" name="payment" value="type4">계좌이체
						        </label>
						    </p>
						</div>
					</article>

				</form>
			</section>
		</main>
</body>
</html>