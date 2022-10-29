package Servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.BlogsControl;
import Objects.Blogs;

/**
 * Servlet implementation class BlogDelete
 */
@WebServlet(description = "delete", urlPatterns = { "/admin/pages/blog/delete" })
public class BlogDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BlogDelete() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Blogs blog = new BlogsControl().getFindWithId(id);

		// Đường dẫn tuyệt đối tới thư mục gốc của web app.
		String appPath = request.getServletContext().getRealPath("");
		appPath = appPath.replace('\\', '/');

		// Thư mục để save file tải lên.
		String fullSavePath = null;
		if (appPath.endsWith("/")) {
			fullSavePath = appPath + "assets/img/blog/";
		} else {
			fullSavePath = appPath + "/" + "assets/img/blog/";
		}

		String fileName = blog.getHinhanh();

		File file = new File(fullSavePath, fileName);
		// System.out.println(file.getPath());

		boolean check = new BlogsControl().getDelData(id);
		if (check) {
			HttpSession session = request.getSession();
			session.setAttribute("Delete", "Success");
			session.setMaxInactiveInterval(15);
			if (file.delete()) {
				// System.out.println("đã xóa file: " + file.getName());
			} else {
				// System.out.println("Xóa file thất bại.");
			}
			response.sendRedirect("list");
		} else {

		}
	}

}
