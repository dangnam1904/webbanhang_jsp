package Servlets;

import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.coyote.Request;

import Model.dao_Users;
import Objects.Users;


@WebServlet("/pages/user-profile")
public class UsEditAccount extends HttpServlet { 
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//	Hiển thị tiếng Việt
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		dao_Users dao = new dao_Users();
		String user_name = request.getParameter("user-name");
		String user_view = request.getParameter("view-name");
		String user_pass = request.getParameter("password"); 
		String mes = "";
		String pass = Validator(user_pass);
		if(pass.equals("")) {
			// mã hóa mật khẩu
			UsAddAccount u = new UsAddAccount();
			user_pass = u.encryption(user_pass); 

			Users user = new Users(); 
			user.setTenhienthi(user_view);
			user.setMatkhau(user_pass);
			user.setTentaikhoan(user_name); 
			if(dao.EditAccount(user)){
				// Thay đổi lại giá trị session để hiển thị thông tin mới cập nhật
				String sql = "SELECT * FROM taikhoan WHERE tentaikhoan = '"+user_name+"'"; 
				Users us = dao.CheckLogin(sql);
				mes = "Cập nhật thành công thông tin tài khoản."; 
				session.setAttribute("uslogin", us); 
				session.setAttribute("SussecfulEditAcc", mes);  
				response.sendRedirect("user-profile.jsp");
			}
			else { 
				mes = "Hệ thống quá tải, vui lòng quay lại sau."; 
				session.setAttribute("SingupError", mes); 
				response.sendRedirect("user-profile.jsp");
			} 
		}
		else {
			mes = "Mật khẩu từ 3 đến 30 kí tự gồm chữ và số."; 
			session.setAttribute("SingupError", mes); 
			response.sendRedirect("user-profile.jsp");
		} 

	}
	//Kiểm tra lỗi
	private String Validator(String pass) { 
		//	Kiểm tra tên tài khoản
		Pattern pattern;  
		final String PASSWORD_PATTERN = "^[A-Za-z0-9]{3,30}$";      
		pattern = Pattern.compile(PASSWORD_PATTERN); 
		//	Kiểm tra mật khẩu 
		if(pattern.matcher(pass).matches()) {
			pass = "";
		}
		else {
			pass = "Mật khẩu từ 3 đến 30 kí tự bao gồm chữ và số";
		} 
		return pass;
	}

}
