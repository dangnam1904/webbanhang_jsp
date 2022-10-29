package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Control.BlogsControl;
import Objects.Blogs;

/**
 * Servlet implementation class BlogEdit
 */
@WebServlet(description = "Edit", urlPatterns = { "/admin/pages/blog/edit" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class BlogEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BlogEdit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		long id = Long.valueOf(request.getParameter("id"));
		Map<String, String> blog_TaiKhoan_ID = new BlogsControl().getBlog_TaiKhoanWithId(id);
		
		request.setAttribute("blog", blog_TaiKhoan_ID);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
		dispatcher.forward(request, response);
		// response.getWriter().append("Served at: " +
		// id).append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		Blogs blog = new Blogs();
		
		long id = Long.valueOf(request.getParameter("id"));
		
		String oldImg = new BlogsControl().getFindWithId(id).getHinhanh();
		
		blog.setId(id);
		blog.setMota(request.getParameter("mota"));
		blog.setNoidung(request.getParameter("noidung"));
		blog.setTieude(request.getParameter("tieude"));
		
		String empty = new String();
		Part filePart = request.getPart("file");
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString().trim();
		InputStream fileContent = filePart.getInputStream();
		if (!fileName.equals(empty)) {
			fileName = new Date().getTime() + fileName;

			// Đường dẫn tuyệt đối tới thư mục gốc của web app.
			String appPath = request.getServletContext().getRealPath("");
			appPath = appPath.replace('\\', '/');

			// Thư mục để save file tải lên.
			String fullSavePath = null;
			if (appPath.endsWith("/")) {
				fullSavePath = appPath + "assets/img/blog/";
			} else {
				fullSavePath = appPath + "/" + "assets/img/blog/";
			}

			File file = new File(fullSavePath, fileName);
			
			if(!oldImg.trim().equals(empty)) {
				File oldFile = new File(fullSavePath, oldImg);
				if(oldFile.delete()) {
//					System.out.println("da xoa file cu");
				} else {
//					System.out.println("ko xoa dc file cu");
				}
			}
			// System.out.println(file.getPath());

			try {
				 Files.copy(fileContent, file.toPath());
			} catch (Exception e) {

			}
		} else {
			fileName = oldImg;
		}

		blog.setHinhanh(fileName);
		boolean check = new BlogsControl().getEditData(blog);
		if (check) {
			HttpSession session = request.getSession();
			session.setAttribute("Edit", "Success");
			session.setMaxInactiveInterval(15);
			response.sendRedirect("list");
		} else {

		}
	}

}
