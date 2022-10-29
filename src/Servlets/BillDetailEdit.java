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

import Control.BillDetailsControl;
import Control.ProductsControl;
import Objects.BillDetailsFull;
import Objects.BillsDetail;
import Objects.Products;

/**
 * Servlet implementation class BillDetailEdit
 */
@WebServlet(description = "Edit", urlPatterns = { "/admin/pages/bill/editdetail" })
public class BillDetailEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BillDetailEdit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String idHoaDon = request.getParameter("idHoaDon");
		BillDetailsFull billDetail = new BillDetailsControl().getFindById(Long.valueOf(id));
		request.setAttribute("billDetail", billDetail);
		ArrayList<Products> product = new ProductsControl().getListProducts();

		request.setAttribute("product", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("editDetail.jsp");
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
		
		String idHoaDon = request.getParameter("idHoaDon");
		String id = request.getParameter("id");
		
		BillsDetail billDetail = new BillsDetail();
		billDetail.setId(Long.valueOf(id));
		billDetail.setId_sanpham(Long.valueOf(request.getParameter("id_sanpham")));
		billDetail.setId_hoadon(Long.valueOf(idHoaDon));
		billDetail.setSoluong(Integer.valueOf(request.getParameter("soluong")));
		if (new BillDetailsControl().getEditData(billDetail)) {
			request.setAttribute("idHoaDon", idHoaDon);
			HttpSession session = request.getSession();
			session.setAttribute("Edit", "Success");
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetail");
			dispatcher.forward(request, response);
		}
	}

}
