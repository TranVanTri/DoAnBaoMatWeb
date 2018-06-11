package com.Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Connect;
import com.dao.DuyetDT_SV_DAO;

@WebServlet("/ShowAccount_DuyetDT")
public class ShowAccount_DuyetDT extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowAccount_DuyetDT() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/plain;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try{
			String idSub=request.getParameter("idSub");
			Connect conn= new Connect();
			String sql="select s.idSub,s.nameSub,stu.nameStu,accs.ngayDangKy,acc.type"+
					" from account_subject as accs, account as acc, subject as s, student_account as stua, Student as stu"+
					" where accs.idSub=s.idSub and accs.idAcc=acc.idAcc and acc.idAcc=stua.idAcc and stua.idStu=stu.idStu and s.idSub="+idSub;
			ResultSet rs= conn.getData(sql);
			request.setAttribute("duyet", rs);
			request.getRequestDispatcher("./WEB-INF/Admin_DuyetDT_SV.jsp").forward(request, response);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
		
	}

}
