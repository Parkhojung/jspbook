<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form method="post" action="addr_add.jsp">
	<table border=1>
		<tr>
			<td>이름</td><td><input type="text" name ="username"/></td>
		</tr>
		<tr>
			<td>전화번호</td><td><input type="text" name ="tel"/></td>
		</tr>
		<tr>
			<td>이메일</td><td><input type="text" name ="email"/></td>
		</tr>
		<tr>
			<td>성별</td><td><select name="sex"><option>남</option><option>여</option></select></td>
		</tr>
		<tr>
			<td><input type="submit" value="확인"/> <input type="reset" value="취소"/></td>
		</tr>
		
		</table>

</form> 





</div>
</body>
</html>