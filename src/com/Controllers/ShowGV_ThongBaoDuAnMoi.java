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
import com.dao.GV_DuAnMoi_DAO;

@WebServlet("/ShowGV_ThongBaoDuAnMoi")
public class ShowGV_ThongBaoDuAnMoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowGV_ThongBaoDuAnMoi() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*GV_DuAnMoi_DAO thongtinDAO= new GV_DuAnMoi_DAO();
		ResultSet capphep=null;
		try {
			capphep = thongtinDAO.getDeTaiDangKy();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("capphep", capphep);
		request.getRequestDispatcher("ThongBaoCapPhep_GV.jsp?pages=1").forward(request, response);*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
