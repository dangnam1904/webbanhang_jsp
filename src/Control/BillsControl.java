package Control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import Model.dao_Bills;
import Objects.Bills;

public class BillsControl {
	dao_Bills dao = new dao_Bills();

	public ArrayList<Bills> getSelectDatHang_Ship() {
		String sql = "SELECT * FROM hoadon WHERE trangthai = 0 OR trangthai = 1";
		return dao.SelectDB(sql);
	}

	// Danh sách hóa đơn đặt hàng
	public ArrayList<Bills> getSelectDatHang() {
		String sql = "SELECT * FROM hoadon WHERE trangthai = 0";
		return dao.SelectDB(sql);
	}

	// Danh sách hóa đơn đang ship
	public ArrayList<Bills> getSelectDangShip() {
		String sql = "SELECT * FROM hoadon WHERE trangthai = 1";
		return dao.SelectDB(sql);
	}

	// Danh sách hóa đơn đã hủy
	public ArrayList<Bills> getSelectDestroy() {
		String sql = "SELECT * FROM hoadon WHERE trangthai = 3";
		return dao.SelectDB(sql);
	}

	// Danh sách hóa đơn đã thanh toán
	public ArrayList<Bills> getSelectPayment() {
		String sql = "SELECT * FROM hoadon WHERE trangthai = 2";
		return dao.SelectDB(sql);
	}

	public boolean getAddData(Bills bill) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String sql = "";
		return dao.AddData(bill, sql);
	}

	public boolean getDelData(int id) {
		String sql = "DELETE FROM hoadon WHERE id = ?";
		return dao.DelData(id, sql);
	}

	public Bills getFindById(long id) {
		String sql = "SELECT * FROM hoadon WHERE id = " + id;
		return dao.FindById(sql);
	}

	// Phương thức sửa trạng thái
	public boolean getEditDataStatus(int trangthai, long id) {
		String sql = "UPDATE hoadon SET trangthai = ? WHERE id = ?";
		return dao.EditDataStatus(trangthai, id, sql);
	}

	// Phương thức sửa ghi chú
	public boolean getEditDataNote(String ghichu, long id) {
		String sql = "UPDATE hoadon SET ghichu = ? WHERE id = ?";
		return dao.EditDataNote(ghichu, id, sql);
	}
	
	public String[] getSelectDB30Days(String last30Days, String now){
		return dao.SelectDB30Days(last30Days, now);
	}
}
