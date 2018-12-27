<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%
		Connection conn = null;
		PreparedStatement psmt = null;
		
		try{
			String url = "jdbc:mysql://localhost/hello?serverTimezone=UTC";
			String driver = "com.mysql.jdbc.Driver";
			Class.forName(driver);
			conn = DriverManager.getConnection(url,"root","1234");
			psmt = conn.prepareStatement("select * from tb");
			ResultSet rs = psmt.executeQuery();
			while(rs.next()){
				out.println(rs.getString(1));
			}
		}
		
		catch(Exception e){
			System.out.println(e);
		}
	%>
</body>
</html>