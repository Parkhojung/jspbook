<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<div align="center">
	<%
		String name = request.getParameter("name");
		if(name !=null){
			session.setAttribute("name", request.getParameter("name"));
		}	
	%>

	<h2>twitter</h2>
	<hr>
	<form action="tweet.jsp" method="post">
		@<%=session.getAttribute("namex`") %><input type="text" name="text"/>
		<input type="submit" value="Tweet"/>
	</form>
</div>

	<%
	
		
	ArrayList list=	(ArrayList)application.getAttribute("list");
		if(list==null){
			out.print("");
		}else{
			for(Object item : list){
				out.println(item+"<br>");
			}
		}	
	%>
	


</body>
</html>