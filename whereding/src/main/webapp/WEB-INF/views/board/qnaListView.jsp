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
        a{
            text-decoration: none;
            color: black;
            font-weight: 600;
        }
        .outer {
            width: 1180px;
            margin: auto;
            display: flex; /* 부모 요소에 flex 속성 추가 */
        }
        .navi {
            width: 260px;
        }
        #navi_title {
            max-height: 140px;
            line-height: 1.3;
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
       
        .navi_tab {
            border-bottom: 2px solid;
        }
       
        .notice {
            flex: 1; /* 나란히 배치하기 위해 flex 속성 추가 */
            height: 1000px;
            /* border: 1px solid red; */
            margin-left: 40px;
        }
        .berner {
            width: 880px;
            height: 170px;
            border: 1px solid red;
        }
        .title-wrap.title-notice {
            background: url(https://www.verygoodtour.com/Images/2013/Bg/onebyone_bg.png) no-repeat left top;
            width: 880px; /* 배경 이미지의 너비를 설정해주세요 */
            height: 170px; /* 배경 이미지의 높이를 설정해주세요 */
            margin-top: 30px;
        }

        .title-3 .title {
            font-size: 28px;
            color: #222842;
            font-weight: bold;
            line-height: 1.2;
        }
        .title-desc {
            margin-top: 14px;
            font-size: 20px;
            color: #363636;
        }
        .notice table{
            border-top: 2px solid #f28123;
            width: 100%;
            border-collapse: collapse;
        }
        col {
            display: table-column;
        }
        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }
        tr {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }
        .notice>table>thead>tr>th{
            background: #fff;
            border: none;
            font-size: 18px;
            padding: 14px 8px;
            border-bottom: 1px solid #363636;
        }
        tbody {
            display: table-row-group;
            vertical-align: middle;
            border-color: inherit;
        }
        tr {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }
        .notice>table>tbody>tr>td{
            font-size: 16px;
            color: #363636;
            text-align: center;
            background: #fff;
            border: none;
            padding: 14px 8px;
            border-bottom: 1px solid #ddd;
            vertical-align: middle;
        }
        .ta_l {
            text-align: left !important;
        }
        .dontask{
            font-size: 15px;
            font-weight: 700;
            color: red;
            padding: 20px;
            
        }
        #degi{
            background-color: rgba(255, 0, 0, 0.644);
            color: white;
            font-weight: 700;
            border: pink;
            width: 80px;
            height: 25px;
        }
        #whan{
            background-color: rgba(0, 128, 0, 0.678);
            color: white;
            font-weight: 700;
            border: greenyellow;
            width: 80px;
            height: 25px;
        }
        .btn button{
            float: right;
            margin-top: 10px;
            margin-right: 20px;
            width: 80px;
            height: 30px;
            background-color: #03c75a;
            color: white;
            border:1px solid #007033;
            font-weight: 900;
            font-size: 15px;
        }
    </style>
</head>
<body>
<div class="outer">
    <div class="navi">
        <h3 id="navi_title">고객센터</h3>
        <div class="navi_tab">
            <ul id="navi_top">
                <li><a href="service.bo" >고객센터 홈</a></li>
                <li><a href="notice.bo" >공지사항</a></li>
                <li><a href="qna.bo">Q&A</a></li>
                <li><a href="#">환불규정</a></li>
                <li><a href="#" >배송규정</a></li>
                <li><a href="#">기타사항</a></li>
            </ul>
        </div>
    </div>
    <div class="notice">
        <div class="title-wrap title-3 customer-center title-notice">
            <div class="title">Q&A</div>
            <div class="title-desc">
                상품 및 굼금한 사항에 대해 문의해주시면 <br>
                빠르게 상담받으실 수 있습니다.
            </div>
            <br><br>
            <span class="dontask">웨딩관련 업체 문의는 업체쪽으로 연락주시기 바랍니다.</span>
        </div>
        <table>
            <colgroup>
                <col style="width:100px">
                <col style="width:auto">
                <col style="width:150px">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">답변상태</th>
                </tr>
            </thead>
            <tbody>
                <tr class="">
                    <td>900</td>
                    <td class="ta_l">

                        <a href="javascript:FnBoardView('900');" class="brd_cont_text text_long" >8월 베스트 여행 후기 이벤트 당첨 발표</a>

                        <i class="ico_camera"></i>

                        
                    </td>
                    <td>2023.09.06</td>
                    <td>2023.09.06</td>
                    <td><button id="degi">답변대기</button></td>
                </tr>
                <tr class="">
                    <td>900</td>
                    <td class="ta_l">

                        <a href="javascript:FnBoardView('900');" class="brd_cont_text text_long" >8월 베스트 여행 후기 이벤트 당첨 발표</a>

                        <i class="ico_camera"></i>

                        
                    </td>
                    <td>2023.09.06</td>
                    <td>2023.09.06</td>
                    <td><button id="whan">답변완료</button></td>
                </tr>
            </tbody>
        </table>
        <div class="btn"  align="center">
            <button id="add">글작성</button>
        </div>
    </div>
</div>

<script>
    $("#add").click(()=>{
        location.href="qnaEnroll.bo";
    })
</script>
</body>
</html>
