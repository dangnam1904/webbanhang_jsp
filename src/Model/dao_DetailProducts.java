package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.*;


import Objects.DetailProducts;

public class dao_DetailProducts {
	ConnectToDB conndb;
	Connection con;

	// Phương thức lấy dữ liệu về
	public ArrayList<DetailProducts> SelectDB(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<DetailProducts> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				DetailProducts detail = new DetailProducts();
				detail.setId(rs.getLong("id"));
				detail.setId_sanPham(rs.getLong("id_sanpham"));
				detail.setAnhChiTiet(rs.getString("anhchitiet"));
				// Thêm vào danh sách
				list.add(detail);
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return list;
		} catch (

		SQLException e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức lấy dữ liệu tương ứng với id_sanpham
	public ArrayList<DetailProducts> ListWithProductId(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<DetailProducts> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				DetailProducts detail = new DetailProducts();
				detail.setId(rs.getLong("id"));
				detail.setId_sanPham(rs.getLong("id_sanpham"));
				detail.setAnhChiTiet(rs.getString("anhchitiet"));
				// Thêm vào danh sách
				list.add(detail);
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return list;
		} catch (

		SQLException e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	public boolean AddData(String sql) {
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

	public DetailProducts FindWithId(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo đối tượng lưu giá trị
		DetailProducts detail = new DetailProducts();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				detail.setId(rs.getLong("id"));
				detail.setAnhChiTiet(rs.getString("anhchitiet"));
				detail.setId_sanPham(rs.getLong("id_sanpham"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return detail;
		} catch (Exception e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean EditData(DetailProducts detail, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		// Chuẩn bị 1 prepared statement Cho phép dùng câu lệnh SQL có truyền tham số vào
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, detail.getAnhChiTiet());
			pst.setLong(2, detail.getId());
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}
	
	// Phương thức xóa
		public boolean DelData(long id, String sql) {
			conndb = new ConnectToDB();
			Connection con = (Connection) conndb.OpenConnnect();
			PreparedStatement pst = null;
			// Cho phép truyền câu lệnh SQL có tham số vào
			try {
				pst = con.prepareStatement(sql);
				pst.setLong(1, id);
				pst.executeUpdate();
				conndb.CloseConnect();
				return true;
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			conndb.CloseConnect();
			return false;
		}
}
