<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
  .container{
    
    width: 1000px;
    height: 800px;
    margin: auto;
    padding-top: 25px;
    display: flex;
  }
  .product_img{
    width: 400px;
    height: 320px;
    margin: 10px;
    padding: 8px;
    text-align: center;
    border: 1px solid gray;
    
  }
  .product_sub{
    
    width: 420px;
    height: 120px;
    margin: 8px;
    box-sizing: border-box;
  }
  #product_content{
    width: 400px;
    margin: 10px;
    padding: 8px;
    
  }
  .product_info{
    
    list-style: none;
  }
  .product_detail{
    display: inline-block;
  }
  .buy_area{
    width: 100%;
  }
  .buy_btn{
    width: 220px;
    height: 50px;
    line-height: 40px;
    background-color: #f28123;
    border: 1px solid gray;
  }
  .cart_btn, .like_btn{
    width: 70px;
    height: 50px;
    line-height: 40px;
    border: none;
    background-image: url("https://i.pinimg.com/474x/a1/9b/e9/a19be91f8b17de33ff7dbe40f6a796ce.jpg");
    background-size: 100% 100%;
    background-repeat: no-repeat;
    margin-left: 5px;
    border: 1px solid gray;
  }
  .like_btn{
    background: none;
    background-image: url("https://6n7.com/design/junenjuly/img/wish.png");
    background-size: 100% 100%;
    background-repeat: no-repeat;
    
  }
  #count_option{
    width: 25px;
    height: 20px;
    line-height: 20px;
  }
  .count_up{
    cursor: pointer;
    
  }
  .count_down{
    cursor: pointer;
  }
  #buyFalseSpan{
  	color:red;
  	font-size:12px;
  	font-weight:bold;
  	display:none;
  }
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
        
        
        <div>
        
        <c:choose>
        	<c:when test="${not empty gift.imgPath}">
        		<div class="product_img">
	        		<img src="${gift.imgPath}/${gift.img1}" alt="${gift.img1}" width="100%" height="100%">
	        	</div>
	        	<div class="product_sub">
	            	<img src="${gift.imgPath}/${gift.img2}" width="47.3%" height="200px">
	            	<img src="${gift.imgPath}/${gift.img3}" width="47.3%" height="200px">
	        	</div>
        	</c:when>
        	<c:otherwise>
        	<div class="product_img">
        		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR03YrNv2teZ2XalXaeyEdNtIPsRtaTu-RM3pg0xTen&s" width="100%" height="100%"/>
        		</div>
        	</c:otherwise>
        </c:choose>
    </div>
        <div id="product_content">
            <p style="font-size: 18px; margin-left: 20px;">Product Info<span style="font-weight: normal; font-size: 12px; color: #b2b2b2;"> 제품정보</span></p>
            <ul class="product_info">
                <li>
                    <p class="product_detail">상품명 </p>
                    <p class="product_detail">
                        <strong>${gift.giftName}</strong>
                    </p>
                </li>
                <li>
                    <p class="product_detail">상품카테고리 </p>
                    <p class="product_detail">
                        <strong>${gift.categoryItem}</strong>
                    </p>
                </li>
                <hr>
                <li>
                    <p class="product_detail">상품가격</p>
                    <p class="product_detail">
                        <strong>${gift.giftPrice }</strong>
                    </p>
                </li>
                <li>
                    <p class="product_detail">상품내용</p>
                    <p class="product_detail">
                        <strong>${gift.giftContent}</strong>
                    </p>
                </li>
                <hr>
                <li>
                    <p class="product_detail">재고</p>
                    <p class="product_detail">
                        <strong id="product_count">${gift.count}</strong>
                    </p>
                </li>
                <li>
                    <p> 수량
                        <input type="text" name="count_option" id="count_option" onchange="test();">
                        <!-- 수량 up down 버튼임 -->
                        <a class="count_up"><img src="https://img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif" width="24px" height="12px"></a>
                        <a class="count_down"><img src="https://img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" width="24px" height="12px"></a>
                    <span id="buyFalseSpan">재고가 부족하여 구매할수 없습니다. 재고를 확인해주랑꼐</span>                        
                    </p>
                    
                    <!-- 수량 직접입력할 경우 (텍스트에 직접 숫자입력 -->
                    <script>
                   /*  $("#count_option").on("change", function(){
                        let value = $(this).val();
                        console.log(value);
                    }); */
                    function test(){
                    	let buyCount = $("#count_option").val();
                    	let stock = ${gift.count}
                    	console.log(buyCount);
                    	console.log(stock);
                    	
                    	if(buyCount>stock){
                    		$("#buyFalseSpan").css("display", "block");
                    		$(".buy_btn").attr("disabled", true);
                    	}else{
                    		$(".buy_btn").attr("disabled", false);
                    		$("#buyFalseSpan").css("display", "none");
                    	}
                    	console.log(value);
                    }
                    </script>
                    
                

                </li>
            </ul>
            <div class="buy_area">
                <button class="btn btn-secondary buy_btn" style="line-height:10px;" disabled >구매하기</button>
                <a class="btn btn-primary cart_btn"></a>
                <a class="btn btn-primary like_btn"></a>
                <button onclick="back();">이전으로</button>
                
                <script>
                	function back(){
                		history.back();
                	}
                </script>
            </div>
        </div>

    </div>
</body>
</html>