<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : set</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:set&gt;</h3>
<c:set value="Hello World" var="msg"/>
msg : ${msg} <BR>
msg : <%= pageContext.getAttribute("msg")  %><BR> <!--  page의 내장객체 pageContext에 저장 -->

<c:out value="${member}">
	member없음
</c:out>
<br>

<c:set target="${member}" property="email" value="changed@test.net" />
<c:set target="${member}" property="name"  value="박호정"  />
Member name : ${member.name} <BR>
Member email : ${member.email}
</body>
</html>