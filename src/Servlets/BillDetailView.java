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
import Control.BillsControl;
import Objects.BillDetailsFull;
import Objects.Bills;

/**
 * Servlet implementation class BillDetailView
 */
@WebServlet(description = "View", urlPatterns = { "/admin/pages/bill/viewdetail" })
public class BillDetailView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BillDetailView() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String idHoaDon = request.getParameter("idHoaDon");
		String huy = request.getParameter("huy");
		String thanhtoan = request.getParameter("thanhtoan");

		ArrayList<BillDetailsFull> list = new BillDetailsControl().getFindByIdHoaDon(Long.valueOf(idHoaDon));
		request.setAttribute("list", list);
		request.setAttribute("idHoaDon", idHoaDon);
		HttpSession session = request.getSession();
		if (session.getAttribute("uslogin") != null) {
			if(huy == null && thanhtoan == null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetail.jsp");
				dispatcher.forward(request, response);
			} else {
				if(huy == null) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetailpayment.jsp");
					dispatcher.forward(request, response);
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetaildestroy.jsp");
					dispatcher.forward(request, response);
				}
			}
			
		} else {
			response.sendRedirect("../../../pages/login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
