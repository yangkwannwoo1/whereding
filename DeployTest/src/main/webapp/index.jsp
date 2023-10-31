<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <button id="btn" onclick="test();">졸려용</button>
  
  <script>
  	function test() {
    
		let value = document.getElementById("btn").innerText;
		alert(value);
	}
  </script>
  
  
</body>
</html>