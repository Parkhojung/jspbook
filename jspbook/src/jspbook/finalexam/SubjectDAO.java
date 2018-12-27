package jspbook.finalexam;
import java.sql.*;
public class SubjectDAO {
	
	ResultSet rs;
	Connection conn = null;
	PreparedStatement psmt = null;
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost/jspdb?serverTimezone=UTC";
	
	
	public boolean insert(SubjectBean SB) {
		try {
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url,"root","1234");
			psmt = conn.prepareStatement("insert into subject(day,time,title) values(?,?,?)");
			
			psmt.setString(1, SB.getDay());
			psmt.setString(2, SB.getTime());
			psmt.setString(3, SB.getTitle());
			psmt.executeUpdate();
			
			conn.close();
			psmt.close();
			return true;
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return false;
	}
	
	public ResultSet getRs() {
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "root", "1234");
			psmt = conn.prepareStatement("select * from subject");
			ResultSet rs= psmt.executeQuery();
		
			return rs;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	public void delete() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, "root", "1234");
			psmt = conn.prepareStatement("delete from subject");
			psmt.executeUpdate();
			psmt.close();
			conn.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}
}
