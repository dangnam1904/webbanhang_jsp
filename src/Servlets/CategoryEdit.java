package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.CategoryControl;
import Objects.Category;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CategoryEdit
 */
@WebServlet(description = "Edit Category", urlPatterns = { "/admin/pages/category/edit" })
public class CategoryEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CategoryEdit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoryControl categoryControl = new CategoryControl();
		Category category = new Category();

		String id = request.getParameter("id");

		category = categoryControl.getFindWithId(Integer.parseInt(id));
		request.setAttribute("category", category);

		RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
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
		
		String id = request.getParameter("id");
		String tenloai = request.getParameter("tenloai");
		
		Category category = new Category();
		category.setId(Long.parseLong(id));
		category.setTenloai(tenloai);
		
		CategoryControl categoryControl = new CategoryControl();
		
		boolean check = categoryControl.getEditData(category);
		if (check) {
			HttpSession session = request.getSession();
			session.setAttribute("Edit", "Success");
			session.setMaxInactiveInterval(15);
			response.sendRedirect("list");
		} else {
			
		}
	}

}
