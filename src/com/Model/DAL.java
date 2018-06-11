	package com.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DAL {
	Connection conn;
	Statement stsm;

	public DAL() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/DeTaiKH1_1?useUnicode=true&characterEncoding=UTF-8, root, HNRnxp34549");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public ResultSet getData(String sql) {
		stsm =null;
		try {
			stsm=conn.createStatement();
			return stsm.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public boolean updatedata(String sql) {
		stsm =null;
		try {
			stsm=conn.createStatement();
			return stsm.executeUpdate(sql) > 0 ?true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
