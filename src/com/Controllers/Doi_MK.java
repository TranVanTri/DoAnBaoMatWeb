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
import com.Model.DangNhap_GV;
import com.dao.*;


@WebServlet("/Doi_MK")
public class Doi_MK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Doi_MK() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String userName= request.getParameter("userName");
		String mkcu = request.getParameter("mkcu");
		String mkmoi = request.getParameter("mkmoi");
		String pass = "";
		ThongTinCN_DAO dao = new ThongTinCN_DAO();
		try {
			
			pass = dao.getpassword(userName);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(mkcu.equals(pass)) {
			try {
			dao.doimk(userName, mkmoi);
			request.getRequestDispatcher("TrangChuAdmin.jsp").forward(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			
			request.getRequestDispatcher("SaiMatKhau.jsp?username="+userName+"&password="+mkcu).forward(request, response);
		}
	}

}
