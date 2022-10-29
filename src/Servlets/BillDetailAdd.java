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
import Objects.BillsDetail;
import Objects.Products;


@WebServlet(description = "Add", urlPatterns = { "/admin/pages/bill/adddetail" })
public class BillDetailAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BillDetailAdd() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idHoaDon = request.getParameter("idHoaDon");
		request.setAttribute("idHoaDon", idHoaDon);

		ArrayList<Products> product = new ProductsControl().getListProducts();
		
		request.setAttribute("product",	product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("addDetail.jsp");
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
		
		BillsDetail billDetail = new BillsDetail();
		billDetail.setId_sanpham(Long.valueOf(request.getParameter("id_sanpham")));
		billDetail.setId_hoadon(Long.valueOf(request.getParameter("idHoaDon")));
		billDetail.setSoluong(Integer.valueOf(request.getParameter("soluong")));
		
		if(new BillDetailsControl().getAddData(billDetail)) {
			HttpSession session = request.getSession();
			session.setAttribute("Add", "Success");
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetail");
			dispatcher.forward(request, response);
		}
	}

}
