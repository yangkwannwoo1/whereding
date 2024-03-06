<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
    <style>
        /* CSS 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            position: relative;
        }

        .close {
            position: absolute;
            top: 0;
            right: 0;
            padding: 10px;
            cursor: pointer;
            font-size: 50px;
        }

        /* 나머지 스타일은 원래 코드와 동일합니다. */
        .outer {
            width: 1180px;
            margin: auto;
            position: relative;
            /* background-color: antiquewhite; */
            display: flex;
        }
        .navi {
            width: 260px;
        }
        #navi_title {
            max-height: 140px;
            line-height: 1.3;
            display: block;
            margin-bottom: 0;
            border-bottom: 2px solid #222842;
            min-height: 50px;
            font-size: 32px;
        }
        #navi_top li {
            border-bottom: 1px solid #f0f0f0;
            list-style: none;
        }
        #navi_top a {
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 16px;
            color: #363636;
            font-weight: 700;
            padding: 12px 0 12px 18px;
            text-decoration: none;
            width: 150px;
        }
        .navi_tab {
            flex: 1;
            display: flex;
        }
        .bener {
            background: url(https://www.verygoodtour.com/Images/2013/Bg/cu_bg_1.png);
            width: 880px;
            height: 230px;
            position: absolute;
            top: 0;
            right: 0;
            margin-top: 30px;
            display: flex;
        }
        .bener h1 {
            line-height: 100px;
            margin-bottom: 35px;
            font-size: 28px;
            padding-left: 30px;
        }
        .bener h2 {
            padding-left: 50px;
            padding-top: 20px;
            margin-bottom: 0;
        }
        .bener_font {
            width: 600px;
            float: left;
        }
        .bener_font2 {
            padding-top: 100px;
            margin-left: 20px;
            width: 200px;
        }
        .bener_font2 button {
            width: 90px;
            height: 30px;
            background-color: white;
            margin: 0 5px; /* 버튼 사이의 간격을 조절 */
            vertical-align: middle; /* 버튼을 수직 가운데로 정렬 */
            float: left;
            margin: 0;
            margin-left: 5px;
        }
        .navi_tab {
            border-bottom: 2px solid;
        }
        .fnq{
            margin-left: 300px;
            width: 880px;
        }
        .fnq_sell {
            position: relative;
            border: 1px solid #ddd;
            height: 352px;
            overflow: hidden;
            width: 880px;
            height: 352px;
           
        }
        .fnq_sell ul {
            position: absolute;
            left: 1px;
            top: 1px;
            overflow: hidden;
            width: 880px;
        }
        .fnq_sell li {
            float: left;
            display: inline-block;
            width: 33.2%;
            height: 176px;
            border-bottom: 1px solid #f0f0f0;
            border-right: 1px solid #f0f0f0;
        }
        a {
            text-decoration: none;
            color: black;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
<div class="outer">
    <div class="navi">
        <h3 id="navi_title">고객센터</h3>
        <div class="navi_tab">
            <ul id="navi_top">
                <li><a href="service.bo" >고객센터 홈</a></li>
                <li><a href="notice.bo" >공지사항</a></li>
                <li><a href="qna.bo">Q&A</a></li>
                <li><a href="collabo.bo">협업업체 신청</a></li>
            </ul>
        </div>
        <div class="bener">
            <div class="bener_font">
                <h1>불편사항을 빨리 찾아 해결해드리겠습니다.</h1>
                <h2 style="font-size: 2em;">고객센터 전화번호 : ☎ 010-2093-8684</h2>
            </div>
            <div class="bener_font2">
                <h2 style="font-size: 2em;">바로가기</h2>
                <br>
                <button class="btn1">공지사항</button>
                <button class="btn1">Q&A</button>
            </div>
        </div>
        <div class="fnq">
            <h4>자주 찾는 질문</h4>
            <div class="fnq_sell">
                <ul>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('환불은 어떻게 해야 하나요?', '구매내역에서 환불처리를 진행하시면 됩니다.')">
                            <span class="faqTop6_num">01</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">환불은 어떻게 해야 하나요?</p>
                        </a>
                    </li>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('예약확인은 어떻게 하죠?', '마이페이지 예약내역확인에서 확인 가능합니다.')">
                            <span class="faqTop6_num">02</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">예약확인은 어떻게 하죠?</p>
                        </a>
                    </li>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('예약일정을 변경하고 싶어요', '마이페이지 예약내역확인에서 업체의 정보를 확인하시고 업체로 연락주시길 바랍니다.')">
                            <span class="faqTop6_num">03</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">예약일정을 변경하고 싶어요</p>
                        </a>
                    </li>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('배송된 물품이 파손되었을때는 어떻게 하죠?', '고객센터로 연락주시면 진행도와드립니다.')">
                            <span class="faqTop6_num">04</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">배송된 물품이 파손되었을때는 어떻게 하죠?</p>
                        </a>
                    </li>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('쿠폰사용을 취소하고 싶어요', '한 번 사용된 쿠폰은 취소가 불가능합니다.')">
                            <span class="faqTop6_num">05</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">쿠폰사용을 취소하고 싶어요</p>
                        </a>
                    </li>
                    <li>
                        <a class="faqTop6_item" onclick="openModal('상담후 결제했는데 취소하고싶으면 어떻게 하죠?', '마이페이지 상담내역확인에서 상담하신 업체의 정보를 확인하시여 업체쪽으로 연락주시길 바랍니다.')">
                            <span class="faqTop6_num">06</span>
                            <span class="faqTop6_cat"></span>
                            <p class="faqTop6_tit">상담후 결제했는데 취소하고싶으면 어떻게 하죠?</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<br><br><br>
<jsp:include page="../common/footer.jsp"/>
<script>
    function openModal(question, answer) {
        const modal = document.getElementById("modal");
        modal.style.display = "block";
        const modalContent = modal.querySelector(".modal-content");
        modalContent.innerHTML = `
            <span class="close" id="close" onclick="closeModal()">&times;</span>
            <h2>${question}</h2>
            <p>${answer}</p>
        `;


        $(".modal-content>h2").text(question);
        $(".modal-content P").text(answer);
    }

    function closeModal() {
        const modal = document.getElementById("modal");
        modal.style.display = "none";
    }
</script>

<div class="modal" id="modal">
    <div class="modal-content">
        <h2></h2>
        <p></p>
    </div>
</div>



</body>
</html>