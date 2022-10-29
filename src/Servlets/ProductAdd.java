package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
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

import Control.CategoryControl;
import Control.ProductsControl;
import Objects.Category;
import Objects.Products;

/**
 * Servlet implementation class ProductAdd
 */
@WebServlet(description = "Add Product", urlPatterns = { "/admin/pages/product/add" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 50, // 50MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB

public class ProductAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductAdd() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoryControl categoryControl = new CategoryControl();
		ArrayList<Category> listCategory = categoryControl.getListCategory();
		request.setAttribute("listCategory", listCategory);
		RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
		dispatcher.forward(request, response);
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

		Products product = new Products();
		product.setTensanpham(request.getParameter("tensanpham"));
		product.setId_loaisanpham(Long.parseLong(request.getParameter("id_loaisanpham")));
		product.setMota(request.getParameter("mota"));

		try {
			product.setGiagoc(Double.parseDouble(request.getParameter("giagoc")));
		} catch (Exception e) {
			product.setGiagoc(0);
		}

		try {
			product.setKhuyenmai(Integer.parseInt(request.getParameter("khuyenmai")));
		} catch (Exception e) {
			product.setKhuyenmai(0);
		}

		product.setLuotthich(0);

		product.setTinhtrang(Integer.parseInt(request.getParameter("noibat")));

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
				fullSavePath = appPath + "assets/img/shop/product/";
			} else {
				fullSavePath = appPath + "/" + "assets/img/shop/product/";
			}

			File file = new File(fullSavePath, fileName);
//			System.out.println(file.getPath());

			try {
				Files.copy(fileContent, file.toPath());
			} catch (Exception e) {

			}
		}

		product.setAnhchinh(fileName);

		ProductsControl productControl = new ProductsControl();
		boolean check = productControl.getAddData(product);
		if (check) {
			HttpSession session = request.getSession();
			session.setAttribute("Add", "Success");
			session.setMaxInactiveInterval(15);
			response.sendRedirect("list");
		} else {

		}
	}

}
