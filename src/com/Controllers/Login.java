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
import com.dao.LoginDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String nameStu = "";
		String nameTea = "";
		// dangnhap.setUserName(userName);
		// dangnhap.setPassWord(passWord);
		if (!userName.equals("admin")) {
			LoginDAO loginDAO = new LoginDAO();
			// xử lý phân biệt sv và gv
			String temp = userName.substring(0, 3);
			if (temp.equals("151")) {
				try {
					nameStu = loginDAO.getNameStudent(userName);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				DangNhap dangnhap = new DangNhap(userName, passWord, nameStu);
				String userValidate;
				try {
					userValidate = loginDAO.authenticateUser(dangnhap);
					if (userValidate == null) {
						request.setAttribute("dangnhap", userValidate);
						request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
					} else {
						if (userValidate.equals("SUCCESS")) {
							HttpSession session = request.getSession();
							session.setAttribute("dangnhap", dangnhap);
							request.getRequestDispatcher("TrangChuSV.jsp").forward(request, response);
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else {
				if (temp.equals("232")) {
					try {
						nameTea = loginDAO.getNameTeacher(userName);
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					DangNhap_GV dangnhap = new DangNhap_GV(userName, passWord, nameTea);
					String userValidate;
					try {
						userValidate = loginDAO.authenticateUser_GV(dangnhap);
						if (userValidate == null) {
							request.setAttribute("dangnhap", userValidate);
							request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
						} else {
							if (userValidate.equals("SUCCESS")) {
								HttpSession session = request.getSession();
								session.setAttribute("dangnhap", dangnhap);
								request.getRequestDispatcher("TrangChuGV.jsp").forward(request, response);
							}
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		} else {
			if (userName.equals("admin")) {
				LoginDAO loginDAO = new LoginDAO();
				String userValidate;
				try {
					DangNhap dangnhap = new DangNhap(userName, passWord);
					userValidate = loginDAO.getAdminByUserName(dangnhap);
					if (userValidate == null) {
						request.setAttribute("dangnhap", userValidate);
						request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
					} else {
						if (userValidate.equals("SUCCESS")) {
							HttpSession session = request.getSession();
							session.setAttribute("dangnhap", dangnhap);
							request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}*/
		
		
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String nameStu = "";
		String nameTea = "";
		// dangnhap.setUserName(userName);
		// dangnhap.setPassWord(passWord);
		String temp = userName.substring(0, 3);
		if (temp.equals("151") || temp.equals("232")) {
			LoginDAO loginDAO = new LoginDAO();
			// xử lý phân biệt sv và gv
			if (temp.equals("151")) {
				try {
					nameStu = loginDAO.getNameStudent(userName);
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				DangNhap dangnhap = new DangNhap(userName, passWord, nameStu);
				String userValidate;
				try {
					userValidate = loginDAO.authenticateUser(dangnhap);
					if (userValidate == null) {
						request.setAttribute("dangnhap", userValidate);
						request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
					} else {
						if (userValidate.equals("SUCCESS")) {
							HttpSession session = request.getSession();
							session.setAttribute("dangnhap", dangnhap);
							request.getRequestDispatcher("TrangChuSV.jsp").forward(request, response);
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} else {
				if (temp.equals("232")) {
					try {
						nameTea = loginDAO.getNameTeacher(userName);
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
					DangNhap_GV dangnhap = new DangNhap_GV(userName, passWord, nameTea);
					String userValidate;
					try {
						userValidate = loginDAO.authenticateUser_GV(dangnhap);
						if (userValidate == null) {
							request.setAttribute("dangnhap", userValidate);
							request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
						} else {
							if (userValidate.equals("SUCCESS")) {
								HttpSession session = request.getSession();
								session.setAttribute("dangnhap", dangnhap);
								request.getRequestDispatcher("TrangChuGV.jsp").forward(request, response);
							}
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		} else { // đây là admin
			
				LoginDAO loginDAO = new LoginDAO();
				String userValidate;
				try {
					DangNhap dangnhap = new DangNhap(userName, passWord);
					userValidate = loginDAO.getAdminByUserName(dangnhap);
					if (userValidate == null) {
						request.setAttribute("dangnhap", userValidate);
						request.getRequestDispatcher("LoginFail.jsp").forward(request, response);
					} else {
						if (userValidate.equals("SUCCESS")) {
							HttpSession session = request.getSession();
							session.setAttribute("dangnhap", dangnhap);
							request.getRequestDispatcher("TrangChu.jsp").forward(request, response);
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
	}
}
