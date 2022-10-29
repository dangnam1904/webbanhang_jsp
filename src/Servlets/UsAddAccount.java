package Servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; 

import Model.dao_Users;
import Objects.Users; 

/**
 * Servlet implementation class UsAddAccount
 */ 
@WebServlet("/pages/register")
public class UsAddAccount extends HttpServlet {
	  
 
	dao_Users dao = new dao_Users();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		// khai báo session
		HttpSession session = request.getSession(); 

		String sql = "SELECT * FROM taikhoan WHERE tentaikhoan = '"+request.getParameter("user-name")+"' OR email = '"+request.getParameter("user-email")+"' ";
		if(!dao.checkAcc(sql)) { 
			String acc[] = new String[5];
			acc[0] = request.getParameter("user-name");
			acc[1] = request.getParameter("user-password");
			acc[2] = request.getParameter("user-passwordcf");
			acc[3] = request.getParameter("user-email");
			acc[4] = request.getParameter("user-view");
			//	Sao chép lại mảng set value khi load trang nếu xảy ra lỗi
			String[] move = Arrays.copyOf(acc, 5);
			//	Gọi hàm kiểm tra lỗi 
			Validator(acc);
			int count = 0;
			for (int i = 0; i < acc.length; i++) {
				if(!acc[i].equals("")) {
					session.setAttribute("acc"+i, acc[i]);
					count++;
				}
			} 
			if(count == 0) {
				//Xử lý thêm tài khoản mới 
				Users users = new Users(); 
				users.setTentaikhoan(request.getParameter("user-name"));
				users.setEmail(request.getParameter("user-email"));
				users.setHinhanh("avatar.png");
				users.setMatkhau(encryption(request.getParameter("user-password")));
				users.setPhanquyen("user");
				users.setTenhienthi(request.getParameter("user-view"));  
				String mes = "";
				if(dao.AddAccount(users)) { 
					// Nếu thêm thành công tài khoản mới trả về login
					mes = "Đăng ký thành công tài khoản mới. Vui lòng đăng nhập."; 
					session.setAttribute("SingupSuccess", mes);  
					response.sendRedirect("login.jsp");
				}
				else {
					mes = "Lỗi phát sinh từ hệ thống, vui lòng quay lại sau."; 
					session.setAttribute("SingupError", mes); 
					response.sendRedirect("register.jsp");
				} 
				 
			}
			else {
				session.setAttribute("move", move);
				response.sendRedirect("register.jsp");
			}
		}
		else {
			// Nếu tồn tại email hoặc tài khoản thì ném ra 1 session
			String mes = "Tài khoản hoặc email đã tồn tại!"; 
			session.setAttribute("AcccExists", mes);  
			response.sendRedirect("register.jsp");
		}  

	}
	//Kiểm tra lỗi
	private String[] Validator(String acc[]) { 
		//	Kiểm tra tên tài khoản
		Pattern pattern; 
		final String USERNAME_PATTERN = "^[A-Za-z0-9_]{3,20}$"; 
		final String PASSWORD_PATTERN = "^[A-Za-z0-9]{3,30}$";  
		final String VIEWNAME_PATTERN = ".{3,20}";  
		//	Kiểm tra tên tài khoản
		pattern = Pattern.compile(USERNAME_PATTERN);
		if(pattern.matcher(acc[0]).matches()) {
			acc[0] = "";
		}
		else {
			acc[0] = "Tài khoản từ 3 đến 20 kí tự và không chứa kí tự đặt biệt";
		}
		// Kiểm tra trùng mật khẩu 
		if(acc[1].equals(acc[2])) {
			acc[2] = "";
		}
		else {
			acc[2] = "Mật khẩu chưa khớp";
		}
		//	Kiểm tra mật khẩu
		pattern = Pattern.compile(PASSWORD_PATTERN);
		if(pattern.matcher(acc[1]).matches()) {
			acc[1] = "";
		}
		else {
			acc[1] = "Mật khẩu từ 3 đến 30 kí tự bao gồm chữ và số";
		} 
		//	Kiểm tra tên hiển thị
		pattern = Pattern.compile(VIEWNAME_PATTERN);
		if(pattern.matcher(acc[4]).matches()) {
			acc[4] = "";
		}
		else {
			acc[4] = "Tên hiển thị từ 3 đến 20 kí tự";
		}
		// Xét lại giá trị lỗi email
		acc[3] = "";
		return acc;
	}

	// Code mã hóa mật khẩu
	public static String encryption(String str) {
		byte[] defaultBytes = str.getBytes();
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(defaultBytes);
			byte messageDigest[] = algorithm.digest();
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < messageDigest.length; i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			str = hexString + "";
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return str;
	}

}
