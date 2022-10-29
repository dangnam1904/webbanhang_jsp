package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.*;

import Objects.Comments;

public class dao_Comments {

	ConnectToDB conndb;

	public ArrayList<Comments> SelectDB(String sql) {
		conndb = new ConnectToDB();

		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Comments> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Comments comment = new Comments();
				comment.setId(rs.getLong("id"));
				comment.setNoidung(rs.getString("noidung"));
				comment.setId_baiviet(rs.getLong("id_baiviet"));
				comment.setId_taikhoan(rs.getLong("id_taikhoan"));
				comment.setNgayDang(rs.getString("ngaydang"));
				comment.setNgaySua(rs.getString("ngaysua"));
				comment.setTenTaiKhoan(rs.getString("tentaikhoan"));
				list.add(comment);
			}
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	public Comments FindWithId(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		Comments comment = new Comments();

		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				comment.setId(rs.getLong("id"));
				comment.setNoidung(rs.getString("noidung"));
				comment.setId_baiviet(rs.getLong("id_baiviet"));
				comment.setId_taikhoan(rs.getLong("id_taikhoan"));
				comment.setNgayDang(rs.getString("ngaydang"));
				comment.setNgaySua(rs.getString("ngaysua"));
			}
			conndb.CloseConnect();
			return comment;

		} catch (Exception e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức thêm
	public boolean AddData(Comments comment, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();

		PreparedStatement pst = null;
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

	// Phương thức sửa
	public boolean EditData(Comments comment, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect(); 

		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, comment.getNoidung());
			pst.setString(2, comment.getNgaySua());
			pst.setLong(3, comment.getId());
			
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	public static void main(String[] args) {
		// ArrayList<Comments> list = new dao_Comments().SelectDB("SELECT * FROM
		// binhluanbaiviet");
		// for (int i = 0; i < list.size(); i++) {
		// System.out.println(list.get(i).getNoidung());
		// }
		// Comments comments = new dao_Comments().FindWithId("SELECT * FROM
		// binhluanbaiviet WHERE id = 1");
		// System.out.println(comments.getNoidung());
	}
}
