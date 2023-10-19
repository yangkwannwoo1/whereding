<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>웨딩홀 신규등록 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>

<style>
.outer {
    width: 1200px;
    height: 750px;
    border: 3px solid orange;
    background-color: rgba(240, 240, 240, 0.589);
    margin: auto;
}

.enroll {
    width: 900px;
    height: 600px;
    background-color: white;
    border: 2px solid gray;
    margin: auto;
    margin-top: 50px;
    border-radius: 5px;
}
#enroll_cp{
    margin: auto;
    /* border: 1px solid red; */
    width: 650px;
    margin-top: 50px;
}
input{
    width: 99%;
    height: 100%;
    border: 0;
    font-size: 15px;
}
#NOTICE_CONTENT{
    resize: none;
    width: 98%;
    height: 98%;
    border: 0;
    margin-top: 5px;
    font-size: 15px;
}
#enroll_cp td{
    height: 40px;
}
#submit{
    background-color: rgba(0, 128, 0, 0.781);
    color: white;
    font-weight: 700;
    width: 80px;
    height: 30px;
    border: white;
    margin-left: 5px;
}
#reset{
    background-color:red;
    color: white;
    font-weight: 700;
    width: 80px;
    height: 30px;
    border: white;
    margin-right: 5px;
}
.btn_area button:hover{
    cursor: pointer;
    font-size: 20px;
}
</style>
</head>
<body>

    <div class="enroll">
        <form action="#" id="enroll_cp">
            <h1 align="center" style="margin-top: 50px;">공지사항 게시판 등록</h1>
            <br><br>
            <table border="1">
                <tr>
                    <th>제목</th>
                    <td><input type="text" name="NOTICE_TITLE" id="COUPON_VALUE" required placeholder="첫번쨰 공지사항 입니다."></td>
                </tr>
                <tr>
                    <th width="150px">내용</th>
                    <td width="500px"><textarea name="NOTICE_CONTENT" id="NOTICE_CONTENT" cols="30" rows="10" placeholder="웨어딩 오픈했다" required></textarea></td>
                </tr>
            </table>
            <br><br>
            <div class="btn_area" align="center">
                <button id="reset" type="reset">초기화</button>
                <button id="submit" type="submit">등록</button>
            </div>

        </form>

    </div>

</body>
</html>
