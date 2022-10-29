package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import Objects.Blogs;
import Objects.Citys_Provinces;
import Objects.Districts;
import Objects.Towns_Wards;

public class dao_Address {
	ConnectToDB conndb;
	// Lấy toàn bộ tỉnh thành phố
	public ArrayList<Citys_Provinces> SelectDB(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Citys_Provinces> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Citys_Provinces city_province = new Citys_Provinces();
				city_province.setId(rs.getLong("id")); 
				city_province.setCode(rs.getLong("code"));
				city_province.setDonvi(rs.getString("donvi"));
				city_province.setTen(rs.getString("ten"));
				city_province.setTendaydu(rs.getString("tendaydu"));
				city_province.setTenkhongdau(rs.getString("tenkhongdau"));
				// Thêm vào danh sách
				list.add(city_province);
			}
			// �?óng kết nối
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			// �?óng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Lấy toàn bộ quận huyện
	public ArrayList<Districts> SelectDistricts(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Districts> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Districts districts = new Districts();
				districts.setCode(rs.getLong("code"));
				districts.setDonvi(rs.getString("donvi"));
				districts.setId(rs.getLong("id"));
				districts.setId_tinhthanhpho(rs.getLong("id_tinhthanhpho"));
				districts.setTen(rs.getString("ten"));
				districts.setTendaydu(rs.getString("tendaydu"));
				districts.setTenhanhchinh(rs.getString("tenhanhchinh"));
				districts.setTenkhongdau(rs.getString("tenkhongdau"));
				districts.setTenthuong(rs.getString("tenthuong")); 
				// Thêm vào danh sách
				list.add(districts);
			}
			// �?óng kết nối
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			// �?óng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

	// Lấy toàn bộ xã phư�?ng
	public ArrayList<Towns_Wards> SelectTowns_Wards(String sql) {
		conndb = new ConnectToDB();
		// Mở kết nối nhận biến con ở dạng com.mysql.jdbc.JDBC4Connection@5c072e3f
		Connection con = (Connection) conndb.OpenConnnect();
		// Khởi tạo mảng lưu giá trị
		ArrayList<Towns_Wards> list = new ArrayList<>();
		Statement stmt;
		try {
			stmt = (Statement) con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				// Tạo một đối tượng gán giá trị
				Towns_Wards town_ward = new Towns_Wards();
				town_ward.setCode(rs.getLong("code"));
				town_ward.setDonvi(rs.getString("donvi"));
				town_ward.setId(rs.getLong("id"));
				town_ward.setId_quanhuyen(rs.getLong("id_quanhuyen"));
				town_ward.setTen(rs.getString("ten"));
				town_ward.setTendaydu(rs.getString("tendaydu"));
				town_ward.setTenhanhchinh(rs.getString("tenhanhchinh"));
				town_ward.setTenkhongdau(rs.getString("tenkhongdau"));
				town_ward.setTenthuong(rs.getString("tenthuong")); 
				// Thêm vào danh sách
				list.add(town_ward);
			}
			// �?óng kết nối
			conndb.CloseConnect();
			return list;
		} catch (SQLException e) {
			// �?óng kết nối
			conndb.CloseConnect();
			e.printStackTrace();
		}
		return null;
	}

}
