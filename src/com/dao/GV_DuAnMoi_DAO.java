package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Model.Admin_CapPhepDeTai;

public class GV_DuAnMoi_DAO {
	public static Connection conn = Connect.getConnection();
	public static PreparedStatement pst = null;
	public static CallableStatement calstmt = null;
	public static ResultSet rs = null;

	public ResultSet getDeTaiDangKy(String username) throws SQLException{
		Admin_CapPhepDeTai capphep= null;
		
		/*String userName="";
		String nameSub="";
		String idSupport;
		String ngayDangKy="";
		int idSub;*/
		
		try{
			String sql1="create table temp1"+
					" select accs.idsupport"+
						" from account as acc, account_subject as accs,teacher as tea, teacher_account as teaa"+
						" where acc.idacc=teaa.idacc and teaa.idtea=tea.idtea and tea.idtea=accs.idsupport and tinhtrang=N'chờ duyệt' and username=N'"+username+"'";
			int kq1=0,kq2=0;
			pst = conn.prepareStatement(sql1);			
			kq1=pst.executeUpdate();
			pst.close();
			
			String sql2="select userName,nameSub,idSupport,ngayDangKy,s.idSub,accs.idAcc,a.type"+
					" from account as a, account_subject as accs, subject as s"+
					" where a.idAcc=accs.idAcc and accs.idSub=s.idSub and tinhTrang=N'chờ duyệt' and idsupport in (select * from temp1);";
			pst = conn.prepareStatement(sql2);
			rs = pst.executeQuery();
			pst.close();
			String sql3="drop table temp1";
			pst = conn.prepareStatement(sql3);			
			kq2=pst.executeUpdate();
			return rs;
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
	

	public static ArrayList<Admin_CapPhepDeTai> getListCapDTByNav( int firstResult, int maxResult,String username) throws SQLException {     
       
        
	        /*String sql="select TOP( ? ) userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc"+ 
					" from Account as a, Account_Subject as accS, Subject as s"+
					" where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'chờ duyệt' and a.type=0 except "+
					" 	select TOP( ? ) userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc"+ 
					" from Account as a, Account_Subject as accS, Subject as s"+
					" where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'chờ duyệt' and a.type=0";*/
        String sql1="create table temp2"+
				" select accs.idSupport"+
					" from account as acc, account_subject as accs,teacher as tea, teacher_account as teaa"+
					" where acc.idacc=teaa.idacc and teaa.idtea=tea.idtea and tea.idtea=accs.idsupport and tinhtrang=N'chờ duyệt' and username=N'"+username+"'";
		int kq1=0,kq2=0;
		pst = conn.prepareStatement(sql1);		
		kq1=pst.executeUpdate();
		pst.close();		
		String sql2="select userName,nameSub,idSupport,ngayDangKy,s.idSub,accs.idAcc,a.type"+
				" from account as a, account_subject as accs, subject as s"+
				" where a.idAcc=accs.idAcc and accs.idSub=s.idSub and tinhTrang=N'chờ duyệt' and idsupport in (select * from temp2);";
		pst = conn.prepareStatement(sql2);
		rs = pst.executeQuery();
		ArrayList<Admin_CapPhepDeTai> list = new ArrayList<>();
		while (rs.next()) {
        	Admin_CapPhepDeTai detai = new Admin_CapPhepDeTai();
            detai.setUserName(rs.getString("userName"));
            detai.setNameSub(rs.getString("nameSub"));
            detai.setIdSupport(rs.getInt("idSupport"));
            detai.setNgayDangKy(rs.getString("ngayDangKy"));
            detai.setIdSub(rs.getInt("idSub"));
            detai.setIdAcc(rs.getInt("idAcc"));
            
            list.add(detai);
            
        }
		pst.close();
		String sql3="drop table temp2";
		pst = conn.prepareStatement(sql3);		
		kq2=pst.executeUpdate();
	     return list;
	} 
	
	//tÃ­nh tá»•ng sá»‘ Ä‘á»� tÃ i Ä‘á»ƒ chia trang
	public static int countDeTai(String Username) throws SQLException{
		Connection connection = Connect.getConnection();
		String sql="select count(*)"+
        		" from account as acc, account_subject as accs,teacher as tea, teacher_account as teaa"+
        		" where acc.idacc=teaa.idacc and teaa.idtea=tea.idtea and tea.idtea=accs.idsupport and tinhtrang=N'chờ duyệt' and username=N'"+Username+"'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count=0;
        while (rs.next()) {
        	count=rs.getInt(1);
        }
        return count;
	}
	
	public static int getIdSupportByUserName(String Username) throws SQLException{
		
        String sql="select accs.idsupport"+
        		" from account as acc, account_subject as accs,teacher as tea, teacher_account as teaa"+
        		" where acc.idacc=teaa.idacc and teaa.idtea=tea.idtea and tea.idtea=accs.idsupport and tinhtrang=N'chờ duyệt' and username=N'"+Username+"'";
        pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();
        int idSupport=0;
        while (rs.next()) {
        	idSupport=rs.getInt(1);
        }
        return idSupport;
	}
}
