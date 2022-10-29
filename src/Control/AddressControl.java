package Control;

import java.util.ArrayList;

import Model.dao_Address;
import Objects.Citys_Provinces;
import Objects.Districts;
import Objects.Towns_Wards;


public class AddressControl {
	dao_Address dao = new dao_Address();
//	Lấy tỉnh
	public ArrayList<Citys_Provinces> getListAddress() { 
		String sql = "Select * From tinh_thanh_phos";
		return dao.SelectDB(sql);
	}
//	Lấy quận huyện
	public ArrayList<Districts> getListDistricts(long id) { 
		String sql = "Select * From quan_huyens Where id_tinhthanhpho ="+id;
		return dao.SelectDistricts(sql);
	}
	
//	Lấy xã phư�?ng
	public ArrayList<Towns_Wards> getListTowns_Wards(long id) { 
		String sql = "Select * From xa_phuongs Where id_quanhuyen ="+id;
		return dao.SelectTowns_Wards(sql);
	}
	
	public static void main(String[] args) {

	}

}
