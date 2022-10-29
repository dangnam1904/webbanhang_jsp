package Control;

import java.util.ArrayList;

import Model.dao_BillDetail;
import Objects.BillDetailsFull;
import Objects.BillsDetail;

public class BillDetailsControl {
	dao_BillDetail dao = new dao_BillDetail();

	public ArrayList<BillDetailsFull> getFindByIdHoaDon(long idHoaDon) {
		String sql = "SELECT `chitiethoadon`.`id`,`soluong`,`id_hoadon`,`id_sanpham`,`tensanpham`, `giagoc`,`khuyenmai`,`anhchinh` FROM `sanpham`, `chitiethoadon` WHERE `sanpham`.`id` = `chitiethoadon`.`id_sanpham` AND `id_hoadon` = "
				+ idHoaDon;
		return dao.FindByIdHoaDon(sql);
	}

	public boolean getEditData(BillsDetail billDetail) {
		String sql = " UPDATE `chitiethoadon` SET `soluong`= ?,`id_hoadon`= ?,`id_sanpham`= ? WHERE `id`= ?";
		return dao.EditData(billDetail, sql);
	}

	public boolean getAddData(BillsDetail billDetail) {
		String sql = "INSERT INTO chitiethoadon (`soluong`, `id_hoadon`, `id_sanpham`) VALUES ("
				+ billDetail.getSoluong() + ", " + billDetail.getId_hoadon() + ", " + billDetail.getId_sanpham() + ")";
		return dao.AddData(billDetail, sql);
	}

	public boolean getDelData(long id) {
		String sql = "DELETE FROM chitiethoadon WHERE id = ?";
		return dao.DelData(id, sql);
	}
	
	public BillDetailsFull getFindById(long id) {
		String sql = "SELECT `chitiethoadon`.`id`,`soluong`,`id_hoadon`,`id_sanpham`,`tensanpham`, `giagoc`,`khuyenmai`,`anhchinh` FROM `sanpham`, `chitiethoadon` WHERE `sanpham`.`id` = `chitiethoadon`.`id_sanpham` AND `chitiethoadon`.`id` = "
				+ id;
		return dao.FindById(sql);
	}
}
