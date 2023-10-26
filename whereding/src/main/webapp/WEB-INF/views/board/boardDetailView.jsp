<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
     <!-- jQuery 라이브러리 -->
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

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
            float: right;
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
            height: 280px;
            margin-top: 30px;
        }
        #replyArea{
            margin-top: 40PX;
        }
        .form-control{
            border: 1px solid #a1a1a1;
            margin:  auto;
        }
        #replyArea th{
            border: 0;
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
                <li><a href="#">환불규정</a></li>
                <li><a href="#" >배송규정</a></li>
                <li><a href="#">기타사항</a></li>
            </ul>
        </div>
    </div>
    <div class="notice">
        <div class="title-wrap title-3 customer-center title-notice">
            <div class="title">${board}</div>
            <div class="body">


                <div class="body_title">
                    <div class="real_title">
                        <span>${n.noticeTitle}${q.qnaTitle}${cr.cpTitle}</span>
                    </div>
                    <div class="count">
                        <span id="user">${n.noticeWriter}${q.userId}${cr.userId}</span>
                        <span id="date">${n.noticeDate}${q.qnaDate}${cr.cpDate}</span>
                    </div>
                </div>
                <div class="userinfo">
                    
                </div>
                <div class="content">
                    <p>${n.noticeContent}${q.qnaContent}${cr.cpContent}</p>
                </div>
               <div class="btn" align="right">
                    <c:if test="${loginMember.userId eq 'admin' and board eq '공지사항'}">
                        <button id="edit">수정하기</button>
                        <button id="delete">삭제하기</button>
                    </c:if>
                    <!-- <c:if test="${not empty loginMember}"> -->
                        <c:if test="${loginMember.userId eq q.userId or loginMember.userId eq cr.userId }">
                            <button id="edit">수정하기</button>
                            <button id="delete" style="border-radius: 0px;">삭제하기</button>
                        </c:if>
                    <!-- </c:if> -->
                        <button id="list">목록으로</button>
                    
               </div>
            </div>
            <c:if test="${board eq 'QnA'}">
	            <div class="answer">
	                <table id="replyArea" class="table" align="center">
                        <!-- 답변이 있을 때 -->
                        <c:if test="${not empty q.qnaAnswer}">
                            <tr>
                                <th >
                                    <textarea class="form-control" cols="110" rows="10" style="resize:none; width:100%; background-color: white;" readonly>${q.qnaAnswer}</textarea>
                                </th>
                            </tr>
                            <!-- <c:if test="${loginMember.userId eq 'admin'}">
                                <tr>
                                    <th><button>수정하기</button></th>
                                </tr>
                            </c:if> -->
                        </c:if>
                        <!-- 답변이 없는데 관리자가 로그인멤버일 때 -->
                        <c:if test="${loginMember.userId eq 'admin' and empty q.qnaAnswer}">
                            <form action="insertAnswer.bo">
                                <input type="hidden" name="qnaNo" value="${q.qnaNo}">
                                <tr>
                                    <th colspan="2">
                                        <textarea class="form-control" name="qnaAnswer" cols="110" rows="5" style="resize:none; width:100%"  placeholder="답변 입력하싱옹"></textarea>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="vertical-align: middle"><button class="btn btn-secondary" type="submit">등록</button></th>
                                </tr>
                            </form>
                        </c:if>
	                       
	                    
	                </table>
	            </div>
            </c:if>
        </div>
            

    </div>
</div>
<br>
<jsp:include page="../common/footer.jsp"/>
<script>
    $("#list").click(()=>{
        if(${board eq "공지사항"}){
            location.href="notice.bo";
        }else if(${board eq "QnA"}){
            location.href="qna.bo";
        }else{
            location.href="collabo.bo";
        }
    })
</script>
<script>
     $("#edit").click(()=>{
        if(${board == "공지사항"}){
            location.href = "noticeEdit.bo?bno=${n.noticeNo}";
        }else if(${board eq "QnA"}){
            location.href = "qnaEdit.bo?bno=${q.qnaNo}";
        }else{
            location.href = "collaboEdit.bo?bno=${cr.cpNo}";
        }
    })
</script>
<script>
    $("#delete").click(()=>{
        if(${board == "공지사항"}){
            location.href = "noticeDelete.bo?bno=${n.noticeNo}";
        }else if(${board eq "QnA"}){
            location.href = "qnaDelete.bo?bno=${q.qnaNo}";
        }else{
            location.href = "collaboDelete.bo?bno=${cr.cpNo}";
        }
    })
</script>

</body>
</html>
