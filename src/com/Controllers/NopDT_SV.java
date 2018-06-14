package com.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SV_NopDT_DAO;


@WebServlet("/NopDT_SV")
public class NopDT_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public NopDT_SV() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int idsub= Integer.parseInt(request.getParameter("idsub"));
		String linkDT = request.getParameter("linkDT");
		String ghichu = request.getParameter("ghichu");
		SV_NopDT_DAO dao = new SV_NopDT_DAO();
		try {
			dao.Update(idsub, linkDT, ghichu);
			response.sendRedirect("SV_NopDeTai.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
