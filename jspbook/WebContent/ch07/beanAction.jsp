<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mb" class="jspbook.ch07.myBean" />
<jsp:setProperty name="mb" property="*"/>
id = ${mb.id} <br>
pwd = ${mb.pwd}
</body>
</html>