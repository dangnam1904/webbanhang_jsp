package Control;

import java.util.ArrayList;

import Model.dao_Products;
import Model.dao_ThongKe;
import Objects.ThongKes;

public class ThongKeControl {
	dao_ThongKe dao = new dao_ThongKe();

	// Lấy toàn bộ sản phẩm
	public ArrayList<ThongKes> getList(String tungay, String denngay) {

		String sql = "SELECT `hoadon`.`id`, `hoten`, `sonha`,`diachi`, `dienthoai`, `email`, ROUND(SUM(`chitiethoadon`.`soluong` * `sanpham`.`giagoc` - `chitiethoadon`.`soluong` * `sanpham`.`giagoc` * `sanpham`.`khuyenmai`/100), -3) AS tongtien, `ngaydat` FROM `sanpham`, `hoadon`, `chitiethoadon` WHERE `sanpham`.`id` = `chitiethoadon`.`id_sanpham` AND `chitiethoadon`.`id_hoadon` = `hoadon`.`id` AND `trangthai` = 2 AND `ngaydat` BETWEEN '"
				+ tungay + "' AND '" + denngay + "' GROUP BY `ngaydat` ORDER BY `ngaydat` ";
		return dao.SelectDB(sql);
	}
}
