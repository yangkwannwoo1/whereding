<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
            	<h2>${ loginMember.userName }님의 장바구니</h2>
            <ul>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
            </ul>
        </div>
        <form>
            <table class="cart__list"> 

                
            </table>
        </form>
        <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left" onclick="continueShopping();">쇼핑 계속하기</button>
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
                            <th width="200">쿠폰내용</th>
                            <th width="300">할인금액</th>
                            <th width="500">유효기간</th>
                        </tr>
                    </thead>
                    <tbody id="coupon_list" align="center">

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
    
    <script>

        function continueShopping(){
            location.href="giftShop.bo";
        }

        $(function(){
            blist();
            cplist();
            //$(".count_btn").trigger("change")
            //$(".check__it").trigger("change")
        })


    	function blist(){

    		$.ajax({
    			url:"blist.ba",
    			data:{
    				userNo:${ loginMember.userNo }
    			},success:function(list){
    				console.log("ajax 성공")
    				
                    thead = `<thead>
                                <tr>
                                    <td style="width: 2%;"><input class="all_Check" type="checkbox"></td>
                                    <td style="width: 40%;" colspan="2">상품정보</td>
                                    <td style="width: 27%;">옵션</td>
                                    <td style="width: 15%;">상품금액</td>
                                    <td style="width: 15%;">배송비</td>
                                </tr>
                            </thead>`;
                    $(" form .cart__list").html("");
    				let value = "";
    				
    				
                    for(let i in list){
                        value += `<tbody class="cart__list__tbody">`+
                            `<tr class="cart__list__detail" id="` + list[i].refNo + `">
                                <td>
                                    <input class="check__it" type="checkbox">
                                    <input class="hiddenRefNo" type="hidden" value="` + list[i].refNo + `">
                                </td>
                                <td><img src="` +  list[i].filePath + `" alt="` +  list[i].giftName + `"></td>
                                <td><a href="giftDetail.gi?giftNo=`+ list[i].refNo + `">` +  list[i].userName + `</a><span class="cart__list__smartstore"> 스마트스토어</span>
                                    <br><br><a class="giftDetail" onClick='enrollgift(this);'>` +  list[i].giftName + `<br></a>
                                    <span class="price">` +  list[i].giftPrice + `</span>원
                                </td>
                                <td class="cart__list__option" style="width: 27%; text-align: center;">
                                    <p>카테고리 : ` +  list[i].categoryItem + `</p>
                                    수량 : <input type="number" min="1" class="count_btn" style="width: 80px;" value="` + list[i].count + `">
                                </td>
                                <td>
                                    <span class="total_sale" style="text-decoration: line-through; color: lightgray;">` + list[i].count *  list[i].giftPrice + `</span>
                                    <br>
                                    <span class="total">` +  list[i].count *  list[i].giftPrice + `</span>원
                                </td>
                                <td>무료</td>
                            </tr>`
                    }
                    value += `</tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="6">
                                            <input class="all_Check" type="checkbox"> 
                                            <button type="button" class="cart__list__optionbtn" onclick="deleteBasket();">선택상품 삭제</button>
                                            <button type="button" class="cart__list__optionbtn" onclick="cplist();" data-toggle="modal" data-target="#myModal">
                                                쿠폰
                                            </button>
                                            <span class="float-right total_price" style="margin-right: 3%;">총금액 : 0원</span>
                                            <span class="float-right reservation_Total" style="margin-right: 3%;">0개 선택</span>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tfoot>`
                    $(" form .cart__list").html(thead + value)
                    //let totalPrice = $(".total").text().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    //$(".total").text(totalPrice);
                    //let price = $(".price").text().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                    //$(".price").text(price)
    			},error:function(){
    				console.log("ajax 실패")
    			}
   
    		})
        }
    	
        function enrollgift(e){
            location.href="giftDetail.gi?giftNo=" + $(e).parents("tr").find(".hiddenRefNo").val();
        }
    	function deleteBasket(){

            let arr = [];
            let chkbox = $(".check__it");
            let count = 0;
            
            for(i=0;i<chkbox.length;i++) {
                if (chkbox[i].checked == true){
                    arr.push($(chkbox[i]).parents("tr").find(".hiddenRefNo").val())
                    count++
                }
            }
            //console.log(arr);

            if(count > 0){
                $.ajax({
                    url:"delete.ba",
                    traditional: true,
                    data:{
                    	  userNo:${ loginMember.userNo }
                        , delRef : arr
                    },success:function(data){
                        blist();

                        for(let i = 0; i < arr.length; i++){
    						$(".cart__list .all_Check").trigger("change")
    						$(".cart__list .check__it").trigger("change")
                        }
                    },error:function(){
                        console.log("장바구니 삭제 ajax 통신 실패")
                    }
                })
            }
    	}

        function cplist(){
            $.ajax({
                url:"cplist.ba",
                data:{
                    userNo:${ loginMember.userNo }
                },success:function(list){
                    let value = ""
                    for(let i in list){
                        console.log(list[i])
                        console.log("Zzzz")
                        
                        value += `<tr class="wishList">
                                <td height="100" onclick="">
                                    <input type="checkbox" name="cpno" value="">
                                </td>
                                <td>` + list[i].couponNo + `</td>
                                <td>` + list[i].couponContent + `</td>
                                <td >` + list[i].couponValue + `</td>  
                                <td>` + list[i].startCoupon + ` ~ ` + list[i].endCoupon + `</td>
                            </tr>`
                    }
                    $("#coupon_list").html(value);

                },error:function(){
                    console.log("쿠폰 불러오기 ajax 통신 실패")
                }
            })
        }
    
    </script>
</body>

</body>
</html>