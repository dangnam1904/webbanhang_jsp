package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.UserControl;
import Objects.Users;

/**
 * Servlet implementation class AdProfileEditDisplayName
 */
@WebServlet(description = "EditDisplayName", urlPatterns = { "/admin/pages/profile/editDislayName" })
public class AdProfileEditDisplayName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdProfileEditDisplayName() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		String displayName = request.getParameter("displayName");
		String id = request.getParameter("id");
		if (new UserControl().getEditAccountDisplayName(displayName, Long.valueOf(id))) {
			HttpSession session = request.getSession();
			Users user = (Users) session.getAttribute("uslogin");
			user.setTenhienthi(displayName);
			session.removeAttribute("uslogin");
			session.setAttribute("uslogin", user);
			// System.out.println("ok");
		} else {
			System.out.println("that bai");
		}
		response.getWriter().append("");
	}

}
