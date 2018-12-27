<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc2.jsp</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/jspdb?serverTimezone=UTC","root","1234");
			psmt = conn.prepareStatement("select * from jdbc_test");
			ResultSet rs= psmt.executeQuery();
			while(rs.next()){
				out.println(rs.getString("email")+"<br>");
			}
			
			psmt = conn.prepareStatement("insert into jdbc_test values(?,?)");
			psmt.setString(1,"박호정");
			psmt.setString(2,"aa");
			psmt.executeUpdate();
			
		}catch(Exception e){
			System.out.println(e);	
		}
	
	%>
</body>
</html>