package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.UserControl;

/**
 * Servlet implementation class AdProfileEditPassword
 */
@WebServlet(description = "Edit pass", urlPatterns = { "/admin/pages/profile/editPassword" })
public class AdProfileEditPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdProfileEditPassword() {
		super();
		// TODO Auto-generated constructor stub
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
		
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		
		if(new UserControl().getEditAccountPassword(password, Long.valueOf(id))) {
//			System.out.println("ok");
		} else System.out.println("Thất bại");
		
	}

}
