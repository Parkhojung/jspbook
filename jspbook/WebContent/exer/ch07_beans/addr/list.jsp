<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.exer.ch07.*"
    import="java.util.*"%>

<jsp:useBean id="AM" class="jspbook.exer.ch07.AddrManager" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<div align="center">
	<h2>주소록</h2>
	<hr>
	<a href="form.html">주소추가</a>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
		<tr>
		
		<% List<AddrBean> list = (List)AM.getAM(); 
		for(AddrBean AB : list){%>
		<tr>
			<td><%=AB.getName() %></td>
			<td><%=AB.getTel() %></td>
			<td><%=AB.getEmail() %></td>
			<td><%=AB.getSex() %></td>
		<tr>
		<%} %>
	</table>
</div>
</body>
</html>