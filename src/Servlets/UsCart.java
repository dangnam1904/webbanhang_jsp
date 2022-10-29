package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.dao_Cart;
import Model.dao_Products;
import Objects.Items;
import Objects.Products;

@WebServlet("/cart")
public class UsCart extends HttpServlet { 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		doPost(request, response);
	}
	dao_Products dao = new dao_Products();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String status = request.getParameter("status");
		String id_product = request.getParameter("id_product"); 
		String quantity_string = request.getParameter("quantity");

		dao_Cart cart = (dao_Cart) session.getAttribute("cart");

		try {
			Long idProduct = Long.parseLong(id_product); //Chuyển mã từ request kiểu string sang long
			String sql = "Select * from sanpham Where id = "+idProduct+" ";
			// Lấy ra thông tin của sản phẩm từ db theo mã sản phẩm
			Products product = dao.FindWithId(sql); 
			// Viết menu xử lý các trạng thái 
			switch (status) {
			case "add":
				if(cart.getCartItems().containsKey(id_product)) {
					cart.insertToCart(idProduct, new Items(product, cart.getCartItems().get(idProduct).getQuantity()));
				}
				else {
					cart.insertToCart(idProduct, new Items(product, 1));
				} 
				break; 
			case "remove":
				cart.removeToCart(idProduct);
				break;
			case "edit":
				int quantity = Integer.parseInt(quantity_string);	 
				cart.updateToCart(idProduct, quantity, new Items(product, cart.getCartItems().get(idProduct).getQuantity()));
				break; 
			default:
				break;
			} 

		} catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("cart", cart);
		response.sendRedirect(request.getHeader("referer"));
	}

}
