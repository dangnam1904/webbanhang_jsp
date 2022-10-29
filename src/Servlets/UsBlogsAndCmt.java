package Servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.CommentsControl;
import Control.UserControl;
import Objects.Comments;
import Objects.Users;


@WebServlet("/blog_cmt")
public class UsBlogsAndCmt extends HttpServlet { 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String textcmt = request.getParameter("cmt");
		Long id_blog = Long.parseLong(request.getParameter("id_blog"));
		Long id_us = Long.parseLong(request.getParameter("id_user"));
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date(); 
		Comments comment = new Comments();

		comment.setId_baiviet(id_blog);
		comment.setId_taikhoan(id_us);
		comment.setNoidung(textcmt);
		comment.setNgayDang(dateFormat.format(date)); 
		CommentsControl commentControl = new CommentsControl();
		UserControl UsersControl = new UserControl();
		if(commentControl.getAddData(comment)) {
			String html = "";
			for (Comments lscmt : commentControl.getListCommnetsWithID_BaiViet(id_blog)) {
				html += "<div class=\"news-allreply\">"; 
				Long id_uscmt = lscmt.getId_taikhoan();
				Users us = UsersControl.getFindById(id_uscmt); 
				html += "<a href=\"#\"><img "+
						"src=\"../assets/img/testimonial/"+us.getHinhanh()+"\" alt=\"\"></a> </div>"+
						"<div class=\"blog-img-details\">"+
						"<div class=\"blog-title\">"+
						"<div class=\"blog-title-1\">"+
						"<h3>"+us.getTenhienthi()+"</h3>"+
						"<span><i class=\"fa fa-calendar\"></i> "+lscmt.getNgayDang()+"</span>"+
						"</div> </div>"+
						"<p class=\"p-border\" id=\"contentcmt\">"+lscmt.getNoidung()+"</p> </div>"
						;  
			}
			response.getWriter().write(html);
		}
		else {
		}

	} 
}
