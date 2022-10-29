package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Control.BillsControl;
import Objects.Bills;

/**
 * Servlet implementation class BillStatus
 */
@WebServlet(description = "Thay doi trang thai", urlPatterns = { "/admin/pages/bill/status" })
public class BillStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
//		String id = request.getParameter("id");
//		String trangthai = request.getParameter("trangthai");
//		
//		if(new BillsControl().getEditDataStatus(Integer.valueOf(trangthai), Long.valueOf(id))) {
//			response.getWriter().append("1");
//		} else response.getWriter().append("0");
		
		String id = request.getParameter("id");
		String trangthai = request.getParameter("trangthai");
		
		if(new BillsControl().getEditDataStatus(Integer.valueOf(trangthai), Long.valueOf(id))) {
			ArrayList<Bills> data = new BillsControl().getSelectPayment();
			response.getWriter().append(data.toString());
		} else response.getWriter().append("0");
	}

}
