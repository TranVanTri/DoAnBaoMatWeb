package com.Controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Admin_DuAnMoi_DAO;
import com.dao.DuyetDT_SV_DAO;

@WebServlet("/DuyetDT_SV")
public class DuyetDT_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DuyetDT_SV() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try{
			int idSub=Integer.parseInt(request.getParameter("idSub"));
			int idAcc=Integer.parseInt(request.getParameter("idAcc"));
			String hannop=request.getParameter("hannop");
			DuyetDT_SV_DAO duyet= new DuyetDT_SV_DAO();
			duyet.updateData("update account_subject set ngayCap=CURDATE(), hanNop=N'"+hannop+"' , tinhTrang=N'đã duyệt' where idSub="+idSub+" and idAcc="+idAcc);
			System.out.println("da update");
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		Admin_DuAnMoi_DAO thongtinDAO= new Admin_DuAnMoi_DAO();
		ResultSet capphep=null;
		try {
			capphep = thongtinDAO.getDeTaiDangKy();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("capphep", capphep);
		request.getRequestDispatcher("ThongBaoCapPhep.jsp?pages=1").forward(request, response);
	}

}
