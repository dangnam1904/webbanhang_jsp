package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Control.DetailProductsControl;
import Objects.DetailProducts;

/**
 * Servlet implementation class DetailProductAdd
 */
@WebServlet(description = "Add", urlPatterns = { "/admin/pages/detailproduct/add" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB

public class DetailProductAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DetailProductAdd() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long id_sanpham = Long.valueOf(request.getParameter("id_sanpham"));
		request.setAttribute("id_sanpham", id_sanpham);
		RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long id_sanpham = Long.valueOf(request.getParameter("id_sanpham"));
		DetailProducts detail = new DetailProducts();
		detail.setId_sanPham(id_sanpham);
		
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
				fullSavePath = appPath + "assets/img/shop/DetailProduct/";
			} else {
				fullSavePath = appPath + "/" + "assets/img/shop/DetailProduct/";
			}

			File file = new File(fullSavePath, fileName);
//			System.out.println(file.getPath());

			try {
				Files.copy(fileContent, file.toPath());
			} catch (Exception e) {

			}
		}
		
		detail.setAnhChiTiet(fileName);
		DetailProductsControl detailControl = new DetailProductsControl();
		boolean check = detailControl.getAddData(detail);
		 if (check) {
		 HttpSession session = request.getSession();
		 session.setAttribute("Add", "Success");
		 session.setMaxInactiveInterval(15);
		 response.sendRedirect("list?id=" + id_sanpham);
		 } else {
		
		 }
		
		
	}

}
