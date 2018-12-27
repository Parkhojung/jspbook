<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="color" %>
<%@ attribute name="border" %>

<jsp:doBody></jsp:doBody>

<jsp:useBean id="PD" class="jspbook.ch10.Product"/>
<table bgcolor="${color}" border="${border}">
<%
	for(String item: PD.getProductList()){
		out.println("<tr><td>"+item+"</td></tr>");
	}

%>
</table>