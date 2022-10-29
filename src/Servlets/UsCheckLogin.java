package Servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.coyote.Request;

import Model.dao_Users;
import Objects.Users;

@WebServlet("/pages/login")
public class UsCheckLogin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_name = request.getParameter("user-name");
		String user_pass = request.getParameter("user-password"); 
		String linkback = request.getParameter("link-back");
		
		UsAddAccount u = new UsAddAccount(); 
		user_pass = u.encryption(user_pass);	 
		dao_Users dao = new dao_Users();
		HttpSession session = request.getSession(); 
		String sql = "SELECT * FROM taikhoan WHERE (tentaikhoan = '"+user_name+"' AND matkhau = '"+user_pass+"')  OR (email = '"+user_name+"' AND matkhau = '"+user_pass+"') ";
		if(dao.CheckLogin(sql) != null) {
			Users us = dao.CheckLogin(sql); 
			session.setAttribute("uslogin", us);  
			//	Đăng nhập thành công nếu user chuyển qua trang chủ người dùng nếu admin chuyển qua trang chủ admin
			if(us.getPhanquyen().equals("user")) {  
				if(linkback != null) {
					response.sendRedirect(linkback); 
				}
				else {
					response.sendRedirect("../index.jsp");
				}
			}
			if(us.getPhanquyen().equals("admin")) {
				session.setAttribute("admin", "admin");
				response.sendRedirect("../admin/pages/home/");
			} 
		}
		else {
			String error = "Thông tin đăng nhập chưa tồn tại, vui lòng kiểm tra lại!";
			session.setAttribute("errorlogin", error);
			response.sendRedirect("login.jsp");
		}  
	}
}
