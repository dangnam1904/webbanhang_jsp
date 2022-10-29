package Control;

import java.util.ArrayList;

import Model.dao_Users;
import Objects.Users;

public class UserControl {
	dao_Users dao = new dao_Users();

	// Lấy thông tin một tài khoản
	public Users getUserWithUserName(String user_name) {
		String sql = "SELECT * FROM taikhoan WHERE tentaikhoan = '" + user_name + "' ";
		return dao.CheckLogin(sql);
	}

	public Users getFindById(long id) {
		String sql = "SELECT * FROM taikhoan WHERE id = " + id;
		return dao.FindById(sql);
	}

	public boolean getEditAccountDisplayName(String displayName, long id) {
		return dao.EditAccountDisplayName(displayName, id);
	}

	public boolean getEditAccountPassword(String password, long id) {
		return dao.EditAccountPassword(password, id);
	}

	public boolean getEditAccountQuyen(String quyen, long id) {
		return dao.EditAccountQuyen(quyen, id);
	}

	public ArrayList<Users> getSelectDB() {
		String sql = "SELECT * FROM taikhoan";
		return dao.SelectDB(sql);
	}
	
	public boolean getDelData(int id) {
		String sql = "DELETE FROM taikhoan WHERE id = ?";
		return dao.DelData(id, sql);
	}
}
