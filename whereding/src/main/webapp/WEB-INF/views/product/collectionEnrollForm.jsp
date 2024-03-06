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
    background-color: white !important;
    border: 0px;

}
.parent-span{
    padding-right: 10px;
    border: 0px;
}

.enroll form .enrollForm{
	font-size: 22px;
	font-weight: 600;
}

.img_area img{
    margin: 0px 20px;
}

.img_area td span{
    font-size: 18px;
    font-weight: 600;
    margin: 0px 64px;
}
/* 해시태그 관련 끝 */
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div class="outer">
        <h2 align="center" style="margin-top: 50px;">업체 신규등록</h2>
        <div class="enroll">
            <form action="cInsert.bo" id="insertForm" enctype="multipart/form-data" method="post">
                <table class="enrollForm" border="2px" style="margin: auto; width: 1000px; text-align: center;">
                    <tbody>
                        <tr style="height: 40px">
                            <th>매장명</th>
                            <td colspan="5">
	                            <select id="category" name="category" style="width:14%; margin: 0; height: 40px; text-align: center; font-size: 20px">
	                            	<option>Studio</option>
	                            	<option>Dress</option>
	                            	<option>MakeUp</option>
	                            </select>
                            	<input type="text" class="inp1" name="enterprise" id="enterprise" placeholder="웨어딩" required style="width:85%; height: 40px;font-size: 20px">
                            </td>
                        </tr>
                        <script>
                        	$(function(){
                        		console.log('${ category }')
                        		let $opt = $("#category option");
                        		for(let i = 0; i < $($opt).length; i++){
                        				console.log($($opt[i]).val())
                        			if($($opt[i]).val() == '${ category }'){
										$($opt[i]).prop("selected",true);
                        			}
                        			
                        		}
                        	})
                        </script>
                        <tr>
                            <th>상세내용</th>
                            <td colspan="5"><textarea name="detail" rows="20" id="detail" placeholder="아이리스홀은 교회구조의 웨딩홀로 높은 층고와 고급스러운 나무재질 인테리어로 우아하고 아름다운 웨딩을 치를 수 있는 고품격 웨딩홀 입니다" style="width:100%; resize: none; margin: 0;"></textarea></td>
                        </tr>

                        <tr>
                            <th>가격</th>
                            <td colspan="5"><input type="number" class="inp1" name="price" id="price" placeholder="200만~" style="width:100%; margin: 0; "></td>
                        </tr>
                        <tr>
                            <th>영업 시작 시간</th>
                            <td colspan="2"><input type="time" class="inp1" name="startDate" id="start_time" style="width:100%"></td>
                            <th>영업 종료 시간</th>
                            <td colspan="2"><input type="time" class="inp1" name="endDate" id="end_time" style="width:100%"></td>
                        </tr>
                        <tr>
                            <th>전화번호 (-포함)</th>
                            <td colspan="2"><input type="text" class="inp1" name="phone" id="phone" placeholder="032-456-7891" style="width:100%"></td>
                            <th>주소</th>
                            <td colspan="2"><input type="text" class="inp1" name="address" id="address" placeholder="경기도 성남시 디지털로22 2층" style="width:100%"></td>
                        </tr>
                        <tr>
                            <th>예약시간 구분</th>
                            <td colspan="2">
                                <input id="unit_time_1" name="unitTime" type="radio" value="60">
                                <label for="unit_time_1">1시간</label>
                                <input id="unit_time_2" name="unitTime" type="radio" value="30">
                                <label for="unit_time_2">30분</label>
                            </td>
                            <th>주말/공휴일 영업</th>
                            <td colspan="2">
                                <input id="week_open_1" name="weekOpen" type="radio" value="Y">
                                <label for="week_open_1">Y</label>
                                <input id="week_open_2" name="weekOpen" type="radio" value="N">
                                <label for="week_open_2">N</label>
                            </td>
                        </tr>
    
                    </tbody>
                </table>
                <div style="text-align: center; border: 2px solid black; width: 1000px; margin: 20px auto; padding: 20px;">
                    <div class="img_area">
                        <table style="margin: auto;">
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="" id="contentImg1" width="150px" height="100px" onclick="chooseFile(1)">
                                    </td>
                                    <td>
                                        <img src="" id="contentImg2" width="150px" height="100px" onclick="chooseFile(2)">
                                    </td>
                                    <td>
                                        <img src="" id="contentImg3" width="150px" height="100px" onclick="chooseFile(3)">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span>
                                            대표사진
                                        </span>
                                    </td>                                    
                                    <td>
                                        <span>
                                            사진1
                                        </span>
                                    </td>                                    
                                    <td>
                                        <span>
                                            사진2
                                        </span>
                                    </td>                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- <td><input type="file" name="img3" ></td> -->
                    <div id="file-area" style="display:none;">
                        <input type="file" name="upfile" id="file1" onchange="loadImg(this, 1);">
                        <input type="file" name="upfile" id="file2" onchange="loadImg(this, 2);">
                        <input type="file" name="upfile" id="file3" onchange="loadImg(this, 3);">
                    </div>
                    
                    <div id="input-tag" style="margin-top: 10px; overflow-x: hidden;">
                        <span class="parent-span">
                            <span>#</span>
                            <div class="tag-input-area">
                                <input class="tag-input" type="text" maxlength="50" placeholder="태그입력">
                                <button type="button" class='delete-tag'>x</button>
                            </div>
                        </span>
                    </div>
                </div>
                <div class="sub" align="center"> 
                    <button type="reset" class="btn btn-danger" id="reset">초기화</button> 
                    <input type="button" class="btn btn-success" value="등록" id="postSubmit">
                </div>
                <input type="hidden" id="hiddenTag" name="tag">
                <br>
            </form>
        </div>
    </div>
    <script>
         function chooseFile(i){
             $("#file" + i).click(); 
         }
         function loadImg(inputFile,i){
             if(inputFile.files.length == 1){
                 const reader = new FileReader();

                 reader.readAsDataURL(inputFile.files[0]);

                 reader.onload = function(e){
                     switch(i){
                         case 1: $("#contentImg1").attr("src", e.target.result); break;
                         case 2: $("#contentImg2").attr("src", e.target.result); break;
                         case 3: $("#contentImg3").attr("src", e.target.result); break;
                     }
                 }
             }else{	
                 switch(i){
                 case 1: $("#contentImg1").attr("src", null); break;
                 case 2: $("#contentImg2").attr("src", null); break;
                 case 3: $("#contentImg3").attr("src", null); break;
                 }
             }
         }    
    </script>
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
		            $("#insertForm").submit();            	
            })

</script>

	<jsp:include page="../common/footer.jsp"/>



</body>
</html>