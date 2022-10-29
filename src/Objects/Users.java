package Objects;

public class Users {
	long id;
	String tentaikhoan, email, matkhau, phanquyen, tenhienthi, hinhanh;
	
	public Users() {
		
	}
	
	public Users(String tentaikhoan, String email, String matkhau, String phanquyen, String tenhienthi,
			String hinhanh) {  
		this.tentaikhoan = tentaikhoan;
		this.email = email;
		this.matkhau = matkhau;
		this.phanquyen = phanquyen;
		this.tenhienthi = tenhienthi;
		this.hinhanh = hinhanh;
	}
	
	public Users(long id, String tentaikhoan, String email, String matkhau, String phanquyen, String tenhienthi,
			String hinhanh) { 
		this.id = id;
		this.tentaikhoan = tentaikhoan;
		this.email = email;
		this.matkhau = matkhau;
		this.phanquyen = phanquyen;
		this.tenhienthi = tenhienthi;
		this.hinhanh = hinhanh;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTentaikhoan() {
		return tentaikhoan;
	}

	public void setTentaikhoan(String tentaikhoan) {
		this.tentaikhoan = tentaikhoan;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getPhanquyen() {
		return phanquyen;
	}

	public void setPhanquyen(String phanquyen) {
		this.phanquyen = phanquyen;
	}

	public String getTenhienthi() {
		return tenhienthi;
	}

	public void setTenhienthi(String tenhienthi) {
		this.tenhienthi = tenhienthi;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

}
