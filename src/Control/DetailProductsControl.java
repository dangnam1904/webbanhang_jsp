package Control;

import java.util.ArrayList;

import Model.dao_DetailProducts;
import Objects.DetailProducts;

public class DetailProductsControl {
	dao_DetailProducts dao = new dao_DetailProducts();

	// Lấy toàn bộ chi tiết sản phẩm
	public ArrayList<DetailProducts> getListDetailProducts() {
		String sql = "SELECT * FROM chitietsanpham";
		return dao.SelectDB(sql);
	}

	// Lấy toàn bộ chi tiết sản phẩm
	public ArrayList<DetailProducts> getListWithProductId(long id) {
		String sql = "SELECT * FROM chitietsanpham WHERE id_sanpham = " + id;
		return dao.ListWithProductId(sql);
	}

	public boolean getAddData(DetailProducts detail) {
		String sql = "INSERT INTO chitietsanpham (anhchitiet, id_sanpham) VALUES (\"" + detail.getAnhChiTiet() + "\", "
				+ detail.getId_sanPham() + ")";
		return dao.AddData(sql);
	}

	public DetailProducts getFindWithId(long id) {
		String sql = "SELECT * FROM chitietsanpham WHERE id = " + id;
		return dao.FindWithId(sql);
	}

	public boolean getEditData(DetailProducts detail) {
		String sql = "UPDATE chitietsanpham SET anhchitiet = ? WHERE id = ?";
		return dao.EditData(detail, sql);
	}

	public boolean getDelData(long id) {
		String sql = "DELETE FROM chitietsanpham WHERE id = ?";
		return dao.DelData(id, sql);
	}
}