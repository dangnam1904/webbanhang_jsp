package Servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.dao_Cart;
import Objects.Bills;
import Objects.BillsDetail;
import Objects.Items;


@WebServlet("/bills")
public class UsBills extends HttpServlet { 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String status = request.getParameter("status");

		// Thông tin của hóa đơn 
		String user_name = request.getParameter("user-name"); 
		String town_ward = request.getParameter("town_ward");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String note = request.getParameter("note");

		dao_Cart dao = new dao_Cart();
		switch (status) {
		case "addbill":
			if(note == null) {
				note = "";
			}
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date(); 
			Bills bill = new Bills();
			bill.setDiachi(address);
			bill.setDienthoai(phone);
			bill.setEmail(email);
			bill.setGhichu(note);
			bill.setHoten(user_name);
			bill.setNgaydat(dateFormat.format(date));
			bill.setSonha(town_ward);
			bill.setTrangthai(0);
			dao.AddBill(bill);

			String sql ="Select * from hoadon";
			Long id_bill; 
			if(dao.SelectBills(sql).size() != 0) {
				int max = dao.SelectBills(sql).size();
				id_bill =  dao.SelectBills(sql).get(max-1).getId(); 
			}
			else {
				id_bill = (long) 0; 
			}

			dao_Cart cart = (dao_Cart) session.getAttribute("cart"); 
			for (Entry<Long, Items> list : cart.getCartItems().entrySet()) {
				BillsDetail billdetail = new BillsDetail();
				billdetail.setId_hoadon(id_bill);
				billdetail.setId_sanpham(list.getValue().getProducts().getId());
				billdetail.setSoluong(list.getValue().getQuantity());
				dao.AddBillDetail(billdetail);
			}
			session.removeAttribute("cart"); 
			session.setAttribute("paid", "Đặt hàng thành công, mời bạn tiếp tục mua sắm!");
			response.sendRedirect("pages/shop-page.jsp?id_product=0"); 
			break;
		default:
			break;
		}  
	}

}
