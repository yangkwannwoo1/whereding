<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        .header{
            width: 800px;
            margin: auto;
            padding-top: 50px;
        }
        .content{
            border: 1px solid black;
            margin: auto;
            height: 800px;
            width: 800px;
            border-radius: 50px;
        }
        #files1{
            border: 1px solid black; 
            width: 300px;
            height: 150px;
            text-align: center;
            border-radius: 80px;
            margin:50px;
            float: left;
        }
        #files2{
            border: 1px solid black; 
            width: 300px;
            height: 150px;
            border-radius: 80px;
            margin: 50px;
            text-align: center;
            float: left;
        }
        #files3{
            border: 1px solid black; 
            width: 300px;
            height: 150px;
            text-align: center;
            border-radius: 80px;
            float: left;
            margin: 50px;
        }

        #studio{
            border: 1px solid black;
            height: 680px;
            width: 350px;
            margin-left: 400px;
            margin-top: 50px;
            border-radius: 30px;
        }

    </style>
</head>
<body>
    <thead>
        <div class="header">
            <fieldset style=" border-radius: 50px;">
                <p align="center">답례품 상품 등록</p>
            </fieldset>
        </div>
    </thead>
    <br><br>
    <tbody>
        <div class="content">
        
        <form id="giftForm" method="post" action="giftEnroll.bo" enctype="multipart/form-data">
        
            <div id="files1">
                <input type="file" style="margin-top: 60px;" name="upfile"/>
                <p>대표사진 선택</p>
            </div>
            <div id="files2">
                <input type="file" style="margin-top: 60px;" name="upfile"/>
                <p>두번째 사진 선택</p>
            </div>
            <div id="files3">
                <input type="file" style="margin-top: 60px;" name="upfile"/>
				<p>세번째 사진 선택</p>                
            </div>
            <div id="studio">
                <div align="center">
                    <table style="margin-top: 30px;">
                        <tr>
                            <td>
                           
                                <p>상품이름 : <input type="text" name="giftName"></p><br>
                                <p>상품 카테고리 : <select name="categoryNo" id="categoryNo">
                                					<c:forEach var="c" items="${categoryList}">
                                						<option value="${c.categoryNo}" >${c.categoryItem}</option>
                                					</c:forEach>
                                					
                                			   </select>
                                <p>상품내용 : <textarea style="resize:none;" rows="5" cols="20" name="giftContent"></textarea></p>
                            </td>
                        </tr>
                   
                        <tr>
                            <td>
                               <p> 상품가격: <input type="text" name="giftPrice"></p>
                               <p> 수량: <input type="text" name="count" style="width:50px;"></p>
                               <img src="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.flaticon.com%2Ficons%2Fpng%2F512%2F3918%2F3918243.png&type=sc960_832" width="300" height="300"/>
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <br>
        </div>
        
        <br>
        <div id="button">
                <div style="float: left; margin-left: 40%;">
                	<button type="button" class="btn btn-primary" onclick="back();">뒤로가기</button>
                </div> 
                
                <div style="margin-left:50%;">
                	<button type="submit" class="btn btn-danger" onclick="enroll();">등록하기</button>
                </div>
                </form>
                <script>
                	function back(){
                		history.back();
                	}
                	function enroll(){
                		$("#giftForm").submit();
                	}
                </script>
        </div>
        
    </tbody>
    <br><br><br>
</body>
</html>