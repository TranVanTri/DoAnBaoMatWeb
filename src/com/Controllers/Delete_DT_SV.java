package com.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SV_DangkiDeTai_DAO;


@WebServlet("/Delete_DT_SV")
public class Delete_DT_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Delete_DT_SV() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idsub = Integer.parseInt(request.getParameter("idDT"));
		SV_DangkiDeTai_DAO dao = new SV_DangkiDeTai_DAO();
		try {
			dao.Delete(idsub);
			response.sendRedirect("SV_DangKyDTai.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
