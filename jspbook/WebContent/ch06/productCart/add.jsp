<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>
	<%
		String product = request.getParameter("product");
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> list = (ArrayList)session.getAttribute("list");
		if(list == null){
			list = new ArrayList<String>();
			session.setAttribute("list",list);
		}
		
		
		list.add(product);
	%>
	<script>
		alert("${param.product} 추가 완료");
		history.go(-1);
	</script>
</body>
</html>