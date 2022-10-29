package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.DetailProductsControl;
import Control.ProductsControl;
import Objects.DetailProducts;
import Objects.Products;

/**
 * Servlet implementation class DetailProductList
 */
@WebServlet(description = "DetailProductList", urlPatterns = { "/admin/pages/detailproduct/list" })
public class DetailProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DetailProductList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DetailProductsControl detailControl = new DetailProductsControl();
		long id =  Long.parseLong(request.getParameter("id"));
		ArrayList<DetailProducts> list = detailControl.getListWithProductId(id);
		ProductsControl productControl = new ProductsControl();
		Products product = productControl.getFindWithId((int)id);
		request.setAttribute("product", product);
		request.setAttribute("list", list);
		HttpSession session = request.getSession();
		if (session.getAttribute("uslogin") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("../../../pages/login.jsp");
		}
	}

}
