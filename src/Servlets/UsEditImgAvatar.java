package Servlets;

//import java.awt.desktop.UserSessionEvent;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Control.UserControl;
import Model.dao_Users;
import Objects.Users;

@WebServlet("/pages/user-avatar")  
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UsEditImgAvatar extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

		UserControl us = new UserControl();
		String user_name = request.getParameter("user-name");
		System.out.println(user_name);
		Part part = request.getPart("file");
		String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString().trim();

		//	Ảnh củ
		String oldImg = us.getUserWithUserName(user_name).getHinhanh();
		InputStream fileContent = part.getInputStream();

		fileName = new Date().getTime() + fileName;

		// Đường dẫn tuyệt đối tới thư mục gốc của web app.
		String appPath = request.getServletContext().getRealPath("");
		appPath = appPath.replace('\\', '/');

		// Thư mục để lưu ảnh tải lên.
		String fullSavePath = null;
		// Nếu cuối cùng không là / thì thêm vào
		if (appPath.endsWith("/")) {
			fullSavePath = appPath + "assets/img/testimonial/";
		} else {
			fullSavePath = appPath + "/" + "assets/img/testimonial/";
		}  
		// Xóa đi file củ
		File oldFile = new File(fullSavePath, oldImg);
		if(oldFile.delete()){
			
		}
		// sao chép hình ảnh vào thư mục dự án
		File file = new File(fullSavePath, fileName);
		try {
			Files.copy(fileContent, file.toPath());
		} catch (Exception e) {

		}
		// Cập nhật lại tài khoản và session user (dùng chung phương thức checklogin)
		dao_Users dao = new dao_Users(); 
		Users user = new Users();
		user.setHinhanh(fileName);
		user.setTentaikhoan(user_name);  
		String mes;
		HttpSession session = request.getSession();
		if(dao.EditAccountAvt(user)) {
			user = us.getUserWithUserName(user_name); 
			mes = "Cập nhật thành công thông ảnh đại diện."; 
			session.setAttribute("uslogin", user); 
			session.setAttribute("SussecfulEditAcc", mes);  
			response.sendRedirect("user-profile.jsp");
		}
		else {
			mes = "Hệ thống quá tải, vui lòng quay lại sau."; 
			session.setAttribute("SingupError", mes); 
			response.sendRedirect("user-profile.jsp");
		}


	}
}
