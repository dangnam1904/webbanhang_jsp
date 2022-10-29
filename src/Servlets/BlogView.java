package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.BlogsControl;
import Control.CommentsControl;
import Objects.Comments;

/**
 * Servlet implementation class BlogView
 */
@WebServlet(description = "View", urlPatterns = { "/admin/pages/blog/view" })
public class BlogView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		long id = Long.valueOf(request.getParameter("id"));
		
		Map<String, String> blog = new BlogsControl().getBlog_TaiKhoanWithId(id);
		request.setAttribute("blog", blog);
		
		CommentsControl commentControl = new CommentsControl();
		ArrayList<Comments> commentList = commentControl.getListCommnetsWithID_BaiViet(id);
		request.setAttribute("comment", commentList);
		
		HttpSession session = request.getSession();
		if (session.getAttribute("uslogin") != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("view.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("../../../pages/login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
