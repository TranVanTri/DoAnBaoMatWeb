package com.Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.SV_DangkiDeTai_DAO;
import com.dao.ThongTinCN_DAO;


@WebServlet("/Update_info_SV")
public class Update_info_SV extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Update_info_SV() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int id= Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");
		String email = request.getParameter("email");
		//String username=request.getParameter("username");
		ThongTinCN_DAO dao = new ThongTinCN_DAO();
		try {
			dao.UpdateStu(id, diachi, sdt, email);
			//request.setAttribute("username", username);
			request.getRequestDispatcher("SV_ThongTinCaNhan.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
