package Model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.*;

import Objects.Users;

public class dao_Users {
	ConnectToDB conndb;
	Connection con;

	// Kiểm tra Email và tài khoản đã tồn tại chưa
	public boolean checkAcc(String sql) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				conndb.CloseConnect();
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Phương thức thêm một tài khoản mới
	public boolean AddAccount(Users user) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "INSERT INTO taikhoan VALUES (default,?,?,?,?,?,?) ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, user.getTentaikhoan());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getMatkhau());
			pst.setString(4, user.getPhanquyen());
			pst.setString(5, user.getTenhienthi());
			pst.setString(6, user.getHinhanh());
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Phương thức cập nhật thông tin cho tài khoản
	public boolean EditAccount(Users user) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "UPDATE taikhoan SET tenhienthi = ? , matkhau = ? WHERE tentaikhoan = ? ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, user.getTenhienthi());
			pst.setString(2, user.getMatkhau());
			pst.setString(3, user.getTentaikhoan());
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Phương thức cập nhật ảnh cho tài khoản
	public boolean EditAccountAvt(Users user) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "UPDATE taikhoan SET hinhanh = ? WHERE tentaikhoan = ? ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, user.getHinhanh());
			pst.setString(2, user.getTentaikhoan());
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Phương thức kiểm tra đăng nhập
	public Users CheckLogin(String sql) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				Users user = new Users();
				user.setId(rs.getLong("id"));
				user.setTentaikhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				user.setPhanquyen(rs.getString("phanquyen"));
				user.setTenhienthi(rs.getString("tenhienthi"));
				user.setHinhanh(rs.getString("hinhanh"));
				conndb.CloseConnect();
				return user;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return null;
	}

	public Users FindById(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();

		Users user = new Users();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				user.setId(rs.getLong("id"));
				user.setTentaikhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				user.setPhanquyen(rs.getString("phanquyen"));
				user.setTenhienthi(rs.getString("tenhienthi"));
				user.setHinhanh(rs.getString("hinhanh"));
			}
			conndb.CloseConnect();
			return user;
		} catch (SQLException e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức tên hiển thị cho tài khoản
	public boolean EditAccountDisplayName(String displayName, long id) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "UPDATE taikhoan SET tenhienthi = ? WHERE id = ? ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, displayName);
			pst.setLong(2, id);
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Phương thức cập nhật mật khẩu cho tài khoản
	public boolean EditAccountPassword(String password, long id) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "UPDATE taikhoan SET matkhau = ? WHERE id = ? ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, encryption(password));
			pst.setLong(2, id);
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conndb.CloseConnect();
		return false;
	}

	// Code mã hóa mật khẩu
	public static String encryption(String str) {
		byte[] defaultBytes = str.getBytes();
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(defaultBytes);
			byte messageDigest[] = algorithm.digest();
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < messageDigest.length; i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if (hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			str = hexString + "";
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return str;
	}

	// Phương thức lấy toàn bộ dữ liệu bảng users
	public ArrayList<Users> SelectDB(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		ArrayList<Users> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Users user = new Users();
				user.setId(rs.getLong("id"));
				user.setTentaikhoan(rs.getString("tentaikhoan"));
				user.setEmail(rs.getString("email"));
				user.setPhanquyen(rs.getString("phanquyen"));
				user.setTenhienthi(rs.getString("tenhienthi"));
				user.setHinhanh(rs.getString("hinhanh"));
				list.add(user);
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

	// Phương thức cập nhật quyền cho tài khoản
	public boolean EditAccountQuyen(String quyen, long id) {
		conndb = new ConnectToDB();
		con = (Connection) conndb.OpenConnnect();
		String sql = "UPDATE taikhoan SET phanquyen = ? WHERE id = ? ";
		PreparedStatement pst = null;
		try {
			pst = con.prepareCall(sql);
			pst.setString(1, quyen);
			pst.setLong(2, id);
			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (SQLException e) {
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
