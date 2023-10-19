<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
            width: 880px; /* 배경 이미지의 너비를 설정해주세요 */
            height: 50px; /* 배경 이미지의 높이를 설정해주세요 */
            margin-top: 30px;
            border-bottom: 2px solid #f28123;
        }

        .title-3 .title {
            font-size: 28px;
            color: #222842;
            font-weight: bold;
            line-height: 1.2;
        }
        .body{
            border: 1px solid #f0f0f0;
            width: 880px;
            height: 600px;
            margin-top: 50px;
        }
        .body_title{
            width: 800px;
            height: 50px;
            /* border: 1px solid red; */
            border-bottom: 1px solid  gray;
            margin: auto;
            margin-top: 20px;
            
        }
        .real_title{
            /* border: 1px solid red; */
            width: 565px;
            float: left;
            margin-top: 15px;
        } 
       .real_title>span{
        font-weight: 800;
        padding-left: 30px;
        font-size: 20px;
       }
       .count{
        float: left;
        /* border: 1px solid black; */
        margin-top: 25px;
       }
       
       #date{
        margin-left: 20px;
       }
       .content {
            width: 800px;
            height: 350px;
            border: 1px solid #f0f0f0;
            margin: auto;
            margin-top: 30px;
            padding: 20px;
            word-wrap: break-word; /* 단어가 content 요소의 너비를 벗어날 때 줄바꿈되도록 설정 */
        }
        .content>p{
            font-size: 15px;
        }
        .btn{
            margin-top: 30px;
            margin-right: 20px;
        }
        #user{
            margin-right: 20px;
        }
        #edit{
            width: 80px;
            height: 30px;
            color: white;
            background-color: gold;
            border: 1px solid rgb(219, 187, 4);
            font-weight: 900;
            font-size: 14px;
            
        }
        #delete{
            width: 80px;
            height: 30px;
            color: white;
            background-color: red;
            border: 1px solid rgb(153, 3, 3);
            font-weight: 900;
            font-size: 14px;
            
        }
        #answer{
            width: 80px;
            height: 30px;
            color: white;
            background-color: black;
            font-weight: 900;
            font-size: 14px;
            
        }
        #list{
            width: 80px;
            height: 30px;
            color: white;
            background-color: green;
            border: 1px solid rgb(1, 66, 1);
            font-weight: 900;
            font-size: 14px;
            
        }
        .answer{
            border: 1px solid #f0f0f0;
            width: 880px;
            height: 500px;
            margin-top: 30px;
        }
        #replyArea{
            margin-top: 40PX;
        }
        .form-control{
            border: 1px solid #a1a1a1;
        }
       
    </style>
</head>
<body>
<div class="outer">
    <div class="navi">
        <h3 id="navi_title">고객센터</h3>
        <div class="navi_tab">
            <ul id="navi_top">
                <li><a href="#" >고객센터 홈</a></li>
                <li><a href="#" >공지사항</a></li>
                <li><a href="#">Q&A</a></li>
                <li><a href="#">환불규정</a></li>
                <li><a href="#" >배송규정</a></li>
                <li><a href="#">기타사항</a></li>
            </ul>
        </div>
    </div>
    <div class="notice">
        <div class="title-wrap title-3 customer-center title-notice">
            <div class="title">Q&A</div>
            <div class="body">


                <div class="body_title">
                    <div class="real_title">
                        <span>웨어딩 런칭관련 소식입니다.</span>
                    </div>
                    <div class="count">
                        <span id="user">아이유</span>
                        <span id="date">2023-10-17</span>
                    </div>
                </div>
                <div class="userinfo">
                    
                </div>
                <div class="content">
                    <p> 여러분들의 성원에 힘입어 웨어딩이 런칭하게 되었습니다. 앞으로도 많은 관심 부탁드립니다.</p>
                </div>
               <div class="btn" align="right">
                    <button id="edit">수정하기</button>
                    <button id="delete">삭제하기</button>
                    <button id="list">목록으로</button>
                    <button id="answer">답변하기</button>
               </div>
            </div>
            <div class="answer">
                <table id="replyArea" class="table" align="center">
                    <thead>
                        
                            <!-- <c:choose>
                                <tr>
                                    <c:when test="${empty loginMember }">
                                        <th colspan="2">
                                            <textarea class="form-control" cols="110" rows="20" style="resize:none; width:100%" readonly>알아서 하세요</textarea>
                                        </th>
                                        <th style="vertical-align: middle"></th>
                                    </c:when>
                                </tr>
                                <tr>
                                    <th><button>수정하기</button></th>
                                </tr>
                            </c:choose> -->
                            <!-- <c:otherwise>
                                    <tr>
                                    <th colspan="2">
                                        <textarea class="form-control" cols="110" rows="20" style="resize:none; width:100%" >답변내용 입력하시오</textarea>
                                    </th>
                                    <th style="vertical-align: middle"><button class="btn btn-secondary" onclick="addReply();">등록하기</button></th>
                                </tr>
                               </c:otherwise> -->
                       
                    </thead>
                    <tbody>
                       
                    </tbody>
                </table>
            </div>
        </div>
            

    </div>
</div>
</body>
</html>
