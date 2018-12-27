<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="hello world"/>
<br>

<c:forEach var="v" begin="0" end="4" step="1">
	<c:forEach begin="0" end="${v}" step="1">*</c:forEach><BR>
</c:forEach>

<c:set var="a" value="1"/>
<c:out value="${a }"/>
</body>
</html>