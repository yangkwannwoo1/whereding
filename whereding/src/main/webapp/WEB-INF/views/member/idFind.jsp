<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#idFindForm{
		
		
	}
	#idFindWrap{
		text-align: center;
		margin-top: 20px;
		width: 100%;
		height: 300px;
	}
</style>
<!-- jQuery 라이브러리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<jsp:include page="../common/header.jsp"/>
		
		
			<div id="idFindWrap">
				<h2>아이디 찾기</h2>
				<p>가입한 이메일을 입력해주세요 </p>
				<input type="text" name="email" id="email"/>
				<button type="submit" id = "emailFind">가입된 이메일 검사</button>
				<p id="result"></p>
				<button id="pwdFind" disabled>비밀번호 찾기</button>
			</div>
		
		
		<script>
			$("#emailFind").click(function(){
				event.preventDefault();
				$.ajax({
					url:"emailCheck.me",
					data:{
						email:$("#email").val()
					},
					success:function(result){
						$("#result").text(result);
						if(result.length>14){
							$("#pwdFind").attr("disabled", false).css("display", "inline");
						}else{
							$("#pwdFind").attr("disabled", true).css("display", "none");
						}
						
					},error:function(){
						console.log("ajax email찾기 실패");
					}
				})
			})
			
			$("#pwdFind").click(function(){
				location.href="pwdFind";
			})
		</script>
		
<jsp:include page="../common/footer.jsp"/>		
</body>
</html>





