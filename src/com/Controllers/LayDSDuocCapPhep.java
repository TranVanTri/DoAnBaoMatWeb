package com.Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.Model.Admin_CapPhepDeTai;
import com.Model.DBDetai;
import com.Model.DB_DanhSachCapDeTai;
import com.dao.Admin_DuAnMoi_DAO;
import com.dao.Connect;

@WebServlet("/LayDSDuocCapPhep")
public class LayDSDuocCapPhep extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LayDSDuocCapPhep() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*DB_DanhSachCapDeTai dbdetai =new DB_DanhSachCapDeTai();
		ResultSet rs =dbdetai.getListDetai();*/
		/*request.setAttribute("rs", rs);*/
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		Connection conn=null;
		Statement st=null;
		ResultSet rs=null;
		conn=Connect.getConnection();
		
		String username=request.getParameter("username");
		Admin_CapPhepDeTai capphep=null;
		try{
			String sql="select userName"+ 
					" from account"+
					" where userName="+username;
			
			st=conn.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				String user=rs.getString("userName");
				capphep= new Admin_CapPhepDeTai(user);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		request.setAttribute("capphep", capphep);
		request.getRequestDispatcher("Admin_ThongBaoDuAnMoi.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
