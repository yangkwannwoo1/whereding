<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 변경</title>
    
    <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>


    <!-- 필요한 스타일시트 및 스크립트 링크 추가 -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <!-- 추가적인 스타일시트 및 스크립트를 여기에 추가 -->

    <style>
        /* 카테고리 */
        main {
             width: 1200px;
             height: auto;
             margin: 0 auto;
             overflow: hidden;
         }
 
         main > aside {
             float: left;
             width: 220px;
             height: 100%;
         }
 
         main > aside > .category {
             position: relative;
             width: 100%;
             height: 600px;
             background: #0073C6;
             margin-top: 80px;
         }
 
         main > aside > .category > li {
             width: 100%;
             line-height: 50px;
             color: #ccc;
             font-size: 15px;
             font-weight: bold;
             border-bottom: 1px solid #2b313f;
             box-sizing: border-box;
         }
 
         main > aside > .category > li > a {
             display: block;
             padding: 0 30px;
             line-height: 80px;
             color: #F98973  ;
             font-weight: bold;
             text-decoration: none;
             font-size: 1em;
         }
 
         main > aside > .category > li > a:hover {
             background: #FABFC1;
             color: #fff;
         }
 
         main > section {
             float: right;
             width: 900px;
             height: auto;
             box-sizing: border-box;
         }
 
         .tab-content{
             display: none;
             background: #FABFC1;
             padding: 15px;
         }
 
         /*수정 */
         .wrap{
             box-sizing: border-box;
             width: 1200px;
             height: 700px;
             margin: auto;
             margin-top: 100px;
         }   
         #header_1{
             margin: auto;
             height: 100px;
         }
         #header_2{
             float:right;
             margin:auto;
             width: 570px;
             margin-top: 8px;
         }
         #navi{
             box-sizing: border-box;
             width: 260px;
             margin-left: 30px;
             box-shadow: 5px 0 5px -5px #333;
         }
         
         #main{
             box-sizing: border-box;
             width: 800px;
         }
         .cont{
             float: left;
         }
         input{
             border-radius: 5px;
         }
         .sujung{
             background-color: black;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         .chenge{
             background-color: blue;
             color: white;
             border-radius: 10px;
             width: 130px;
             height: 50px;
         }
         .exit{
             background-color: red;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         input{
             width: 200px;
             height: 30px;
         }
         #pwd_sujung{
             background-color: blue;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         #exit_1{
             background-color: red;
             color: white;
             border-radius: 10px;
             width: 100px;
             height: 50px;
         }
         
         #cg-span{
             top:8px;
         }
         
         #profileimg{
             border-radius: 80px;
         }
         
         .gradedetail2{
           position: absolute;
           width: 100px;
           -webkit-border-radius: 8px;
           -moz-border-radius: 8px;
           border-radius: 10px;
           background: #333;
           color: #fff;
           font-size: 14px;
         }
 
         .gradedetail1{
             cursor: pointer;
         }
         
         .my-navi{
             width: 140px;
             height: 60px;
             margin-bottom: 30px;
             padding-top: 10px;
             font-size: 25px;
         }
         
         .myProfile{
             border: 2px solid lightgray;
             width: 450px;
             height: 340px;
             padding: 50px;
             border-radius: 10px;
             margin-left: 20px;
         }
         
         .select-navi{
             text-decoration : underline;
             text-underline-position: under;
             font-weight: bolder;
         }
         li{
             list-style: none;
         }
         a{
             color: white;
         }
         ul{
             padding-left: 30px;
         }
         #container{
         width: 800px;
         height: auto;
         margin: auto;
     }
     .container_header{
         width: 100%;
         height: 20%;
         border: 1px solid black;
     }
     .product_wrap{
         width: 750px;
         
         
         border-radius: 12px;
         box-shadow: rgba(0, 0, 0, 0.08) 0px 2px 4px 0px, rgba(0, 0, 0, 0.16) 0px 0px 1px 0px;
         padding: 24px 24px 16px;
     }
     .product_header{
         width: 100%;
         height: 28px;
         display: flex;
         font-size: 20px;
         font-weight: bold;
         font-stretch: normal;
         font-style: normal;
         line-height: 1.4;
         letter-spacing: -0.5px;
         color: rgb(17, 17, 17);
     }
     .product_content{
         border-radius: 8px;
         border: 1px solid rgb(238, 238, 238);
         background-color: rgb(255, 255, 255);
         margin-top: 16px;
     }
     .d{
         margin-left: 450px;
         color: #999;
         font-size: 17px;
         font-weight: 700;
     }
     .content_tr{
         /* border: 1px solid red; */
         width: 100%;
       
     }
     .content_td1{
         height: 100%;
         padding: 20px;
         vertical-align: top;
     }
     .content_td2{
         width: 200px;
         height: 100%;
         text-align: center;
         border-left: 1px solid rgb(238, 238, 238);
         padding: 20px;
     }
     .product_status{
         width: 100%;
         align-items: center;
         margin-bottom: 4px;
         height: 20px;
     }
     .product_img{
         width: 100%;
         border: none;
         height: 80px;
         display: flex;
         margin-top: 10px;
         
     }
     .product_status{
         font-weight: bold;
         font-size: 1.25rem;
         color: #111111;
         line-height: 1;
     }
     .product_name{
         padding: 10px;
     }
     .refund_btn, .cancel_btn{
         width: 150px;
         border: 1px solid rgb(221, 221, 221);
         color: rgb(17, 17, 17);
         background-color: rgb(255, 255, 255);
         border-radius: 4px;
         height: 2.25rem;
     }
     .cancel_btn{
         margin-top: 10px;
 
     }
     hr {
         border: none; /* 기본 선 제거 */
         border-top: 1px solid #9999994d; /* 원하는 스타일 및 색상으로 설정 */
     }
     .header_h{
         color: #F98973;
         font-weight: bold;
         font-size: 20px;
     }
     .header_span{
         font-size: 15px;
         margin-left: 270px;
         color: #999;
 
     }
     .product_review{
         margin : 10px;
     }
     #review_btn{
         width: 58px;
         height: 34px;
         color: rgb(52, 106, 255);
         background-color: rgb(255, 255, 255);
         border: 1px solid #FABFC1;
         cursor: pointer;
     }
   
   
     .refund_btn:hover, .cancel_btn:hover, #review_btn:hover{
         background-color: #FABFC1;
         color: white;
     }
     h3{
         background-color: #FABFC1;
     }
     h3>span{
         color: rgba(255, 255, 255, 0.929);
     }
     .rating {
         font-size: 30px;
     }
 
     .rating span {
         cursor: pointer;
     }
 
     .rated {
         color: black;
     }
 
     #selectedRating {
         font-size: 20px;
     }
     </style>
</head>
<body>
    <!-- 상단 헤더 포함 -->
    <jsp:include page="../common/header.jsp"/>

    <div id="wrapper">
        <main>
            <aside>
                <ul class="category">
                    <li>마이페이지</li>
                    <li>
                        <a href="giftOredrList.me?userNo=${loginMember.userNo}">
                            <i class="fas fa-home"data-tab="tab-1"> </i> 쇼핑
                            </i>
                        </a>
                        <ul>
                            <li>
                                <a href="giftOredrList.me?userNo=${loginMember.userNo}" style="color: white;">결제내역 / 배송조회</a>
                            </li>
                            <li>
                                <a href="reserveList.me?userNo=${loginMember.userNo}" style="color: white;">상담예약 확인목록</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="myPage.me">
                            <i class="fas fa-utensils" data-tab="tab-4"></i> my정보
                            </i>
                        </a>
                        <ul>
                            <li>
                                <a href="myPage.me" style="color: white;">내정보조회</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </aside>
            <section class="cart">
                <div id="container" style="margin: 0;">
                    <h3 align="center" class="header_h"><span>답례품 결제내역</span></h3>
                    <span class="header_span">고갱님이 구매하신 답례품 내역입니다.</span>
                    
                    <c:forEach var="gh" items="${gh}">
	                    <div class="product_wrap">
	                        <table>
	                            <colgroup>
	                                <col width="600">
	                                <col width>
	                            </colgroup>
	                            <div class="product_header">${gh.createDate } 주문<div class="d">주문상세</div></div>
	                            <tr class="content_tr">
	                                <td class="content_td1">
	                                    <div class="product_status">
	                                        <span>구매완료</span>
	                                    </div>
	                                    <div class="product_img">
	                                        <img src="${gh.imgPath}/${gh.img1}" width="25%" height="100%">
	                                        <div class="product_name">
	                                            <div><span>${gh. giftName }</span></div>
	                                            <div><span>${gh.piece }개</span></div>
	                                            <div><span>${gh.giftContent }</span></div>
	                                        </div>
	                                    </div>
	                                </td>
	                                <td class="content_td2">
                                        <form action="http://info.sweettracker.co.kr/tracking/4" method="post" target="_blank" >
                                            <div class="form-group">
                                              <input type="hidden" class="form-control" id="t_key" name="t_key" value="5RrBazXfHPynrdGyvioSMQ">
                                            </div>
                                            <div class="form-group">
                                              <input type="hidden" class="form-control" name="t_code" id="t_code" value="04">
                                            </div>
                                            <div class="form-group">
                                              <input type="hidden" class="form-control" name="t_invoice" id="t_invoice" value="616407195675">
                                            </div>
                                            <button type="submit" class="cancel_btn">배송 조회</button>
                                        </form>
	                                    <button class="cancel_btn" onclick="cansel('${gh.ghisNo}');" >결제취소</button>
	                                </td>
	                            </tr>
	                        </table>
                           
                            <c:if test="${gh.grivNo eq '0'}">
	                        <div class="product_review">
	                            <form action="giftReview.gf" method="post" enctype="multipart/form-data">
	                                리뷰 : <select name="grivGrade" id="grivGrade">
                                        <option value="5">★★★★★</option>
                                        <option value="4">★★★★</option>
                                        <option value="3">★★★</option>
                                        <option value="2">★★</option>
                                        <option value="1">★</option>
                                    </select>
                                    <input type="file" name="upfile">                                        
	                                <input type="text" style="width: 90%; height: 30px; margin-top: 7px;" name="grivContent" required>
	                                <button id="review_btn">등록</button>
                                    <input type="hidden" name="userNo" value="${loginMember.userNo}">
                                    <input type="hidden" name="ghisNo" value="${gh.ghisNo}">
	                            </form>
	                        </div>
                            </c:if>
	                    </div>
                    </c:forEach>
                    <script>
                        function cansel(ghisNo){
                            location.href = "cancellation.bk?userNo="+${loginMember.userNo}+"&ghisNo="+ghisNo;
                        }
                    </script>
                </div>
                
            </section>
        </main>
    </div>

    <!-- 하단 푸터 포함 -->
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- jQuery 및 추가 스크립트 포함 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <!-- 추가적인 스크립트를 여기에 추가 -->
    <script>
        $(function () {
            $('.star').text("☆");

            $('.star').click(function () {
                var rating = $(this).index() + 1; 
                console.log("별점: " + rating);

                $(this).text("★").prevAll('.star').text("★");
                $(this).nextAll('.star').text("☆");
            });
        });
    </script>
    <button onclick="ttest();">버튼</button>
    <script>
        function ttest(){
           alert("이스터에그당! 어케 찾았누~")
        }
    </script>
</body>
</html>
