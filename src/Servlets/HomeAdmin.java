package Servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.BillsControl;
import Control.BlogsControl;
import Control.UserControl;
import Model.dao_Users;
import Objects.Users;

/**
 * Servlet implementation class HomeAdmin
 */
@WebServlet(description = "HomeAdmin", urlPatterns = { "/admin/pages/home/" })
public class HomeAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeAdmin() {
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

		long countDatHang = new BillsControl().getSelectDatHang().size();
		request.setAttribute("countDatHang", countDatHang);
		long countDangShip = new BillsControl().getSelectDangShip().size();
		request.setAttribute("countDangShip", countDangShip);
		long sumUser = new UserControl().getSelectDB().size();
		request.setAttribute("sumUser", sumUser);
		long sumBlog = new BlogsControl().getListBlogs().size();
		request.setAttribute("sumBlog", sumBlog);

		// Lấy ngày hiện tại
		LocalDate now = LocalDate.now();
		// Lấy ngày cách đây 30 ngày
		LocalDate last30Days = now.minusDays(30);

//		String[] dataChart = new BillsControl().getSelectDB30Days(last30Days.toString(), now.toString());
//		
//		request.setAttribute("valueNgay", dataChart[0]);
//		request.setAttribute("valueTongTien", dataChart[1]);

		HttpSession session = request.getSession();

		if (session.getAttribute("uslogin") != null) {
			if(session.getAttribute("admin") != null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendRedirect("../../../pages/login.jsp");
			}
		}else {
			response.sendRedirect("../../../pages/login.jsp");
		}
	}

}
