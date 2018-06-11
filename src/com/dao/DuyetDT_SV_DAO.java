package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Model.Admin_CapPhepDeTai;
import com.Model.Admin_DuyetDT;

public class DuyetDT_SV_DAO {
	public static Connection conn = Connect.getConnection();
	public static PreparedStatement pst = null;
	public static CallableStatement calstmt = null;
	public static ResultSet rs = null;
	public int updateData(String sql) throws SQLException{
		int kq=0;
		
		
		
		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();
		conn.close();
		return kq;
	}
	
	public static String getUserNameByIDAcc(int idAcc,Connection connect) throws SQLException{
		
		
		String sql="select username from account where idacc="+idAcc;
		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();
		
		while(rs.next()){
			return rs.getString("username");
		}
		return null;
	}
	
	/*public Admin_DuyetDT getDuyetDTByIDSubject(String idSub) throws SQLException{
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		String sql="select s.idSub,s.nameSub,stu.nameStu,accS.ngayDangKy,acc.type"+
		"from Account_Subject as accS, Account as acc, Subject as s, Student_Account as stuA, Student as stu"+
		"where accS.idSub=s.idSub and accS.idAcc=acc.idAcc and acc.idAcc=stuA.idAcc and stuA.idStu=stu.idStu and s.idSub="+idSub;
		
	}*/
}
