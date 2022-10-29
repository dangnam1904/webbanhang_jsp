package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.*;

import Objects.Blogs;
import Objects.ThongKes;

public class dao_ThongKe {
	ConnectToDB conndb;

	public ArrayList<ThongKes> SelectDB(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		ArrayList<ThongKes> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				ThongKes thongKes = new ThongKes();
				thongKes.setId(rs.getLong("id"));
				thongKes.setDiaChi(rs.getString("diachi"));
				thongKes.setSoNhan(rs.getString("sonha"));
				thongKes.setHoTen(rs.getString("hoten"));
				thongKes.setEmail(rs.getString("email"));
				thongKes.setDienThoai(rs.getString("dienthoai"));
				thongKes.setTongTien(rs.getLong("tongtien"));
				thongKes.setNgayDat(rs.getString("ngaydat"));
				// Thêm vào danh sách
				list.add(thongKes);
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
}
