package Control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import Model.dao_Blogs;
import Objects.Blogs;

public class BlogsControl {
	dao_Blogs dao = new dao_Blogs();

	public ArrayList<Blogs> getListBlogs() {

		String sql = "Select * From baiviet ORDER BY id DESC";
		return dao.SelectDB(sql);
	}

	public Blogs getFindWithId(long id) {
		String sql = "SELECT * FROM baiviet WHERE id = " + id;
		return dao.FindWithId(sql);
	}

	public Map<String, String> getBlog_TaiKhoanWithId(long id) {
		String sql = "SELECT baiviet.id, tieude, mota, noidung, baiviet.hinhanh, ngaydang, ngaysua, id_taikhoan, tentaikhoan, tenhienthi, taikhoan.hinhanh as hinhdaidien FROM baiviet, taikhoan WHERE baiviet.id_taikhoan = taikhoan.id and baiviet.id = "
				+ id;
		return dao.Blog_TaiKhoanWithId(sql);
	}

	public boolean getAddData(Blogs blog) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String sql = "INSERT INTO baiviet (tieude, mota, noidung, hinhanh, id_taikhoan, ngaydang) " + "VALUES (\""
				+ blog.getTieude() + "\", \"" + blog.getMota() + "\", '" + blog.getNoidung() + "', \""
				+ blog.getHinhanh() + "\", " + blog.getId_taikhoan() + ", DATE(\"" + dateFormat.format(date) + "\"))";
//		System.out.println(sql);
		return dao.AddData(blog, sql);
	}

	public boolean getEditData(Blogs blog) {
		String sql = "UPDATE baiviet SET tieude = ?, mota = ?, noidung = ?, hinhanh = ? WHERE id = ?";
		return dao.EditData(blog, sql);
	}

	public boolean getDelData(int id) {
		String sql = "DELETE FROM baiviet WHERE id = ?";
		return dao.DelData(id, sql);
	}
	
	public static void main(String[] args) {
		dao_Blogs dao = new dao_Blogs();
		// for (Blogs ls : dao.SelectDB("Select * From baiviet")) {
		// System.out.println(ls.getId());
		// }
		BlogsControl blogControl = new BlogsControl();
		Map<String, String> blog_TaiKhoan_ID = blogControl.getBlog_TaiKhoanWithId(1);
//		System.out.println(blog_TaiKhoan_ID.get("tentaikhoan"));
//		System.out.println(blog_TaiKhoan_ID.get("id"));
//		System.out.println(blog_TaiKhoan_ID.get("tieude"));
//		System.out.println(blog_TaiKhoan_ID.get("hinhdaidien"));
//		System.out.println(blog_TaiKhoan_ID.get("hinhanh"));

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		System.out.println(dateFormat.format(date));
	}

}
