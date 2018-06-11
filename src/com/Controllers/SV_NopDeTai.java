package com.Controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SV_DangkiDeTai_DAO;

@WebServlet("/SV_NopDeTai")
public class SV_NopDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SV_NopDeTai() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*ResultSet rs = SV_DangkiDeTai_DAO.getListDetai();
		
		request.setAttribute("rs",rs);*/
		
		request.getRequestDispatcher("WEB-INF/SV_NopDeTai.jsp").forward(request, response);
		
		/*response.sendRedirect("WEB-INF/SV_NopDeTai.jsp");*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
