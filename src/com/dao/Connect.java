package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class Connect {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	//static final String DB_URL	= "jdbc:mysql://node6132-tkstks.ocs.opusinteractive.io/detaikh?user=root&password=CEAygz81973";
	static final String DB_URL	= "jdbc:mysql://localhost:3306/detaikh?user=root&password=1234";
	Connection conn;
	Statement stsm;
	public static Connection getConnection() {
		try {
			Class.forName(JDBC_DRIVER);
			Connection conn = DriverManager.getConnection(DB_URL);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return null;
	}
	
	public ResultSet getData(String sql) throws SQLException {
		stsm = null;
		try {
			stsm = conn.createStatement();
			return stsm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
			stsm.close();
			conn.close();
			
		}
		return null;
	}

	/*public boolean updatedata(String sql) throws SQLException{
		stsm = null;
		try {
			stsm = conn.createStatement();
			return stsm.executeUpdate(sql) > 0 ? true : false;
		} catch (SQLException e) {
			e.printStackTrace();
			stsm.close();
			conn.close();
		}
		return false;
	}*/
}
