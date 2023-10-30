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
  .containergDetail{
    
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
    width: 500px;
  }
  .buy_btn{
    width: 220px;
    height: 50px;
    line-height: 40px;
    background-color: #6c757d;
    border: 1px solid gray;
  }
  #back_btn{
  	width: 220px;
    height: 50px;
    line-height: 40px;
    background-color: #999;
    border: 1px solid gray;
    border-radius:3px;
    color:white;
    
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
    width: 50px;
    height: 30px;
    padding: 0px;
    text-align:center;
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
  #like_area *{
    position: absolute;
  }
  #basket_area *{
  	position: absolute;
  	
  }
  #basket_area img:hover{
    cursor: pointer;
  }

  #like_area img:hover{
  	cursor: pointer;
  }

  /* 좋아요 바운스 */
  @-webkit-keyframes bounce {
    0%, 20%, 50%, 80%, 100% {-webkit-transform: translateY(0);}
    40% {-webkit-transform: translateY(-30px) }
    60% {-webkit-transform: translateY(-20px);}
  } 
  @keyframes bounce {
      0%, 20%, 50%, 80%, 100% {transform: translateY(0);}
      40% {transform: translateY(-30px);}
      60% {transform: translateY(-20px);}
  } 
  .bounce {
      -webkit-animation-duration: 1s;
      animation-duration: 1s;
      -webkit-animation-name: bounce;
      animation-name: bounce;
  }
  #heart_basket_area>div{
  	display: inline-block;
  }

  /* 토스트메시지 */
  .notification-container {
    background: rgba(215, 79, 0, 0.85);
    border-radius: 10px;
    padding: 15px 20px;
    opacity: 0;
    visibility: none;
    transition: all 1s ease-in-out;
    text-align: center;
    width: 250px;
    height: 50px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: -999;
    position: fixed;
  }
  
  .notification-container.show {
    z-index: 999;
    opacity: 1;
    visibility: visible;

    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

  }
  #giftDelete{
  	color:white;
  	background-color:red;
  	border:1px solid gray;
  	margin:5px;
  }
  </style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div class="containergDetail">
        
        
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
                        <input type="number" name="count_option" id="count_option" min="0" value="0" onchange="amount();">
                        <!-- 수량 up down 버튼임 -->
                    <span id="buyFalseSpan">재고가 부족하여 구매할수 없습니다. 재고를 확인해주랑꼐</span>                        
                    </p>
                    
                    <!-- 수량 직접입력할 경우 (텍스트에 직접 숫자입력 -->
                    <script>
                    function amount(){
                    	let buyCount = $("#count_option").val();
                    	let stock = ${gift.count}
                    	console.log(buyCount);
                    	console.log(stock);
                    	
                    	
                    	if(buyCount>stock){
                    		$("#buyFalseSpan").css("display", "block");
                    		$(".buy_btn").attr("disabled", true).html("구매하기");
                    	}else{
                    		$(".buy_btn").attr("disabled", false);
                    		$("#buyFalseSpan").css("display", "none");
                    		let formattedPrice = new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(${gift.giftPrice}* buyCount);
                    		$(".buy_btn").html(formattedPrice + " 원 결제하기").css("background", "#f28123");
                    	}
                    }
                    </script>
                    
                

                </li>
            </ul>
            <div id="heart_basket_area">
                <div id="like_area" style="width: 50px; height: 50px;">
                  <img class="glike like_off" src="resources/css/assets/img/heart_n.png" id="nn" style="height: 40px;">
                  <img class="glike like_on bounce" src="resources/css/assets/img/heart_y.png" id="yy" style="height: 40px; display: none;">
                </div>
                <div id="basket_area" style="width: 50px; height: 50px;">
                  <img class="gbasket basket" src="resources/css/assets/img/cart_n.png" id="basketbtn" style="height: 40px;">
                </div>
            </div>
            
            <%-- <c:if test="${not empty loginMember && loginMember.gradeNo eq '3' }"> --%>
            	<button id = "giftDelete" onclick="giftDelete('${gift.giftNo}');">상품삭제하기</button>
            <%-- </c:if> --%>
            
            <script>
	            	function giftDelete(giftNo){
	            		let flag = confirm("상품을 삭제하시겠습니까?");	            		
	            		
	            		if(flag == true){
	            			console.log(giftNo);
	            			location.href="giftDelete.gd?giftNo="+giftNo;
	            		}
	            	}
            </script>
            
            <div class="buy_area">
                <button onclick="back();" id="back_btn">이전으로</button>
                <button class="btn btn-secondary buy_btn" style="line-height:10px;" disabled >구매하기</button>
                
                <script>
                	function back(){
                		history.back();
                	}
                    element1 = document.getElementById("nn");
                    element2 = document.getElementById("yy");
                    element3 = document.getElementById("basketbtn");

                    element1.addEventListener("click", function(e) {
                      e.preventDefault;
                  
                      element1.classList.remove("bounce");
                  
                      element1.offsetWidth = element1.offsetWidth;
                  
                      element1.classList.add("bounce");
                    }, false);

                    element2.addEventListener("click", function(e) {
                      e.preventDefault;
                  
                      element2.classList.remove("bounce");
                  
                      element2.offsetWidth = element2.offsetWidth;
                  
                      element2.classList.add("bounce");
                    }, false);
                    
                    element3.addEventListener("click", function(e) {
                      e.preventDefault;
                  
                      element3.classList.remove("bounce");
                  
                      element3.offsetWidth = element3.offsetWidth;
                  
                      element3.classList.add("bounce");
                    }, false);


                  $(document).on("click",".glike",function(){
                	  
                    console.log($(this).attr("id"))
                	  if($(this).attr("id")=="yy"){
                      // 좋아요 없어짐
                		  $("#yy").css("display","none");
                		  $("#nn").css("display","");
                	  }else{
                      // 좋아요 생김
                		  $("#yy").css("display","");
                		  $("#nn").css("display","none");
                    }
                    $.ajax({
                      url:"glike.bo",
                      data:{
                        greatNo:'${ gift.giftNo }',
                        userNo:'${ loginMember.userNo }',
                      },success:function(data){
                    	  
                      },error:function(){
                        console.log("좋아요 ajax 요청 실패!")
                      }
                    })
                  })
                  
                  
                  $(document).on("click",".gbasket",function(){
                	
                	console.log($("#count_option").val())
                    console.log($(this).attr("id"))

                    $.ajax({
	                      url:"gbasket.bo",
	                      data:{
	                    	count:$("#count_option").val(),
	                        refNo:'${ gift.giftNo }',
	                        userNo:'${ loginMember.userNo }',
	                      },success:function(data){
                          console.log(data)
                          if(data == 'NNNNY'){
                            $("#notification-container p").text("장바구니에 담겼습니다.")
                          }else{
                            $("#notification-container p").text("잠시 후에 다시 이용해주세요.")                            
                          }
                          showNotification()
	                      },error:function(){
	                        console.log("장바구니 불러오기 ajax 요청 실패!")
	                      }
                    	})
                  	})
                  	
                  	$(function(){
                  		$.ajax({
                  			url:"chklike.bo",
                  			data:{
                  				greatNo:'${ gift.giftNo }',
                  				userNo:'${ loginMember.userNo }'
                  			},success:function(data){
                  				let value = "";
                  				if(data == 'NNNYY'){
                            	  value = `<img class="glike like_off" src="resources/css/assets/img/heart_n.png" id="nn" style="height: 40px;">
                                      <img class="glike like_on bounce" src="resources/css/assets/img/heart_y.png" id="yy" style="height: 40px; display: none;">`
                  				}else{
                              	  value = `<img class="glike like_off" src="resources/css/assets/img/heart_n.png" id="nn" style="height: 40px; display: none;">
                                      <img class="glike like_on bounce" src="resources/css/assets/img/heart_y.png" id="yy" style="height: 40px;">`	
                  				}
                  				$("#like_area").html(value);
                  				console.log(data)
                  				
                  			},error:function(){
                  				console.log("ajax 좋아요 확인 실패")
                  			}
                  		})
                  	})
                </script>
            </div>
            <div class="notification-container" id="notification-container">
              <p></p>
            </div>
        </div>
    </div>
    <script>
      const notification = document.getElementById('notification-container')

      // Show notification
      const showNotification = () => {
        notification.classList.add('show')
        setTimeout(() => {
          notification.classList.remove('show')
        }, 2000)
      }

    </script>
 	<jsp:include page="../common/footer.jsp"/>
    

</body>
</html>