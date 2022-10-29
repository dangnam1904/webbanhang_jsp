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

/**
 * Servlet implementation class BillDetailDelete
 */
@WebServlet(description = "Delete", urlPatterns = { "/admin/pages/bill/deletedetail" })
public class BillDetailDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BillDetailDelete() {
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
		long id = Long.valueOf(request.getParameter("id"));
		request.setAttribute("idHoaDon", idHoaDon);
		
		boolean check = new BillDetailsControl().getDelData(id);
		
		if (check) {
			HttpSession session = request.getSession();
			ArrayList<BillDetailsFull> billFull = new BillDetailsControl().getFindByIdHoaDon(Long.valueOf(idHoaDon));
			if(billFull.size() == 0) {
				if(new BillsControl().getEditDataStatus(3, Long.valueOf(idHoaDon))) {
					
				}
				session.setAttribute("Empty", "Success");
				response.sendRedirect("list");
			} else {
				session.setAttribute("Delete", "Success");
				RequestDispatcher dispatcher = request.getRequestDispatcher("viewdetail");
				dispatcher.forward(request, response);
			}
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
