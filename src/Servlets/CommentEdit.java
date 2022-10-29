package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Control.CommentsControl;
import Control.UserControl;
import Objects.Comments;
import Objects.Users;

/**
 * Servlet implementation class CommentEdit
 */
@WebServlet(description = "Edit", urlPatterns = { "/admin/pages/comment/edit" })
public class CommentEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CommentEdit() {
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

		Comments comment = new Comments();
		String idComment = request.getParameter("idComment");
		comment.setId(Long.valueOf(idComment));

		String content = request.getParameter("content");
		comment.setNoidung(content);

		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("uslogin");
		long id_user = user.getId();
		comment.setId_taikhoan(id_user);

		CommentsControl commentControl = new CommentsControl();
		JSONObject data = new JSONObject();

		if (commentControl.getEditData(comment)) {
			
		} else
			System.out.println("Sua that bai");

		response.getWriter().write("");
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
