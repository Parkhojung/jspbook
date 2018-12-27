<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>ch11 : remove</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:remove&gt;</h3>
<c:set value="dinfree" var="msg" />
msg : ${msg}  <BR>
member : ${member.name}(${member.email}) <BR>

<c:remove var="msg" />
after remove : ${msg}

<c:remove var="member"/>
after remove : ${member} <!-- 한번 remove하면 member변수 삭제됨, 껐다 키면 member변수 생성됨 -->
</body>
</html>