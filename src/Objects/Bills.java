package Objects;


public class Bills {
	long id;
	String hoten,sonha,diachi,dienthoai,email,ghichu,ngaydat;
	int trangthai;
	
	public Bills() { 
		
	}

	public Bills(long id, String hoten, String sonha, String diachi, String dienthoai, String email, String ghichu,
			String ngaydat, int trangthai) {
		super();
		this.id = id;
		this.hoten = hoten;
		this.sonha = sonha;
		this.diachi = diachi;
		this.dienthoai = dienthoai;
		this.email = email;
		this.ghichu = ghichu;
		this.ngaydat = ngaydat;
		this.trangthai = trangthai;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getSonha() {
		return sonha;
	}

	public void setSonha(String sonha) {
		this.sonha = sonha;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getDienthoai() {
		return dienthoai;
	}

	public void setDienthoai(String dienthoai) {
		this.dienthoai = dienthoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public String getNgaydat() {
		return ngaydat;
	}

	public void setNgaydat(String ngaydat) {
		this.ngaydat = ngaydat;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	} 
	
}
