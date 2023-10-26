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
    <title>협업업체 신청</title>
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
            background: url(https://www.verygoodtour.com/Images/2013/Bg/notice_bg.png) no-repeat left top;
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
            text-align: center;
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
        .btn button:hover{
            cursor: pointer;
        }
        #pagingArea{
            margin-left: 400px;
            margin-top: 20px;
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
            <div class="title">협업업체 신청</div>
            <div class="title-desc">
                 웨어딩은 함께 성장하실 업체를 환영합니다. <br>
                 귀사의 발전을 위한 파트너가 되겠습니다.
            </div>
        </div>
        <table>
            <colgroup>
                <col style="width:150px">
                <col style="width:auto">
                <col style="width:100px">
                <col style="width:200px">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">아이디</th>
                    <th scope="col">작성일</th>
                </tr>
            </thead>
            <tbody>

                
                <c:forEach var="n" items="${list }">
	                <tr class="">
	                    <td class="nNo">${n.cpNo }</td>
	                    <td class="ta_l">
	
	                        <a href="javascript:FnBoardView('900');" class="brd_cont_text text_long" style="color: black;" >${n.cpTitle }</a>
	
	                        <i class="ico_camera"></i>
	                    </td>
	                    <td>${n.userId}</td>
                        <td>${n.cpDate}</td>
	                </tr>
               </c:forEach>
               
               
            </tbody>
           
        </table>
        <script>
            $(function(){
                $(".notice>table>tbody>tr").click(function(){
                    location.href = 'collaboDetail.bo?board=협업업체_신청&bno=' + $(this).children(".nNo").text();
                })
            })
        </script>
        <div id="pagingArea" align="center">
                <ul class="pagination">
                		<c:choose>
                			<c:when test="${pi.currentPage eq 1 }">
	                    		<li class="page-item disabled"><a class="page-link" href="" ><</a></li>
                			</c:when>
                			<c:otherwise>
	                    		<li class="page-item"><a class="page-link" href="list.bo?cpage=${pi.currentPage - 1 }"><Previous></a></li>
                			</c:otherwise>
	                    </c:choose>
	                    
	                    	<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                    			<li class="page-item"><a class="page-link" href="list.bo?cpage=${p }">${p }</a></li>
	                    	</c:forEach>
	                    	
	                    	<c:choose>
	                    		<c:when test="${pi.currentPage eq pi.maxPage }">
			                    	<li class="page-item disabled"><a class="page-link" href="">></a></li>
	                    		</c:when>
	                    		<c:otherwise>
			                    	<li class="page-item"><a class="page-link" href="list.bo?cpage=${pi.currentPage + 1 }">></a></li>
	                    		</c:otherwise>
	                    	</c:choose>
                </ul>
            </div>
        <div class="btn"  align="center">
            <c:if test="${loginMember.userId eq 'admin' }">
            <button id="add">글작성</button>
            </c:if>
        </div>
    </div>
</div>
<jsp:include page="../common/footer.jsp"/>
<script>
    $("#add").click(()=>{
        location.href="collaboEnroll.bo?board=협업업체_신청";
    })
</script>
</body>
</html>
