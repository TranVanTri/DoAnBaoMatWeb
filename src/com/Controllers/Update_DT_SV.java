package com.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SV_DangkiDeTai_DAO;

@WebServlet("/Update_DT")
public class Update_DT_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Update_DT_SV() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int id= Integer.parseInt(request.getParameter("idDT"));
		System.out.println(id);
		String tenDT = request.getParameter("tenDT");
		String noidungDT = request.getParameter("noidungDT");
		SV_DangkiDeTai_DAO dao = new SV_DangkiDeTai_DAO();
		try {
			dao.Update(id, tenDT, noidungDT);
			response.sendRedirect("SV_DangKyDTai.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
