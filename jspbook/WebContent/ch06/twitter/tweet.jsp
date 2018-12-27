<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tweet.jsp</title>
</head>
<body>
	
	<%
		String name = (String)session.getAttribute("name");
		String text = request.getParameter("text");
		Date time = new java.util.Date();
		
		ArrayList<String> list = (ArrayList)application.getAttribute("list");
		if(list== null){
			list = new ArrayList<String>();
			application.setAttribute("list",list);
		}
		list.add(name+text+time);
		
		response.sendRedirect("list.jsp");
	%>
<!--  <script>
		alert("tweet완료");
		history.go(-1);
	</script>
-->	
	</body>
</html>