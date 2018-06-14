package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.Model.Admin_CapPhepDeTai;
import com.Model.ThongTinCN;

import jdk.internal.util.xml.PropertiesDefaultHandler;

public class Admin_DuAnMoi_DAO {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	//static final String DB_URL	= "jdbc:mysql://node6132-tkstks.ocs.opusinteractive.io/detaikh?user=root&password=CEAygz81973";
	static final String DB_URL	= "jdbc:mysql://localhost:3306/detaikh?user=root&password=123";
	public static Connection conn = Connect.getConnection();
    public static PreparedStatement pst = null;
	public ResultSet getDeTaiDangKy() throws SQLException{
		Admin_CapPhepDeTai capphep= null;
		Statement st=null;
		ResultSet rs=null;
		/*String userName="";
		String nameSub="";
		String idSupport;
		String ngayDangKy="";
		int idSub;*/
		try{
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(DB_URL);
			System.out.println("connection succesfully");
		}catch(Exception e){
			System.out.println("Error connection" + e);
			return null;
		}
		try{
			/*String sql="select userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc into Temp"+
        			"	from Account as a, Account_Subject as accS, Subject as s"+
        			"	where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'chờ duyệt'"+
        			"	union"+
        			"	select userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc"+
        			"	from Account as a, Account_Subject as accS, Subject as s"+
        			"	where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'giảng viên đã duyệt'"+
        			"  select * from Temp"+
        			"	drop table Temp";*/
			String sql="(select username,namesub,idsupport,ngaydangky,s.idsub,accs.idacc"+
        				" from account as a, account_subject as accs, subject as s"+
        				" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'chờ duyệt' and a.type=1)"+
        				" union"+
        				" (select username,namesub,idsupport,ngaydangky,s.idsub,accs.idacc"+
        				" from account as a, account_subject as accs, subject as s"+
        				" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'giảng viên đã duyệt' and a.type=0)";
			
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			
			
			
			return rs;
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
	
	public static ArrayList<Admin_CapPhepDeTai> getListCapDTByNav( int firstResult, int maxResult) throws SQLException {
        Connection connection = Connect.getConnection();
        String sql="(select username,namesub,idsupport,ngaydangky,s.idsub,accs.idacc"+
				" from account as a, account_subject as accs, subject as s"+
				" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'chờ duyệt' and a.type=1 limit "+firstResult+","+maxResult+")"+
				" union"+
				" (select username,namesub,idsupport,ngaydangky,s.idsub,accs.idacc"+
				" from account as a, account_subject as accs, subject as s"+
				" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'giảng viên đã duyệt' and a.type=0 limit "+firstResult+","+maxResult+")";
        Statement st=connection.createStatement();
        ResultSet rs = st.executeQuery(sql);
        ArrayList<Admin_CapPhepDeTai> list = new ArrayList<>();
        while (rs.next()) {
        	Admin_CapPhepDeTai detai = new Admin_CapPhepDeTai();
            detai.setUserName(rs.getString("username"));
            detai.setNameSub(rs.getString("namesub"));
            detai.setIdSupport(rs.getInt("idsupport"));
            detai.setNgayDangKy(rs.getString("ngaydangky"));
            detai.setIdSub(rs.getInt("idsub"));
            detai.setIdAcc(rs.getInt("idacc"));
            
            list.add(detai);
            
        }
        return list;
	} 
	
	public static int countDeTai() throws SQLException{
		Connection connection = Connect.getConnection();
       /* String sql="select userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc into Temp"+
    			"	from Account as a, Account_Subject as accS, Subject as s"+
    			"	where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'chờ duyệt'"+
    			"	union"+
    			"	select userName,nameSub,idSupport,ngayDangKy,s.idSub,accS.idAcc"+
    			"	from Account as a, Account_Subject as accS, Subject as s"+
    			"	where a.idAcc=accS.idAcc and accS.idSub=s.idSub and tinhTrang=N'giảng viên đã duyệt'"+
    			"  select count(*) from Temp"+
    			"	drop table Temp";*/
		 String sql="create table temp" + 
	        		" (select a.type,count(*) as 'a'" + 
	        		" from account as a, account_subject as accs, subject as s" + 
	        		" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'chờ duyệt' and a.type=1)" + 
	        		" union" + 
	        		" (select a.type,count(*) as 'a'" + 
	        		" from account as a, account_subject as accs, subject as s" + 
	        		" where a.idacc=accs.idacc and accs.idsub=s.idsub and tinhtrang=N'giảng viên đã duyệt' and a.type=0);";
	        /*PreparedStatement ps = connection.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();*/
	        
	        Statement st=connection.createStatement();
	        st.executeUpdate(sql);
	        st.close();
	        st=connection.createStatement();
	        int count=0;
	        ResultSet rs=null;
	        String sql1="select sum(a) from temp;";
	        rs=st.executeQuery(sql1);
	        while (rs.next()) {
	        	count=rs.getInt(1);
	        }
	        String sql2="drop table temp;";
	        st.close();
	        st=connection.createStatement();
	        st.executeUpdate(sql2); 
	        return count;
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
				String sql2="DELETE subject WHERE idSub = ?";
				pst=conn.prepareStatement(sql2);
				pst.setInt(1, idsub);
				pst.execute();
				
			} catch (Exception ex) {
				ex.printStackTrace();      
			}
	    }
}
