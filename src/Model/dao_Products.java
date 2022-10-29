package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.NumberFormat;
import java.util.ArrayList;

import com.mysql.jdbc.*;
 
import Objects.Products;

public class dao_Products {
	ConnectToDB conndb;
	Connection con;

	// Phương thức lấy dữ liệu về
	public ArrayList<Products> SelectDB(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Products> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Products products = new Products();
				products.setId(rs.getLong("id"));
				products.setAnhchinh(rs.getString("anhchinh"));
				products.setGiagoc(rs.getDouble("giagoc"));
				products.setId_loaisanpham(rs.getLong("id_loaisp"));
				products.setKhuyenmai(rs.getInt("khuyenmai"));
				products.setLuotthich(rs.getInt("luotthich"));
				products.setMota(rs.getString("mota"));
				products.setTensanpham(rs.getString("tensanpham"));
				products.setTinhtrang(rs.getInt("tinhtrang"));
				// Thêm vào danh sách
				list.add(products);
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

//--- Xong phần giao diện người dùng ---//
	
	public boolean AddData(Products product, String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();

		PreparedStatement pst = null;
		// Cho phép truyền câu lệnh SQL có tham số vào
		try {
			pst = con.prepareStatement(sql);
			pst.executeUpdate();

			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		conndb.CloseConnect();
		return false;
	}

	public Products FindWithId(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo đối tượng lưu giá trị
		Products product = new Products();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				product.setId(rs.getLong("id"));
				product.setTensanpham(rs.getString("tensanpham"));
				product.setMota(rs.getString("mota"));
				product.setGiagoc(rs.getDouble("giagoc"));
				product.setKhuyenmai(rs.getInt("khuyenmai"));
				product.setAnhchinh(rs.getString("anhchinh"));
				product.setTinhtrang(rs.getInt("tinhtrang"));
				product.setLuotthich(rs.getInt("luotthich"));
				product.setId_loaisanpham(rs.getLong("id_loaisp"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return product;
		} catch (SQLException e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức xóa
	public boolean DelData(int id, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
		// Cho phép truyền câu lệnh SQL có tham số vào
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		conndb.CloseConnect();
		return false;
	}

	public boolean EditData(Products product, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		// Chuẩn bị 1 prepared statement Cho phép dùng câu lệnh SQL có truyền tham số vào
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, product.getTensanpham());
			pst.setString(2, product.getMota());
			pst.setDouble(3, product.getGiagoc());
			pst.setInt(4, product.getKhuyenmai());
			pst.setString(5, product.getAnhchinh());
			pst.setInt(6, product.getTinhtrang());
			pst.setInt(7, product.getLuotthich());
			pst.setLong(8, product.getId_loaisanpham());
			pst.setLong(9, product.getId());

			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}
	public static void main(String[] args) {
		dao_Products dao = new dao_Products();
		for (Products ls : dao.SelectDB("Select * From sanpham")) {
			NumberFormat fmt = NumberFormat.getCurrencyInstance();
			double price = ls.getGiagoc();
			int sale = ls.getKhuyenmai();
			float price_sale = (float) (price - ((price * sale) / 100));
			System.out.println(fmt.format(price_sale));
		}
		System.out.println("Check ok!");

	}

}
