package Control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import Model.dao_Comments;
import Objects.Comments;

public class CommentsControl {
	dao_Comments dao = new dao_Comments();

	public ArrayList<Comments> getListCommnets() {

		String sql = "SELECT * FROM binhluanbaiviet";
		return dao.SelectDB(sql);
	}
	
	public Comments getFindWithId(long id) {
		String sql = "SELECT * FROM binhluanbaiviet WHERE id = " + id;
		return dao.FindWithId(sql);
	}
	
	//Lấy toàn bộ Comment của bài viết id_baiViet
	public ArrayList<Comments> getListCommnetsWithID_BaiViet(long id_baiViet) { 
		String sql = "SELECT `binhluanbaiviet`.`id`,`noidung`,`id_baiviet`,`id_taikhoan`,`ngaydang`,`ngaysua`, `taikhoan`.`tentaikhoan` FROM `binhluanbaiviet`, `taikhoan` WHERE `binhluanbaiviet`.`id_taikhoan` = `taikhoan`.`id` AND `binhluanbaiviet`.`id_baiviet` = " + id_baiViet+ " ORDER BY id DESC";
		return dao.SelectDB(sql);
	}
	
	public boolean getAddData(Comments comment) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String sql = "INSERT INTO binhluanbaiviet (noidung, id_baiviet, id_taikhoan, ngaydang) " + "VALUES (\""
				+ comment.getNoidung() + "\", " + comment.getId_baiviet() + ", " + comment.getId_taikhoan() + ", DATE(\"" + dateFormat.format(date) + "\"))";
		return dao.AddData(comment, sql);
	}
	
	public boolean getDelData(long id) {
		String sql = "DELETE FROM binhluanbaiviet WHERE id = ?";
		return dao.DelData(id, sql);
	}
	
	public boolean getEditData(Comments comment) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		comment.setNgaySua(dateFormat.format(date));
		String sql = "UPDATE binhluanbaiviet SET noidung = ? , ngaysua = DATE(?) WHERE id = ?";
		return dao.EditData(comment, sql);
	}
}
