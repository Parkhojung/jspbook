<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc.jsp</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement p = null;
		try{
			String url = "jdbc:mysql://127.0.0.1/jspdb?serverTimezone=UTC";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,"root","1234");
			
			p = conn.prepareStatement("select * from jdbc_test");
			ResultSet rs= p.executeQuery();
			while(rs.next()){
				out.println(rs.getString(1)+"<br>");
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
	
	%>
</body>
</html>