package Objects;

public class Citys_Provinces {
	long id, code;
	String ten,tenkhongdau,donvi,tendaydu;
	
	public Citys_Provinces() {
	
	}
	
	public Citys_Provinces(long id, long code, String ten, String tenkhongdau, String donvi, String tendaydu) { 
		this.id = id;
		this.code = code;
		this.ten = ten;
		this.tenkhongdau = tenkhongdau;
		this.donvi = donvi;
		this.tendaydu = tendaydu;
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

	public String getDonvi() {
		return donvi;
	}

	public void setDonvi(String donvi) {
		this.donvi = donvi;
	}

	public String getTendaydu() {
		return tendaydu;
	}

	public void setTendaydu(String tendaydu) {
		this.tendaydu = tendaydu;
	}
}
