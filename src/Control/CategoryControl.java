package Control;

import java.util.ArrayList;
import java.util.regex.Pattern;

import Model.dao_Category;
import Objects.Category;

public class CategoryControl {

	dao_Category dao = new dao_Category();

	public ArrayList<Category> getListCategory() {
		String sql = "Select * From loaisanpham";
		return dao.SelectDB(sql);
	}

	public Category getFindWithId(int id) {
		String sql = "SELECT * FROM loaisanpham WHERE id = " + id;
		return dao.FindWithId(sql);
	}

	public boolean getEditData(Category category) {
		String sql = "UPDATE loaisanpham SET tenloai = ? WHERE id = ?";
		return dao.EditData(category, sql);
	}

	public boolean getAddData(Category category) {
		String sql = "INSERT INTO loaisanpham (tenloai) VALUES (\"" + category.getTenloai() + "\")";
		return dao.AddData(category, sql);
	}

	public boolean getDelData(int id) {
		String sql = "DELETE FROM loaisanpham WHERE id = ?";
		return dao.DelData(id, sql);
	}

}
