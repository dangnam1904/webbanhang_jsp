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
 * Servlet implementation class DetailProductEdit
 */
@WebServlet(description = "Edit", urlPatterns = { "/admin/pages/detailproduct/edit" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class DetailProductEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DetailProductEdit() {
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

		DetailProductsControl detailControl = new DetailProductsControl();
		DetailProducts detail = detailControl.getFindWithId(id);
		request.setAttribute("detail", detail);

		RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long id = Long.valueOf(request.getParameter("id"));

		DetailProductsControl detailControl = new DetailProductsControl();
		String oldImg = detailControl.getFindWithId(id).getAnhChiTiet();
		long id_sanpham = detailControl.getFindWithId(id).getId_sanPham();

		DetailProducts detail = new DetailProducts();
		
		detail.setId(id);
		
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

			if (!oldImg.trim().equals(empty)) {
				File oldFile = new File(fullSavePath, oldImg);
				if(oldFile.delete()) {
//					System.out.println("da xoa file cu");
				} else {
//					System.out.println("ko xoa dc file cu");
				}
			}

			try {
				Files.copy(fileContent, file.toPath());
			} catch (Exception e) {

			}
		} else {
			fileName = oldImg;
		}

		detail.setAnhChiTiet(fileName);
		boolean check = detailControl.getEditData(detail);
		if (check) {
			HttpSession session = request.getSession();
			session.setAttribute("Edit", "Success");
			session.setMaxInactiveInterval(15);
			response.sendRedirect("list?id=" + id_sanpham);
		} else {

		}

	}

}
