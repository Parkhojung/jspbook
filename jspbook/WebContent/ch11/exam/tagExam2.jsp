<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tagExam2.jsp</title>
</head>
<body>
	<c:set value="user1" var="msg"/>
	<c:if test="${msg == 'user1'}" var="result">
		${result}
	</c:if>
</body>
</html>