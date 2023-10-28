<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/assets/css/basket.css">

</head>
<body>
    <jsp:include page="../common/header.jsp"/>


    <section class="cart">
        <div class="cart__information">
            	<h2>장바구니</h2>
            <ul>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
            </ul>
        </div>
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        <td style="width: 2%;"><input class="all_Check" type="checkbox"></td>
                        <td style="width: 40%;" colspan="2">상품정보</td>
                        <td style="width: 27%;">옵션</td>
                        <td style="width: 15%;">상품금액</td>
                        <td style="width: 15%;">배송비</td>
                    </tr>
                </thead>
                <tbody class="cart__list__tbody">
                    <tr class="cart__list__detail">
                        <td><input class="check__it" type="checkbox"></td>
                        <td><img src="image/keyboard.jpg" alt="magic keyboard"></td>
                        <td><a href="#">애플 공식 브랜드스토어</a><span class="cart__list__smartstore"> 스마트스토어</span>
                            <p>Apple 매직 키보드 - 한국어(MK2A3KH/A)</p>
                            <span class="price">662</span>원
                            <span style="text-decoration: line-through; color: lightgray;">119,000</span>
                        </td>
                        <td class="cart__list__option" style="width: 27%; text-align: center;">
                            <p>모델명 : 키보드 - 한국어 MK2A3KH/A / 1개</p>
                            수량 : <input type="number" class="count_btn" style="width: 80px;">
                        </td>
                        <td><span class="total">0</span>원<br>
                            <button class="cart__list__orderbtn">주문하기</button>
                        </td>
                        <td>무료</td>
                    </tr>
                    <tr class="cart__list__detail">
                        <td><input class="check__it" type="checkbox"></td>
                        <td>
                            <img src="image/mouse.jpg" alt="magic mouse">
                        </td>
                        <td><a href="#">컴퓨존</a><span class="cart__list__smartstore"> 스마트스토어</span>
                            <p>[애플] Magic Mouse [MK2E3KH/A]</p>
                            <span class="price">88,900</span>원
                        </td>
                        <td class="cart__list__option" style="width: 27%; text-align: center;">
                            <p>[애플] Magic Mouse [MK2E3KH/A]</p>
                            수량 : <input type="number" class="count_btn" style="width: 80px;">
                        </td>
                        <td>
                            <del class="total">0</del><del>원</del><br>
                            <span class="total">0</span>원
                        </td>
                        <td>무료</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="6">
                            <input class="all_Check" type="checkbox"> 
                            <button class="cart__list__optionbtn">선택상품 삭제</button>
                            <button type="button" class="cart__list__optionbtn" data-toggle="modal" data-target="#myModal">
                                쿠폰
                            </button>
                            <span class="float-right total_price" style="margin-right: 3%;">0원</span>
                            <span class="float-right reservation_Total" style="margin-right: 3%;">0개 선택</span>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tfoot>
            </form>
        </table>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
            <button class="cart__bigorderbtn right">주문하기</button>
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
                            <th width="150">쿠폰내용</th>
                            <th width="300">할인금액</th>
                            <th width="500">유효기간</th>
                        </tr>
                    </thead>
                    <tbody align="center">
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
            </div>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
            
        </div>
        </div>
    </div>
    <script src="resources/css/assets/js/basket.js"></script>
        <jsp:include page="../common/footer.jsp"/>
    
</body>

</body>
</html>