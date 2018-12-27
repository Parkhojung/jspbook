<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selProduct.jsp</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("userid",request.getParameter("userid")); %>
	${userid}님 환영합니다.

	<form action="add.jsp" method="post">
		<select name="product">
			<option>a </option>
			<option>b </option>
		 	<option>c</option>
		</select>
		<input type="submit" value="submit"/>
	</form>	
	
	<a href="viewProduct.jsp">viewProduct</a>

</body>
</html>