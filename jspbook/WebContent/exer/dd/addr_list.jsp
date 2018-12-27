<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>주소록</h1><br>
<hr>
<a href="addr_form.jsp">주소 추가</a>
<table border=1>
	<tr><td>이름</td> <td>전화번호</td> <td>이메일</td> <td>성별</td></tr>
	
	<c:forEach var="item" items="${am.addrlist}">
	<tr>
		<td>${item.username}</td>
		<td>${item.tel}</td>
		<td>${item.email}</td>
		<td>${item.sex}</td>
	</tr>
	</c:forEach>

</table>
</div>
</body>
</html>