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

import Control.BlogsControl;
import Objects.Blogs;
import Objects.Users;

/**
 * Servlet implementation class BlogList
 */
@WebServlet(description = "List", urlPatterns = { "/admin/pages/blog/list" })
public class BlogList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BlogList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Blogs> list = new BlogsControl().getListBlogs();

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
