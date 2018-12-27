<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.exer.ch07.*"%>
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="AM" class="jspbook.exer.ch07.AddrManager" scope="application"/>
<jsp:useBean id="AB" class="jspbook.exer.ch07.AddrBean"/>
<jsp:setProperty name="AB" property="*"/>
<% AM.add(AB); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>
<div align="center">
	<h2>등록내용</h2>
	이름:${param.name}<br>
	전화번호:${param.tel}<br>
	이메일:${param.email}<br>
	성별:${param.sex}<br>
	<hr>
	<a href="list.jsp">목록 보기</a>
</div>
</body>
</html>