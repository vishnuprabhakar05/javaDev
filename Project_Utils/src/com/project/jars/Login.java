/***
 * @author Vishnu Prabhakar
 * ***/
package com.project.jars;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:3307/vishnu";
	static final String DB_USER = "root";
	static final String DB_PASS = "root";
	
	
	public static String login(String username,String password) throws ClassNotFoundException{
		Statement st = null;
		Connection con = null;
		ResultSet rs = null;
		String result = null;
		String query =  "select * from users where username = '"+username+"' and password = '"+password+"'";
		Class.forName(JDBC_DRIVER);
		System.out.println("Connecting to database...");
	    try {
			con = DriverManager.getConnection(DB_URL,DB_USER,DB_PASS);
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next()){
				String user_name = rs.getString("username");
				String pass_word = rs.getString("password");
				if(user_name.equals(username) && pass_word.equals(password)){
					result = "success";
				} else{
					result = "fail";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
