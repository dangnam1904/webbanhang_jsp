package Objects;

public class Towns_Wards {
	long id, code, id_quanhuyen;
	String ten, tenkhongdau, tendaydu, donvi, tenthuong, tenhanhchinh;
	
	public Towns_Wards() {  
		
	}
	
	public Towns_Wards(long id, long code, long id_quanhuyen, String ten, String tenkhongdau, String tendaydu,
			String donvi, String tenthuong, String tenhanhchinh) { 
		this.id = id;
		this.code = code;
		this.id_quanhuyen = id_quanhuyen;
		this.ten = ten;
		this.tenkhongdau = tenkhongdau;
		this.tendaydu = tendaydu;
		this.donvi = donvi;
		this.tenthuong = tenthuong;
		this.tenhanhchinh = tenhanhchinh;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getCode() {
		return code;
	}

	public void setCode(long code) {
		this.code = code;
	}

	public long getId_quanhuyen() {
		return id_quanhuyen;
	}

	public void setId_quanhuyen(long id_quanhuyen) {
		this.id_quanhuyen = id_quanhuyen;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getTenkhongdau() {
		return tenkhongdau;
	}

	public void setTenkhongdau(String tenkhongdau) {
		this.tenkhongdau = tenkhongdau;
	}

	public String getTendaydu() {
		return tendaydu;
	}

	public void setTendaydu(String tendaydu) {
		this.tendaydu = tendaydu;
	}

	public String getDonvi() {
		return donvi;
	}

	public void setDonvi(String donvi) {
		this.donvi = donvi;
	}

	public String getTenthuong() {
		return tenthuong;
	}

	public void setTenthuong(String tenthuong) {
		this.tenthuong = tenthuong;
	}

	public String getTenhanhchinh() {
		return tenhanhchinh;
	}

	public void setTenhanhchinh(String tenhanhchinh) {
		this.tenhanhchinh = tenhanhchinh;
	}
	
}
