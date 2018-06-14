package com.dao;

import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.sql.*;

import com.Model.DangNhap;
import com.Model.DangNhap_GV;
import com.sun.istack.internal.logging.Logger;

public class LoginDAO {
	public static Connection conn = Connect.getConnection();
	public static PreparedStatement pst = null;
	public static CallableStatement calstmt = null;
	public static ResultSet rs = null;
//	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
//	//static final String DB_URL	= "jdbc:mysql://node6132-tkstks.ocs.opusinteractive.io/detaikh?user=root&password=CEAygz81973";
//	static final String DB_URL	= "jdbc:mysql://localhost:3306/detaikh?user=root&password=1234";
	public String authenticateUser(DangNhap dangnhap) throws SQLException{
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
		String userName=dangnhap.getUserName();
		String passWord=dangnhap.getPassWord();
		String userNameDB="";
		String passWordDB="";
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return null;
//		}
		String sql="select userName,passWord,st.nameStu"
				+ " from account as a, student_account as sta, student as st"+
				" where a.idAcc=sta.idAcc and sta.idStu=st.idStu";
		
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		
		while(rs.next()){
			userNameDB=rs.getString("userName");
			passWordDB=rs.getString("passWord");
			
			if(userName.equals(userNameDB.trim()) && passWord.equals(passWordDB.trim())){
				return "SUCCESS";
			}
		}
		return null;
	}
	
	public String authenticateUser_GV(DangNhap_GV dangnhap) throws SQLException{
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
		String userName=dangnhap.getUserName();
		String passWord=dangnhap.getPassWord();
		String userNameDB="";
		String passWordDB="";
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return null;
//		}
		String sql="select userName,passWord,tea.nameTea"
				+ " from account as a, teacher_account as sta, teacher as tea"+
				" where a.idAcc=sta.idAcc and sta.idTea=tea.idTea";
		
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		while(rs.next()){
			userNameDB=rs.getString("userName");
			passWordDB=rs.getString("passWord");
			
			if(userName.equals(userNameDB.trim()) && passWord.equals(passWordDB.trim())){
				return "SUCCESS";
			}
		}
		return null;
	}
	
	public String getNameStudent(String userName) throws SQLException{
		String nameStu="";
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return "Không kết nối được";
//		}
		String sql="select st.nameStu"
				+ " from account as a, student_account as sta, student as st"+
				" where a.idAcc=sta.idAcc and sta.idStu=st.idStu and userName="+userName;
		
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		
		while(rs.next()){

			nameStu=rs.getString("nameStu");
			return nameStu;
		}
		return null;
	}
	
	public String getNameTeacher(String userName) throws SQLException{
		String nameTea="";
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return "Không kết nối được";
//		}
		String sql="select tea.nameTea"
				+ " from account as a, teacher_account as sta, teacher as tea"+
				" where a.idAcc=sta.idAcc and sta.idTea=tea.idTea and userName="+userName;
		
		pst=conn.prepareStatement(sql);
		rs=pst.executeQuery();
		
		while(rs.next()){

			nameTea=rs.getString("nameTea");
			return nameTea;
		}
		return null;
	}
	
	public String getAdminByUserName(DangNhap dangnhap) throws SQLException{
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
		String userName=dangnhap.getUserName();
		String passWord=dangnhap.getPassWord();
		String userNameDB="";
		String passWordDB="";
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return null;
//		}
		String sql="select userName,passWord"+
				" from account"+
				" where userName like ? and passWord=?";
		pst=conn.prepareStatement(sql);
		
		pst.setString(1, userName);
		pst.setString(2, passWord);
		rs=pst.executeQuery();
		/*st=conn.createStatement();
		rs=st.executeQuery(sql);*/
		
		while(rs.next()){
			userNameDB=rs.getString("userName");
			passWordDB=rs.getString("passWord");
			
			if(userName.equals(userNameDB.trim()) && passWord.equals(passWordDB.trim())){
				return "SUCCESS";
			}
		}
		return null;
	}
	
	public boolean CheckUsername(String userName){
//		Connection conn=null;
//		Statement st=null;
//		ResultSet rs=null;
//		try{
//			Class.forName(JDBC_DRIVER);
//			conn=DriverManager.getConnection(DB_URL);
//			System.out.println("connection succesfully");
//		}catch(Exception e){
//			System.out.println("Error connection" + e);
//			return false;
//		}
		String sql="SELECT * FROM account where userName="+userName;
		try{
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()){
				conn.close();
				return true;
			}
		}catch(SQLException ex){
			ex.printStackTrace();
		}
		return false;
	}
}
