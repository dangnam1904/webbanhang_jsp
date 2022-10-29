package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.*;

import Objects.BillDetailsFull;
import Objects.BillsDetail;

public class dao_BillDetail {
	ConnectToDB conndb;

	/*
	 * long id, id_hoadon, id_sanpham; double giagoc; int soluong, khuyenmai; String
	 * anhchinh;
	 */
	// Phương thức lấy dữ liệu về
	public ArrayList<BillDetailsFull> FindByIdHoaDon(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		ArrayList<BillDetailsFull> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				BillDetailsFull billDetail = new BillDetailsFull();
				billDetail.setId(rs.getLong("id"));
				billDetail.setId_hoadon(rs.getLong("id_hoadon"));
				billDetail.setId_sanpham(rs.getLong("id_sanpham"));
				billDetail.setTensanpham(rs.getString("tensanpham"));
				billDetail.setGiagoc(rs.getDouble("giagoc"));
				billDetail.setSoluong(rs.getInt("soluong"));
				billDetail.setKhuyenmai(rs.getInt("khuyenmai"));
				billDetail.setAnhchinh(rs.getString("anhchinh"));

				list.add(billDetail);
			}
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Phương thức thêm
	public boolean AddData(BillsDetail billDetail, String sql) {
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

	// Phương thức sửa
	public boolean EditData(BillsDetail billDetail, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, billDetail.getSoluong());
			pst.setLong(2, billDetail.getId_hoadon());
			pst.setLong(3, billDetail.getId_sanpham());
			pst.setLong(4, billDetail.getId());

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
	public boolean DelData(long id, String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		PreparedStatement pst = null;
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

	public BillDetailsFull FindById(String sql) {
		conndb = new ConnectToDB();
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo đối tượng BillsDetail giá trị
		BillDetailsFull billDetail = new BillDetailsFull();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				billDetail.setId(rs.getLong("id"));
				billDetail.setId_hoadon(rs.getLong("id_hoadon"));
				billDetail.setId_sanpham(rs.getLong("id_sanpham"));
				billDetail.setTensanpham(rs.getString("tensanpham"));
				billDetail.setGiagoc(rs.getDouble("giagoc"));
				billDetail.setSoluong(rs.getInt("soluong"));
				billDetail.setKhuyenmai(rs.getInt("khuyenmai"));
				billDetail.setAnhchinh(rs.getString("anhchinh"));
			}
			// Đóng kết nối
			conndb.CloseConnect();
			return billDetail;
		} catch (SQLException e) {
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}
}
