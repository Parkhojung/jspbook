<%@page import="jspbook.ch07.MessageBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="mb" class="jspbook.ch07.MessageBean"/>
<jsp:setProperty name="mb" property="*"/>
<jsp:useBean id="mm" class="jspbook.ch07.MessageManager" scope="application"/>
<%
	mm.add(mb);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process.jsp</title>
</head>
<body>
<div align="left">
	<%
		ArrayList<MessageBean> list = (ArrayList<MessageBean>)mm.getList();
		
		if(list !=null){
			for(MessageBean item : list ){
				for(int i = 0 ; i < Integer.parseInt(item.getCnt()) ;i++){
					out.print(item.getStr());
				}
				out.print("<br>");;;
			}
		}
	%>
	<a href="form.html">입력 페이지로 가기</a>
</div>
</body>
</html>