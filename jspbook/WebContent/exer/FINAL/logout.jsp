<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="subjectDao" class="jspbook.finalexam.SubjectDAO"></jsp:useBean>
<% subjectDao.delete(); %>
로그아웃 되었습니다.
<a href="login.jsp">로그인하기</a>
</body>
</html>