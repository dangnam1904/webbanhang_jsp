package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.ProductsControl;
import Objects.Products;

/**
 * Servlet implementation class BillDetailGetProduct
 */
@WebServlet(description = "getProduct", urlPatterns = { "/admin/pages/bill/getProduct" })
public class BillDetailGetProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BillDetailGetProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String idsp = request.getParameter("idsp");
		Products product = new ProductsControl().getFindWithId(Integer.valueOf(idsp));
		ArrayList<String> result = new ArrayList<>();
		result.add(String.valueOf(Math.round(product.getGiagoc())));
		result.add(String.valueOf(product.getKhuyenmai()));
		response.getWriter().append(result.toString());
	}

}
