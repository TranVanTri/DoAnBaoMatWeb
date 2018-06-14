package com.Controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Model.DangNhap;
import com.Model.ThongTinCN;
import com.dao.LoginDAO;
import com.dao.ThongTinCN_DAO;

@WebServlet("/ThongTinCaNhan")
public class ThongTinCaNhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ThongTinCaNhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("username");
		ThongTinCN_DAO thongtinDAO= new ThongTinCN_DAO();
		ThongTinCN thongtin=null;
		try {
			thongtin = thongtinDAO.getThongTinCaNhan(userName);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try{
			if(thongtin!=null){
				HttpSession session=request.getSession();
				session.setAttribute("thongtin", thongtin);
				request.getRequestDispatcher("SV_ThongTinCaNhan.jsp").forward(request, response);
			}
			else{
				request.setAttribute("errMessage", thongtin);
				request.getRequestDispatcher("SV_ThongTinCaNhan.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
