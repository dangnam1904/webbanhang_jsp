package Control;

import java.util.ArrayList;
import Model.dao_Products;
import Objects.Category;
import Objects.Products;

public class ProductsControl {

	dao_Products dao = new dao_Products();

	// Lấy toàn bộ sản phẩm
	public ArrayList<Products> getListProducts() {

		String sql = "Select * From sanpham";
		return dao.SelectDB(sql);
	}

	// Lấy sản phẩm theo từng loại
	public ArrayList<Products> getListProductsType(int id) {
		String sql = "Select * From sanpham Where id_loaisp =" + id;
		return dao.SelectDB(sql);
	}

	public boolean getAddData(Products product) {
		String sql = "INSERT INTO sanpham (tensanpham, mota, giagoc, khuyenmai, anhchinh, tinhtrang, luotthich, id_loaisp) "
				+ "VALUES (\"" + product.getTensanpham() + "\", \"" + product.getMota() + "\"," + product.getGiagoc()
				+ ", " + product.getKhuyenmai() + ", \"" + product.getAnhchinh() + "\", " + product.getTinhtrang()
				+ ", " + product.getLuotthich() + ", " + product.getId_loaisanpham() + " )";

//		System.out.println(sql);
		return dao.AddData(product, sql);
	}

	public Products getFindWithId(int id) {
		String sql = "SELECT * FROM sanpham WHERE id = " + id;
		return dao.FindWithId(sql);
	}

	public boolean getDelData(int id) {
		String sql = "DELETE FROM sanpham WHERE id = ?";
		return dao.DelData(id, sql);
	}
	
	public boolean getEditData(Products product) {
		String sql = "UPDATE sanpham SET tensanpham = ?, mota = ?, giagoc = ?, khuyenmai = ?, anhchinh = ?, tinhtrang = ?, luotthich = ?, id_loaisp = ? WHERE id = ?";;
		return dao.EditData(product, sql);
	}
	public static void main(String[] args) {
		ProductsControl p = new ProductsControl();
		for (Products ls : p.getListProductsType(2)) {
			System.out.println(ls.getId_loaisanpham() + " " + ls.getTensanpham());
		}
	}

}
