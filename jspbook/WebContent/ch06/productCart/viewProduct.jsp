<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList list = (ArrayList)session.getAttribute("list");
		if(list== null){
			out.println("상품 없음");
		}
		else{
			for(Object item:list){
				out.println(item+"<br>");
			}
		}
	%>
	<a href=selProduct.jsp">selProduct.jsp</a>
</body>
</html>