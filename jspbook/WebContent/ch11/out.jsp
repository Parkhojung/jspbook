<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : out</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:out&gt;</h3>

<table border="1" cellpadding=5 cellspacing=0>
  <c:forEach var="member" items="${members}">
    <tr>
	  <td>${member.name}</td>
	  <td><c:out value="${member.email}" escapeXml="false"> <!-- false이므로 escape 생략 -->
			<font color=red>email 없음</font> <!-- email이 null일떄 출력 -->
			</c:out>
	  </td>
	</tr>
  </c:forEach>
</table>
</body>
</html>
