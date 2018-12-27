<%@ tag language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
	<title>tempPring.tag</title>
</head>

<%@ attribute name="border" %>
<c:set value="3" var="t2"/>
<%int tt = 3; %>
<c:out value="${tt}" >
	tt없음
</c:out>
<br>

<c:out value="${border}" >
	border 없음
</c:out>
<br>

${border}

<c:catch var="err">
	<%= 9/0 %>
</c:catch>
<br>