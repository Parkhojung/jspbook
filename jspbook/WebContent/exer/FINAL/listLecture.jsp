<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.finalexam.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listLecture.jsp</title>
</head>
<body>
<jsp:useBean id="subjectDao" class="jspbook.finalexam.SubjectDAO" scope="application"/>

	<table border="1">
		<tr>
			<td>day</td>
			<td>time</td>
			<td>title</td>
		</tr>
	<%
		ResultSet rs =subjectDao.getRs();
		while(rs.next()){
			out.print("<tr>");
			out.println("<td>"+rs.getString(1)+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.print("<tr>");	
		}
		
	%>
	</table>
<a href="selectLecture.jsp">돌아가기</a>
</body>
</html>