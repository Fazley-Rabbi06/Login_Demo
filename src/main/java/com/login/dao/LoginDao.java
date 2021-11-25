package com.login.dao;
import java.sql.*;

public class LoginDao {
	String url = "jdbc:mysql://localhost:3306/RabbiDB";
	String username = "admin";
	String password = "Rabbi_1998";
	String sql = "select * from login where username=? and pass=?";
	public boolean check(String uname,String pass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
//			ResultSet rs = st.executeQuery("Select * from login where uname=uname1 and pass=pass2");
			if(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

}
