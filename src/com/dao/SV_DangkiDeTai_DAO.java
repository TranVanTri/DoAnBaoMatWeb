package com.dao;

import java.sql.*;
import java.util.ArrayList;

import com.Model.*;

public class SV_DangkiDeTai_DAO {
    public static Connection conn = Connect.getConnection();
    public static PreparedStatement pst = null;
    public static CallableStatement calstmt = null;
    public static ResultSet rs = null;
    
   /* public SV_DangkiDeTai_DAO() {
    	conn= Connect.getConnection();
    }*/

    public ArrayList<SV_DangKyDT> getListDetai(String username) {
    	ArrayList<SV_DangKyDT> list = new ArrayList<>();
    	String sql= "Select account_subject.idSub,nameSub,contentSub, nameTea,ngayDangKy, ngayCap, hanNop, tinhTrang ,ghichu,linkDT FROM account_subject, subject ,teacher " + 
    			"    			        			 WHERE account_subject.idSub = subject.idSub AND tinhtrang =N'chờ duyệt' AND idSupport = idTea AND idAcc =(SELECT idAcc FROM account WHERE userName='"+username+"')";
        try {
        	
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
            	int idSub = rs.getInt(1);
            	String nameSub = rs.getString(2);
            	String contentSub = rs.getString(3);
            	String nameteacher = rs.getString(4);
            	String ngayDangKy = rs.getString(5);
            	String ngayCap = rs.getString(6);
            	String hanNop = rs.getString(7);
            	String tinhTrang = rs.getString(8);
            	String ghichu = rs.getString(9);
            	String link = rs.getString(10);
            	SV_DangKyDT svdt= new SV_DangKyDT(idSub, nameSub, contentSub, nameteacher,ngayDangKy, ngayCap, hanNop, tinhTrang, ghichu,link);
            	list.add(svdt);
            }
            return list;
            
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
       
    }
    
   public void Insert(int idacc, String TenDT, String NoidungDT, int idsp)  {
       
	   String sql="{call themDtai(?,?,?)}";
       int idsub=0;
        try {
        	
			/*pst= conn.prepareStatement(sql);
			pst.execute();*/
            calstmt = conn.prepareCall(sql);
            calstmt.registerOutParameter(1,java.sql.Types.INTEGER);
            calstmt.setString(2, TenDT);
            calstmt.setString(3, NoidungDT);
            calstmt.execute();
            idsub = calstmt.getInt(1);
            System.out.println(idsub);
            
        } catch (Exception e) {
            e.printStackTrace();
            
        }
       try {
			String sql2="INSERT INTO account_subject( idAcc ,idSub ,ngayDangKy, idSupport, tinhtrang) VALUES  (  ?,  ?,CURDATE(),?,N'chờ duyệt')";
			pst=conn.prepareStatement(sql2);
			pst.setInt(1, idacc);
			pst.setInt(2, idsub);
			pst.setInt(3, idsp);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();      
		}
    }
   public void Update(int idsub, String namesub, String contentSub) {
	   try {
			String sql="UPDATE subject SET nameSub=N'"+namesub+"', contentSub=N'"+contentSub+"' WHERE idSub ="+idsub;
			pst=conn.prepareStatement(sql);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();      
		}
   }
   public SV_DangKyDT find(int idsub) {
	   try {
			String sql="SELECT * FROM subject WHERE idSub =? ";
			pst=conn.prepareStatement(sql);
			pst.setInt(1, idsub);
			rs= pst.executeQuery();
			SV_DangKyDT sv =null;
			while (rs.next()) {
				int id= rs.getInt(1);
				String name= rs.getString(2);
				String content=rs.getString(3);
				sv =new SV_DangKyDT(id, name, content);	
			}
			return sv;
		} catch (Exception ex) {
			ex.printStackTrace();     
			return null;
		}
   }
   public void Delete(int idsub)  {
       
	   String sql="DELETE from account_subject WHERE idSub = ? AND tinhTrang= N'chờ duyệt'";
        try {
        	
			pst= conn.prepareStatement(sql);
			pst.setInt(1, idsub);
			pst.execute();
        } catch (Exception e) {
            e.printStackTrace();
            
        }
       try {
			String sql2="DELETE from subject WHERE idSub = ?";
			pst=conn.prepareStatement(sql2);
			pst.setInt(1, idsub);
			pst.execute();
			
		} catch (Exception ex) {
			ex.printStackTrace();      
		}
    }
   public ArrayList<ThongTinCN> Infor() {
	   ArrayList<ThongTinCN> list = new ArrayList<>();
	   try {
			String sql="SELECT * FROM teacher";
			pst=conn.prepareStatement(sql);
			rs= pst.executeQuery();
			
			while (rs.next()) {
				int id= rs.getInt("idTea");
				String name= rs.getString("nameTea");
				ThongTinCN sv =new ThongTinCN(id, name);
				list.add(sv);
			}
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();     
			return null;
		}
   }
   public ArrayList<ThongTinCN> InforTea(String major) {
	   ArrayList<ThongTinCN> list = new ArrayList<>();
	   try {
			String sql="SELECT * FROM teacher WHERE majorTea LIKE N'"+major+"'";
			pst=conn.prepareStatement(sql);
			rs= pst.executeQuery();
			
			while (rs.next()) {
				int id= rs.getInt("idTea");
				String name= rs.getString("nameTea");
				ThongTinCN sv =new ThongTinCN(id, name);
				list.add(sv);
			}
			return list;
		} catch (Exception ex) {
			ex.printStackTrace();     
			return null;
		}
   }
}

