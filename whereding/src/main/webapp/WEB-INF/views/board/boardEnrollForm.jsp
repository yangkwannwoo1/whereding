<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 수정 및 등록</title>
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
        #QNA_TITLE{
            width: 100%;
            height: 30px;
            border: 0;
        }
        #QNA_CONTENT{
            border: 0;
            resize: none;
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
                <li><a href="#">환불규정</a></li>
                <li><a href="#" >배송규정</a></li>
            </ul>
        </div>
    </div>
    <div class="notice">
        <div class="title-wrap title-3 customer-center title-notice">
            <div class="title">${board}</div>
            <div class="body">
                <c:if test="${board eq '공지사항' }">
                    <form action="insertNotice.bo">
                </c:if>  
                <c:if test="${board eq 'QnA' }">
                    <form action="insertqna.bo">
                </c:if> 
                <c:if test="${board eq '협업업체_신청' }">
                    <form action="insertCollabo.bo">
                </c:if> 
                <c:if test="${board eq '공지사항_수정' }">
                    <form action="noticeUpdate.bo" method="post">
                </c:if>  
                <c:if test="${board eq 'QnA_수정' }">
                    <form action="qnaUpdate.bo" method="post">
                </c:if>    
                <c:if test="${board eq '협업업체_신청_수정' }">
                    <form action="collaboUpdate.bo" method="post">
                </c:if>             
                    <div class="body_title">
                        <div class="real_title">
                            <c:if test="${board eq '공지사항' }">
                             <input type="text" name="noticeTitle" id="QNA_TITLE" placeholder="제목을 입력해 주세요.">
                            </c:if>
                            <c:if test="${board eq 'QnA' }">
                                <input type="text" name="qnaTitle" id="QNA_TITLE" placeholder="제목을 입력해 주세요.">
                            </c:if>
                            <c:if test="${board eq '협업업체_신청' }">
                                <input type="text" name="cpTitle" id="QNA_TITLE" placeholder="제목을 입력해 주세요.">
                            </c:if>
                            <c:if test="${board eq 'QnA' }">
                                <input type="hidden" name="userNo" value="${loginMember.userNo}">
                            </c:if>
                            <c:if test="${board eq '협업업체_신청' }">
                                <input type="hidden" name="userNo" value="${loginMember.userNo}">
                            </c:if>
                            <c:if test="${board eq '공지사항_수정' }">
                                <input type="text" name="noticeTitle" id="QNA_TITLE" value="${n.noticeTitle}">
                            </c:if>
                            <c:if test="${board eq 'QnA_수정' }">
                                <input type="text" name="qnaTitle" id="QNA_TITLE" value="${q.qnaTitle}">
                            </c:if>
                            <c:if test="${board eq '협업업체_신청_수정' }">
                                <input type="text" name="cpTitle" id="QNA_TITLE" value="${cr.cpTitle}">
                            </c:if>
                        </div>
                        
                    </div>
                    <div class="userinfo">
                        
                    </div>
                    <div class="content">
                    	 <c:if test="${board eq '공지사항' }">
                            <textarea name="noticeContent" id="QNA_CONTENT" cols="110" rows="13" placeholder="Q&A 내용을 입력해주세요."></textarea>
                        </c:if>
                        <c:if test="${board eq 'QnA' }">
                            <textarea name="qnaContent" id="QNA_CONTENT" cols="110" rows="13" placeholder="Q&A 내용을 입력해주세요."></textarea>
                        </c:if>
                        <c:if test="${board eq '협업업체_신청' }">
                            <textarea name="cpContent" id="cpContent" cols="110" rows="13" placeholder="협업업체 신청 내용을 입력해주세요.[연락처 필수!]"></textarea>
                        </c:if>
                        <c:if test="${board eq '공지사항_수정' }">
                            <textarea name="noticeContent" id="QNA_CONTENT" cols="110" rows="13">${n.noticeContent}</textarea>
                            <input type="hidden" name="noticeNo" value="${n.noticeNo}" >
                        </c:if>
                        <c:if test="${board eq 'QnA_수정' }">
                            <textarea name="qnaContent" id="QNA_CONTENT" cols="110" rows="13">${q.qnaContent}</textarea>
                            <input type="hidden" name="qnaNo" value="${q.qnaNo}" >
                        </c:if>
                        <c:if test="${board eq '협업업체_신청_수정' }">
                            <textarea name="cpContent" id="QNA_CONTENT" cols="110" rows="13">${cr.cpContent}</textarea>
                            <input type="hidden" name="cpNo" value="${cr.cpNo}" >
                        </c:if>
                    </div>
                <c:if test="${board eq '공지사항_수정' }">
                </c:if> 
                <div class="btn" align="right">
                        <button type="reset" id="edit">초기화</button>
                        <button id="list">등록</button>
                </div>
                </form>
            </div>
           
            

    </div>
</div>


</body>
</html>
