<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.exer.ch07.*"%>
    
<jsp:useBean id ="MB" class="jspbook.exer.ch07.LoginManageBean" scope="application"/>
<jsp:useBean id ="B" class="jspbook.exer.ch07.LoginBean"/>
<jsp:setProperty name="B" property="*"/>
<%	
	if(MB!= null)
		MB.addLoginBean(B);

%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
<%
	String resString = B.checkUser();
	out.println(resString);
	
%>
	${b.id}
	${b.password}
	<br>
	
<table border="1">
<%
List<LoginBean> list = (List)MB.getList();
for(LoginBean item: list){
%>

	<tr>
		<td><%=item.getId() %></td>
		<td><%=item.getPassword() %></td>
	</tr>

<%
}
%>
</table>
</body>
</html>