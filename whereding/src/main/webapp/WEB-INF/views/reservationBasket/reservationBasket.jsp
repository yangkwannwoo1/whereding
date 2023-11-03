<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/assets/css/basket.css">


    <style>
        .cart__info p{
            font-size: large;
            font-weight: 400;
        }
        .cart__tag span{
            font-size: large;
            margin: 0px 5px;
            font-weight: 600;
            color: gray;
        }
        .carousel-inner img {
            width: 100%;
            height: 100%;
            text-align: center !important;
          }
        .cart_detail_img img{
            height: 300px !important;
            width: 400px; 
            border: 1px solid lightgrey; 
            border-radius: 20px;
            margin: auto !important;
        }

        .cart__list{
            border: none;
        }

        .cart__list td .btn-success{
            width: 150px; 
            height: 50px; 
            line-height: 35px; 
            font-size: large;
        }
        .cart__list__detail :nth-child(4){
            border-left: none;
        }

        .cart__list__detail .carousel-indicators{
            background-color: transparent;
            padding: 0px;
            margin-bottom: 0px;
            border: none;
            border-radius: 0px;
            font-size: 0px;
            font-weight: 300; 
        }
        .cart form{
            margin: 0px 0px 40px 0px;
            border: 2px solid lightgray;
            border-radius: 20px;
        }

        .cart form>h2{
            padding: 15px;
            border-bottom: 2px solid black;
            margin: 0px !important;
        }
        .carousel-item{
            text-align: center;
        }

        .cart ul{
            margin-bottom: 0px;
        }
        .cart table{
        	border-top: none;
        } 


    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <a id="login" data-toggle="modal" data-target="#modal" role="button" onclick="a();">
        <i class="material-icons">lock</i></a>
        
    <div id="modal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>
    <script>
        function a(){
            $(".modal-content").load("consulting.md");

        }
</script>
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>가명을 사용하거나 전화번호 등 타인명의 사용시 예약이 취소 될 수 있습니다.</li>
                <li>상담은 1:1로 진행합니다.</li>
                <li>기타문의는 유선전화 또는 카카오톡채널 '웨어딩'으로 해주세요.</li>
            </ul>
        </div>
        <!-- 여기에 ajax로 데이터 뿌려준다 -->
    </section>
            <div class="cart__mainbtns">
            <button class="cart__bigorderbtn left">이전으로 가기</button>
            <button class="cart__bigorderbtn right">홈으로 가기</button>
        </div>
    <script>
    	$(function(){
    		$.ajax({
    			url:"selectConsulting.rs",
    			data:{
    				userNo:${ loginMember.userNo }
    			},success:function(list){
    				//console.log(list.length);
    				if(list.length > 0){
                        let hall = "";
                        let studio = "";
                        let dress = "";
                        let makeup = "";
    					for(let i in list){
                            let value = "";
    						value += `<table class="cart__list">
    			                        <colgroup>
                                            <col style="width:30%;">
                                            <col style="width:25%;">
                                            <col style="width:25%;">
                                            <col style="width:20%;">
    		                            </colgroup>
    		                            <tbody class="cart__list__tbody">
                                            <tr class="cart__list__detail">
                                                <td rowspan="3" class="cart_detail_img">
                                                    <div id="demo" class="carousel slide" data-ride="carousel">
                                                        
                                                        <ul class="carousel-indicators">
                                                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                                                            <li data-target="#demo" data-slide-to="1"></li>
                                                            <li data-target="#demo" data-slide-to="2"></li>
                                                        </ul>

                                                        <div class="carousel-inner">
                                                            <div class="carousel-item active">
                                                                <img src="` + list[i].file1 + `" width="1100" height="500">
                                                            </div>
                                                            <div class="carousel-item">
                                                                <img src="` + list[i].file2 + `" width="1100" height="500">
                                                            </div>
                                                            <div class="carousel-item">
                                                                <img src="` + list[i].file2 + `" width="1100" height="500">
                                                            </div>
                                                        </div>
                                                        
                                                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                                            <span class="carousel-control-prev-icon"></span>
                                                        </a>
                                                        <a class="carousel-control-next" href="#demo" data-slide="next">
                                                            <span class="carousel-control-next-icon"></span>
                                                        </a>
                                                    </div>
                                                </td> 
    		                                    <td style="padding: 15px 2%;" colspan="2">
    		                                        <h2>` + list[i].enterprise + `</h2>
    		                                    </td>
    		                                    <td rowspan="2" style="border-left: 1px solid lightgrey; padding: 15px;">
    		                                        <img src="assets/img/location.png" style="height: 230px; width: 100%;" alt="">
    		                                    </td>
    		                                </tr>
    		                                <tr>
    		                                    <td class="cart__info" style="padding: 15px 2%;">
    		                                        <p><i class="fas fa-map-marker-alt"></i> ` + list[i].address + `</p>
    		                                        <p style="text-align: left;"><i class="fas fa-phone fa-flip-horizontal"></i> ` + list[i].phone + `</p>
                                                    <p style="text-align: left;"><i class="fas fa-calendar-alt"></i> open ` + list[i].startTime + `:00 / ` + list[i].endTime + `:00</p>
                                                </td>
                                                <td class="cart__info" style="padding: 15px 2%;">`;
                                                    if((list[i].companyNo).substr(0,1) == "H"){
                                                        value +=
                                                                `<p><i class="fas fa-utensils"></i> 주말영업 : ` + list[i].weekOpen + `</p>                                                    
                                                                <p><i class="fas fa-won-sign"></i> 대관비 : ` + list[i].price + `</p>
                                                                <p><i class="fas fa-chair"></i> 홀 좌석수: `+ list[i].hallSeat + `석</p>
                                                                <p></p>
                                                                <p><i class="fas fa-utensils"></i> 식당 좌석수 : ` + list[i].restaurantSeat + `석</p>
                                                                <p><i class="fas fa-utensils"></i> 식대 : ` + list[i].hallMeal + `원</p>`;
                                                    }else{
                                                        value += 
                                                                `<p><i class="fas fa-utensils"></i> 주말영업 : ` + list[i].weekOpen + `</p>                                                    
                                                                <p><i class="fas fa-won-sign"></i> 가격 : ` + list[i].price + `</p>
                                                                <p></p>`;
                                                    }

                                        value +=`</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="cart__tag" style="padding: 15px 2%;">`;
                                                
                                                let tag = (list[i].tagContent)
                                                if(tag != null){
                                                    tag= tag.split(', ')
                                                    for(let t in tag){
                                                            value += `<span># ` + tag[t] + `</span>`;
                                                        }
                                                }else{
                                                    value += `<span> 태그가 존재하지 않습니다.`
                                                }
                                    value += `</td>
                                                <td style="text-align: right; padding-right: 15px;">
    		                                        <a href="" class="btn btn-success rsv_btn" data-toggle="modal" data-target="#myModal">예약하기</a>
                                                </td>
                                            </tr>
                                        </tbody>
    		                        </table>`;
                            if((list[i].companyNo).substr(0,1) == "H"){
                                hall += value;
                            }else if((list[i].companyNo).substr(0,1) == "S"){
                                studio += value;
                            }else if((list[i].companyNo).substr(0,1) == "D"){
                                dress += value;
                            }else{
                                makeup += value;
                            }
    					}
                        let html = "";
                        if(hall != ""){
                            html += "<form><h2>WEDDINGHALL</h2>" + hall + "</form>";
                        }
                        if(studio != ""){
                            html += "<form><h2>STUDIO</h2>" + studio + "</form>";
                        }
                        if(dress != ""){
                            html += "<form><h2>DRESS</h2>" + dress + "</form>";
                        }
                        if(makeup != ""){
                            html += "<form><h2>MAKEUP</h2>" + makeup + "</form>";
                        }
    					$(".cart").html(html);
    				}else{	
    					console.log("장바구니가 비어있습니다.")
    				}
    				
    			},error:function(){
    				console.log("예약 장바구니 ajax 통신 실패!")
    			}
    		})
    	})
    </script>



    

   	<jsp:include page="../common/footer.jsp"/>
    
</body>
</html>