package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import Objects.Bills;

public class dao_Bills {
	ConnectToDB conndb;

	// Phương thức lấy dữ liệu về
	public ArrayList<Bills> SelectDB(String sql) {
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
				Bills bill = new Bills();
				bill.setId(rs.getLong("id"));
				bill.setHoten(rs.getString("hoten"));
				bill.setSonha(rs.getString("sonha"));
				bill.setDiachi(rs.getString("diachi"));
				bill.setDienthoai(rs.getString("dienthoai"));
				bill.setEmail(rs.getString("email"));
				bill.setGhichu(rs.getString("ghichu"));
				bill.setTrangthai(rs.getInt("trangthai"));
				bill.setNgaydat(rs.getString("ngaydat"));

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

	// Phương thức thêm
	public boolean AddData(Bills bill, String sql) {
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

	// Phương thức sửa
	public boolean EditData(Bills bill, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, bill.getHoten());
			pst.setString(2, bill.getSonha());
			pst.setString(3, bill.getDiachi());
			pst.setString(4, bill.getDienthoai());
			pst.setString(5, bill.getEmail());
			pst.setString(6, bill.getGhichu());
			pst.setString(7, bill.getNgaydat());
			pst.setInt(8, bill.getTrangthai());
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

	public Bills FindById(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo đối tượng lưu giá trị
		Bills bill = new Bills();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				bill.setId(rs.getLong("id"));
				bill.setHoten(rs.getString("hoten"));
				bill.setSonha(rs.getString("sonha"));
				bill.setDiachi(rs.getString("diachi"));
				bill.setDienthoai(rs.getString("dienthoai"));
				bill.setEmail(rs.getString("email"));
				bill.setGhichu(rs.getString("ghichu"));
				bill.setTrangthai(rs.getInt("trangthai"));
				bill.setNgaydat(rs.getString("ngaydat"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return bill;
		} catch (SQLException e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức sửa trạng thái
	public boolean EditDataStatus(int trangthai, long id, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, trangthai);
			pst.setLong(2, id);

			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		conndb.CloseConnect();
		return false;
	}

	// Phương thức sửa ghi chú
	public boolean EditDataNote(String ghichu, long id, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, ghichu);
			pst.setLong(2, id);

			pst.executeUpdate();
			conndb.CloseConnect();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		conndb.CloseConnect();
		return false;
	}

	// Phương thức lấy dữ liệu về
	public String [] SelectDB30Days(String last30Days, String now) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		String [] arr = new String[2];
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			String sql = "SELECT ROUND(SUM(`chitiethoadon`.`soluong` * `sanpham`.`giagoc` - `chitiethoadon`.`soluong` * `sanpham`.`giagoc` * `sanpham`.`khuyenmai`/100), -3) AS tongtien, `ngaydat` FROM `hoadon`, `chitiethoadon`, `sanpham` WHERE `hoadon`.`id` = `chitiethoadon`.`id_hoadon` AND `chitiethoadon`.`id_sanpham` = `sanpham`.`id` AND `ngaydat` BETWEEN '"
					+ last30Days + "' AND '" + now + "' AND `hoadon`.`trangthai` = 2 GROUP BY `ngaydat` ORDER BY `ngaydat`";
			System.out.println(sql);
			String valueNgay = "";
			valueNgay += "[";
			String valueTongTien = "";
			valueTongTien += "[";
			ResultSet rs = stmt.executeQuery(sql);
			int a = 0;
			while (rs.next()) {
				valueNgay += "'" + rs.getString("ngaydat").split(" ")[0] + "', ";
				valueTongTien += rs.getString("tongtien") + ", ";
				
			}
			valueNgay = valueNgay.substring(0, valueNgay.length() - 2);
			valueTongTien = valueTongTien.substring(0, valueTongTien.length() - 2);
			valueNgay += "]";
			valueTongTien += "]";
			arr[0] = valueNgay;
			arr[1] = valueTongTien;
			// Đóng kết nối
			conndb.CloseConnect();
			return arr;
		} catch (SQLException e) {
			// Đóng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		// ArrayList<Bills> arr = new dao_Bills().SelectDB("Select * from hoadon");
		// for (Bills bills : arr) {
		// System.out.println(bills.getDiachi());
		// }

		// Bills bill = new dao_Bills().FindById("SElect * From hoadon where id = 1");
		// System.out.println(bill.getDiachi());
	}
}
