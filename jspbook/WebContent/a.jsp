<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="jspbook.ch07.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int a = 3; %>
<c:out value="a" />	
<c:set value="helloworld" var="msg"/>
<c:set value="1" var="b"/>
<jsp:useBean id="mb" class="jspbook.ch07.myBean"/>
<c:set target="${mb}" property="id" value="1234"/>
${msg}
${b}
${mb.id}
<c:remove var="mb"/>

<c:set var="msg2" value="hi"/>
<c:out value="${msg2}" default="value 없음"/>
<c:remove var="msg2"/>
<c:out value="${msg2}" default="value 없음"/>
<c:catch var="errMsg">
	<%= 9/0 %>
</c:catch>

${errMsg}

<c:if test="${'1'=='1' }">
	<br>1
</c:if>
<c:set var="con" value="1"/>
<c:choose>
	<c:when test="${con ==2}">
		con ==1 (1)
	</c:when>
	<c:when test="${con ==1 }">
		con == 1 (2)
	</c:when>
	<c:otherwise>
		!(con ==1 || con==2)
	</c:otherwise>
	
</c:choose>

<br>
<c:forEach var="i" begin="1" end="5">
	${i}
</c:forEach>

<%String s = "a"; %>
<c:set var="s" value="a"/>
${d[0]}
${s}
<br>
<% String []d = {"1","2","3"}; 
	request.setAttribute("p1", d);
%>
<c:forEach var="i" items="${p1}" varStatus="status" begin="0" end="10">
	${p1[i]} 
</c:forEach>
<br>

<c:forTokens var="i" items="홍길동,1111,서울" delims=",">
	${i}
</c:forTokens>
</body>
</html>