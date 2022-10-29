package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Control.CommentsControl;
import Objects.Comments;
import Objects.Users;

/**
 * Servlet implementation class CommentAdd
 */
@WebServlet(description = "CommentAdd", urlPatterns = { "/admin/pages/comment/add" })
public class CommentAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Comments comment = new Comments();
		String idBaiViet = request.getParameter("idBaiViet");
		comment.setId_baiviet(Long.valueOf(idBaiViet));
		comment.setNoidung(request.getParameter("noidung"));
		
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("uslogin");
		long id_user = user.getId();
		comment.setId_taikhoan(id_user);
		
		CommentsControl commentControl = new CommentsControl();
		String str = "";
		if(commentControl.getAddData(comment)) {
			str += "<p style=\"display: none;\">"+ idBaiViet + "</p>";
			str += "<table id=\"bootstrap-data-table\"\r\n" + 
					"			class=\"table table-striped table-bordered\">\r\n" + 
					"			<thead>\r\n" + 
					"				<tr>\r\n" + 
					"					<th>ID</th>\r\n" + 
					"					<th>Tên</th>\r\n" + 
					"					<th>Nội dung</th>\r\n" + 
					"					<th>Ngày bình luận</th>\r\n" + 
					"					<th>Chỉnh sửa</th>\r\n" + 
					"					<th>Xóa</th>\r\n" + 
					"				</tr>\r\n" + 
					"			</thead>\r\n" + 
					"			<tfoot>\r\n" + 
					"				<tr>\r\n" + 
					"					<th>ID</th>\r\n" + 
					"					<th>Tên</th>\r\n" + 
					"					<th>Nội dung</th>\r\n" + 
					"					<th>Ngày bình luận</th>\r\n" + 
					"					<th>Chỉnh sửa</th>\r\n" + 
					"					<th>Xóa</th>\r\n" + 
					"				</tr>\r\n" + 
					"			</tfoot>\r\n" + 
					"			<tbody>";
			ArrayList<Comments> commentList = commentControl.getListCommnetsWithID_BaiViet(Long.valueOf(idBaiViet));
			for (Comments cm : commentList) {
				str += "<tr>\r\n" + 
						"	<td>" + cm.getId() + "</td>\r\n" + 
						"	<td>"+ cm.getTenTaiKhoan() + "</td>\r\n" + 
						"	<td>"+ cm.getNoidung() + "</td>\r\n" + 
						"	<td>"+ cm.getNgayDang() +"</td>\r\n" + 
						"	<td><button class=\"btn btn-success\" onclick=\"EditComment("+ cm.getId() + ", '"+ cm.getNoidung() + "')\"><span><i class=\"fa fa-edit\"></i></span> Sửa</button></td>\r\n" + 
						"	<td><button class=\"btn btn-secondary\" onclick=\"DeleteComment("+ cm.getId() +")\">\r\n" + 
						"		<span><i class=\"fa fa-trash-o\"></i></span> Xóa\r\n" + 
						"	</button></td>\r\n" + 
						"</tr>";
			}
		} else System.out.println("Thất bại");
		
		str += "</tbody>\r\n" + 
				"</table>";
		response.getWriter().write(str);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
