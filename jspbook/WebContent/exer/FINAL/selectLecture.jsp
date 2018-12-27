<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectLecture.jsp</title>
</head>
<body>
<jsp:useBean id="userbean" class="jspbook.finalexam.UserBean" scope="session"/> 
<jsp:setProperty name="userbean" property="*"/>
${userbean.name}(${userbean.id})님, 환영합니다!
<form action="addLecture.jsp" method="POST">
	<select name="day">
		<option>월</option>
		<option>수</option>
		<option>금</option>
	</select>
	<select name="time">
		<option>12:00-13:50</option>
		<option>14:00-:15:50</option>
	</select>
	<select name="title">
		<option>웹프로그래밍</option>
		<option>자바프로그래밍</option>
	</select>
	<input type="submit" value="신청"/>
</form>
<a href="listLecture.jsp">전체보기</a>
<a href="logout.jsp">로그아웃</a>
</body>
</html>