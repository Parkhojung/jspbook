<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/mydb?serverTimezone=UTC";
	
	try{
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(jdbc_url,"hojung","1111");
		
		String sql = "insert into addrbook values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("name"));
		pstmt.setString(2,request.getParameter("age"));
		pstmt.setString(3,request.getParameter("sex"));
		
		if(request.getParameter("name") != null){
			pstmt.executeUpdate();
		}
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title> test</title>
</head>
<body>
<div align="center">
	<form method=POST>
		이름: <input type=text name=name><br>
		나이: <input type=text name=age>
		<select name=sex>
			<option>남</option>
			<option>여</option>
		</select>
		<input type= submit value="등록">
	</form>
</div>
<br>
<div align="left">
	#등록 목록<br>
	<%
		try{
			String sql = "select ab_name,ab_birth from addrbook";
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			int i= 1;
			
			while(rs.next()){
				out.println(i + ": "+ rs.getString("ab_name")+ ","+rs.getString("ab_birth")+"생일"+"<BR>");
				i++;
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
	%>
</div>
</body>

</html>