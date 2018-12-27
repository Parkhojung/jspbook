<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope= "application"/>
<%am.add(addr); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>등록 내용</h1>
	이름:${addr.username}<br>
	전화번호:${addr.tel}<br>
	이메일:${addr.email}<br>
	성별:${addr.sex}<br>
	<hr>
	<a href="addr_list.jsp">목록보기</a> 
</div>
</body>
</html>