<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.finalexam.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addLecture.jsp</title>
</head>
<body>
<jsp:useBean id="SB" class="jspbook.finalexam.SubjectBean" scope="page"></jsp:useBean>
<jsp:setProperty name="SB" property="*"/>
<jsp:useBean id="SDAO" class="jspbook.finalexam.SubjectDAO" scope="application"/>
<% SDAO.insert(SB); %>

<script>
	alert("${param.day}(${param.time}) ${param.title}이 추가 되었습니다.");
	history.go(-1);
</script>
</body>
</html>