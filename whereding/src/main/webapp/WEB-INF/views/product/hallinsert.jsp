<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>웨딩홀 신규등록 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

/* 해시태그 관련 */
span {
    box-sizing: border-box;
    /*border: 1px solid black;*/
    float: left;
}

#input-tag {
    height: auto;
    overflow: auto;
}

#input-tag>span {
    height: 100%;
    width: auto;
}

#input-tag>span>* {
    float: left;
    line-height: 22px;
}

#input-tag>span>span {
    font-size: 14px;
    height: 100%;
    margin-left: 5px;
}

#input-tag>span>div input {
    height: 20px;
    border: 0px;
    width: 70px;

}

#input-tag>span>div input:focus {
    outline: none;
}

.tag-input-area button {
    background-color: white;
    border: 0px;

}
.parent-span{
    padding-right: 10px;
    border: 0px;

}

/* 해시태그 관련 끝 */
</style>
</head>
<body>

    <div class="outer">
        <h1 align="center" style="margin-top: 50px;">웨딩홀 신규등록</h1>
        <div class="enroll">
            <form action="insert.pr" id="aaa">
                <table class="enrollForm" border="2px">
                    <tr>
                        <th>업체명</th>
                        <td><input type="text" class="inp1" name="enterprise" id="H_ENTERPRISE" placeholder="웨어딩" required></td>
                    </tr>
                    <tr>
                        <th>웨딩홀 명</th>
                        <td width="500px"><input type="text" class="inp1" name="name" id="H_NAME" placeholder="아이리스홀"></td>
                    </tr>
                    <tr>
                        <th>상세내용</th>
                        <td><TExtarea name="detail" id="H_DETAIL" placeholder="아이리스홀은 교회구조의 웨딩홀로 높은 층고와 고급스러운 나무재질 인테리어로 우아하고 아름다운 웨딩을 치를 수 있는 고품격 웨딩홀 입니다"></TExtarea></td>
                    </tr>
                </table>
                <table class="enrollForm2" border="1px" >
                    <tr>
                        <th width="170px">홀 좌석수</th>
                        <td width="200px"><input type="number" class="inp1" name="seat" id="H_SEAT" placeholder="200석"></td>
                        <th>홀 대관비</th>
                        <td><input type="number" class="inp1" name="rental" id="rental1" placeholder="200만~"></td>
                    </tr>
                    <tr>
                        <th>식당 좌석수</th>
                        <td><input type="number" class="inp1" name="hallSeat" id="H_RESTAURANT_SEAT" placeholder="400석"></td>
                        <th>식대 (1인)</th>
                        <td><input type="number" class="inp1" name="meal" id="H_MEAL" placeholder="3.5만~"></td>
                    </tr>
                    <tr>
                        <th>영업 시작 시간</th>
                        <td><input type="time" class="inp1" name="startTime" id="H_START_TIME"></td>
                        <th>영업 종료 시간</th>
                        <td><input type="time" class="inp1" name="endTime" id="H_END_TIME"></td>
                    </tr>
                    <tr>
                        <th>전화번호 (-포함)</th>
                        <td><input type="text" class="inp1" name="phone" id="H_PHONE" placeholder="032-456-7891"></td>
                        <th>주소</th>
                        <td><input type="text" class="inp1" name="address" id="H_ADDRESS" placeholder="경기도 성남시 머시동 머시깽이구 123-2 2층"></td>
                    </tr>
                    <tr>
                        <th>예약시간 구분</th>
                        <td>
                            <input id="H_UNIT_TIME_1" name="unitTime" type="radio" value="1">
                            <label for="H_UNIT_TIME_1">1시간</label>
                            <input id="H_UNIT_TIME_2" name="unitTime" type="radio" value="0.3">
                            <label for="H_UNIT_TIME_2">30분</label>
                        </td>
                        <th>주말/공휴일 영업</th>
                        <td>
                            <input id="H_WEEK_OPEN_1" name="weekOpen" type="radio" value="Y">
                            <label for="H_WEEK_OPEN_1">Y</label>
                            <input id="H_WEEK_OPEN_2" name="weekOpen" type="radio" value="N">
                            <label for="H_WEEK_OPEN_2">N</label>
                        </td>
                    </tr>
                </table>
                <table id="enrollForm2" border="1">
                    <tr>
                        <th width="20x">이미지1</th>
                        <td><input type="file" name="img1" ></td>
                        <th width="20px">이미지2</th>
                        <td><input type="file" name="img2" ></td>
                        <th width="20px">이미지3</th>
                        <td><input type="file" name="img3" ></td>
                    </tr>
                </table>
               

                <div id="input-tag" style="margin-top: 10px;">
                    <span class="parent-span">
                        <span>#</span>
                        <div class="tag-input-area">
                            <input class="tag-input" type="text" maxlength="50" placeholder="태그입력">
                            <button type="button" class='delete-tag'>x</button>
                        </div>
                    </span>
                </div>
                <div class="sub" align="center"> 
                    <button type="reset" id="reset">초기화</button> 
                    <input type="button" value="등록" id="postSubmit">
                </div>
                <input type="hidden" id="hiddenTag" name="tag">
            </form>
        </div>
    </div>
    <script>
        /* 해시태그 스크립트 */
        $(function () { 

        $(document).on('keydown', '.tag-input', function () {
        $(this).css('width', 20);
        let value = $(this).val();
        $('.tag-input-area').append('<div class="virtual">' + value + '</div>')

        let inputWidth = $(this).siblings('.virtual').width()
        $(this).css('width', inputWidth + 20);
        $('.virtual').remove();

        })
        $(document).on('click', '.delete-tag', function () {
        let tagLength = $('.tag-input').length;
        let ti = $('.tag-input').get()  
        if(($(".delete-tag").index(this)==tagLength-1) && (ti[tagLength-1]).value==''){    // 지금누른 버튼이 마지막 인덱스의 버튼일떄
        $(this).prev().val('');
        }else{
        $(this).parent().parent().remove();
        }
        })      
        $(document).on('change', '.tag-input', function () {

        let tagLength = $('.tag-input').length;
        let ti = $('.tag-input').get()  
        if(ti[tagLength-1].value != ''){
            $(document).on('click', '.delete-tag', function () {
                return;
            })

            $('#input-tag').append("<span class='parent-span'><span>#</span><div class='tag-input-area'><input class='tag-input' type='text' maxlength='50' placeholder='태그입력'><button type='button' class='delete-tag'>x</button></div></span>");
            $('.tag-input')[tagLength].focus();
        }
        })


        })
        	
            // 등록하기 버튼 클릭시 폼 전송하는 함수
            $(document).on("click","#postSubmit",function(){
		        	let hashtag = $("#input-tag .parent-span .tag-input");
		        	let hashlist = [];
		        	for(i = 0 ; i < hashtag.length-1; i++){
						hashlist.push(hashtag[i].value)
		        	}
		            $("#hiddenTag").val(hashlist)
		            $("#aaa").submit();            	
            })
            function postSubmit(){
            }

</script>




</body>
</html>