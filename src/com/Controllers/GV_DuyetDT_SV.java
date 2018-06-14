package com.Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Admin_DuAnMoi_DAO;
import com.dao.Connect;
import com.dao.DuyetDT_SV_DAO;
import com.dao.GV_DuAnMoi_DAO;
import com.dao.ThongTinCN_DAO;

@WebServlet("/GV_DuyetDT_SV")
public class GV_DuyetDT_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GV_DuyetDT_SV() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int idAcc=0;
		String username_GV="";
		try{
			int idSub=Integer.parseInt(request.getParameter("idSub"));
			idAcc=Integer.parseInt(request.getParameter("idAcc"));
			username_GV=request.getParameter("username");
			DuyetDT_SV_DAO duyet= new DuyetDT_SV_DAO();
			duyet.updateData("update account_subject set tinhTrang=N'giảng viên đã duyệt' where idSub="+idSub+" and idAcc="+idAcc);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		GV_DuAnMoi_DAO thongtinDAO= new GV_DuAnMoi_DAO();
		ResultSet capphep=null;
		try {
			capphep = thongtinDAO.getDeTaiDangKy(username_GV);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("capphep", capphep);
		Connection connect=Connect.getConnection();
		String username="";
		try {
			username = DuyetDT_SV_DAO.getUserNameByIDAcc(idAcc, connect);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url="ThongBaoCapPhep_GV.jsp?username="+username_GV+"&pages=1";
		request.getRequestDispatcher(url).forward(request, response);	
	}

}
