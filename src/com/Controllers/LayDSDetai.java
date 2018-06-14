package com.Controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.DBDetai;
@WebServlet("/LayDSDetai")
public class LayDSDetai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LayDSDetai() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBDetai dbdetai =new DBDetai();
		ResultSet rs =dbdetai.getListDetai();
		request.setAttribute("rs", rs);
		request.getRequestDispatcher("./WEB-INF/SV_DangKyDTai.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
