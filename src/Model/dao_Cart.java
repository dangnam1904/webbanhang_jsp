package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import com.mysql.jdbc.*;


import Objects.Bills;
import Objects.BillsDetail;
import Objects.Items;
import Objects.Products;
import Objects.Users;

public class dao_Cart {

	private HashMap<Long, Items> cartItems;

	public HashMap<Long, Items> getCartItems() {
		return cartItems;
	}

	public void setCartItems(HashMap<Long, Items> cartItems) {
		this.cartItems = cartItems;
	}

	public dao_Cart(){
		cartItems = new HashMap<>();
	}

	public dao_Cart(HashMap<Long, Items> cartItems) { 
		this.cartItems = cartItems;
	}

	//	Phương thức thêm vào giỏ hàng
	public void insertToCart(Long key, Items item) {
		boolean check = cartItems.containsKey(key);
		//	Sản phẩm tồn tại thì số lượng +1, không thì thêm mới
		if(check) {
			int quantity_old = item.getQuantity();
			item.setQuantity(quantity_old+1);
			cartItems.put(key, item);
		}
		else {
			cartItems.put(key, item);
		}
	}
	//	Phương thức sửa số lượng giỏ hàng
	public void updateToCart(Long key, int quantity, Items item) {
		boolean check = cartItems.containsKey(key);
		//	Sản phẩm tồn tại thì số lượng củ cộng số lượng mới 
		if(check) {
			int quantity_old = item.getQuantity();
			item.setQuantity(quantity);
			cartItems.put(key, item);
		} 
	}

	//	Phương thức xóa giỏ hàng
	public void removeToCart(Long key) {
		boolean check = cartItems.containsKey(key);
		// Nếu tồn tại theo id thì xóa bỏ
		if(check) {
			cartItems.remove(key);
		}
	}
	//	Phương thức đếm số lượng
	public int countItems() {
		// Trả về số lượng phẩm phẩm trong giỏ hàng
		return cartItems.size();
	}

	DecimalFormat numformat = new DecimalFormat("#,###,###");
	// Tổng giá tiền
	public String totalCart() { 
		double count = 0;
		for (Entry<Long, Items> list : cartItems.entrySet()) {
			double cost = list.getValue().getProducts().getGiagoc();
			int discount = list.getValue().getProducts().getKhuyenmai(); 
			double total = cost -(cost*discount)/100; 
			count += total * list.getValue().getQuantity(); 
		}
		String price_nb = numformat.format(count);
		return price_nb;
	} 
	//	Phần cho hóa đơn
	//	Phương thức thêm một hóa đơn mới
	ConnectToDB conndb;
	Connection con;
	public boolean AddBill(Bills bill) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect(); 
		String sql = "INSERT INTO hoadon VALUES (default,?,?,?,?,?,?,?,?) ";
		PreparedStatement pst = null;
		try { 
			pst = con.prepareCall(sql); 
			pst.setString(1, bill.getHoten()); 
			pst.setString(2, bill.getSonha()); 
			pst.setString(3, bill.getDiachi()); 
			pst.setString(4, bill.getDienthoai()); 
			pst.setString(5, bill.getEmail()); 
			pst.setString(6, bill.getGhichu()); 
			pst.setInt(7, bill.getTrangthai()); 
			pst.setString(8, bill.getNgaydat().toString());  
			pst.executeUpdate();
			conndb.CloseConnect(); 
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}
	// Phương thức lấy dữ liệu hóa đơn về
	public ArrayList<Bills> SelectBills(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Bills> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Bills bill= new Bills();
				bill.setId(rs.getLong("id")); 
				bill.setDiachi(rs.getString("diachi"));
				bill.setDienthoai(rs.getString("dienthoai"));
				bill.setEmail(rs.getString("email"));
				bill.setGhichu(rs.getString("ghichu"));
				bill.setHoten(rs.getString("hoten"));
				bill.setNgaydat(rs.getString("ngaydat"));
				bill.setSonha(rs.getString("sonha"));
				bill.setTrangthai(rs.getInt("trangthai"));
				// Thêm vào danh sách
				list.add(bill);
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}
	// Phương thức thêm dữ liệu cho chi tiết hóa đơn
	public boolean AddBillDetail(BillsDetail billdetail) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect(); 
		String sql = "INSERT INTO chitiethoadon VALUES (default,?,?,?)";
		PreparedStatement pst = null;
		try { 
			pst = con.prepareCall(sql); 
			pst.setInt(1, billdetail.getSoluong()); 
			pst.setLong(2, billdetail.getId_hoadon()); 
			pst.setLong(3, billdetail.getId_sanpham());   
			pst.executeUpdate();
			conndb.CloseConnect(); 
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}
}
