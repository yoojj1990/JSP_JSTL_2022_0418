<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습</title>
</head>
<body>

	<c:set var="score" value="100" />
	점수 : <c:out value="${score }" />
	<br>
	삭제후 : <br>
	<c:remove var="score"/>
	점수 : <c:out value="${score }" />
	
	<hr>
	
	<c:catch var="error">
		<%= 10/0 %>
	</c:catch>
	<c:out value="${error }" />
	
	<hr>
	
	<c:if test="${10>3 }">
		true -> 안녕하세요
	</c:if>
	
	<hr>
	
	<c:forEach var="i" begin="0" end="10" step="2">
	<!--  for(int i=0;i=<10;i+2) -->
		${i }<br>
	</c:forEach>
	
</body>
</html>