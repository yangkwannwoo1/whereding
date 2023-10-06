<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.me">
		<input type="text" name="userId">
		<input type="text" name="userPwd">
			
		<button>보내</button>
	</form>
	
	<c:if test="${not empty alertMsg}">
	
	<script>
		alert("${alertMsg}");
	</script>
	
	</c:if>
	
</body>
</html>