package com.Controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.Admin_CapPhepDeTai;
import com.Model.ThongTinCN;
import com.dao.Admin_DuAnMoi_DAO;
import com.dao.SV_DangkiDeTai_DAO;
import com.dao.ThongTinCN_DAO;

@WebServlet("/ShowAdmin_ThongBaoDuAnMoi")
public class ShowAdmin_ThongBaoDuAnMoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowAdmin_ThongBaoDuAnMoi() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
