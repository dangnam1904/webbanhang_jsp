package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.*;


import Objects.Blogs;
import Objects.Category;

public class dao_Blogs {
	ConnectToDB conndb;

	public ArrayList<Blogs> SelectDB(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Blogs> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Blogs blogs = new Blogs();
				blogs.setId(rs.getLong("id"));
				blogs.setId_taikhoan(rs.getLong("id_taikhoan"));
				blogs.setHinhanh(rs.getString("hinhanh"));
				blogs.setMota(rs.getString("mota"));
				blogs.setNoidung(rs.getString("noidung"));
				blogs.setTieude(rs.getString("tieude"));
				blogs.setNgayDang(rs.getString("ngaydang"));
				blogs.setNgaySua(rs.getString("ngaysua"));
				// Thêm vào danh sách
				list.add(blogs);
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

	public Blogs FindWithId(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo đối tượng lưu giá trị
		Blogs blog = new Blogs();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				blog.setId(rs.getLong("id"));
				blog.setTieude(rs.getString("tieude"));
				blog.setMota(rs.getString("mota"));
				blog.setNoidung(rs.getString("noidung"));
				blog.setHinhanh(rs.getString("hinhanh"));
				blog.setId_taikhoan(rs.getLong("id_taikhoan"));
				blog.setNgayDang(rs.getString("ngaydang"));
				blog.setNgaySua(rs.getString("ngaysua"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return blog;
		} catch (Exception e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	public Map<String, String> Blog_TaiKhoanWithId(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();

		Map<String, String> blog_TaiKhoan = new HashMap<String, String>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				blog_TaiKhoan.put("id", String.valueOf(rs.getLong("id")));
				blog_TaiKhoan.put("tieude", rs.getString("tieude"));
				blog_TaiKhoan.put("mota", rs.getString("mota"));
				blog_TaiKhoan.put("noidung", rs.getString("noidung"));
				blog_TaiKhoan.put("hinhanh", rs.getString("hinhanh"));
				blog_TaiKhoan.put("hinhdaidien", rs.getString("hinhdaidien"));
				blog_TaiKhoan.put("ngaydang", rs.getString("ngaydang"));
				blog_TaiKhoan.put("ngaysua", rs.getString("ngaysua"));
				blog_TaiKhoan.put("id_taikhoan", String.valueOf(rs.getLong("id_taikhoan")));
				blog_TaiKhoan.put("tentaikhoan", rs.getString("tentaikhoan"));
				blog_TaiKhoan.put("tenhienthi", rs.getString("tenhienthi"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return blog_TaiKhoan;
		} catch (Exception e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}


	// Phương thức thêm
	public boolean AddData(Blogs blog, String sql) {
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

	public boolean EditData(Blogs blog, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		// Chuẩn bị 1 prepared statement Cho phép dùng câu lệnh SQL có truyền tham số
		// vào
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, blog.getTieude());
			pst.setString(2, blog.getMota());
			pst.setString(3, blog.getNoidung());
			pst.setString(4, blog.getHinhanh());
			pst.setLong(5, Long.valueOf(blog.getId()));

			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
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

	public static void main(String[] args) {

	}

}
