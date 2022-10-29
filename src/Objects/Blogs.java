package Objects;

public class Blogs {
	long id, id_taikhoan;
	String tieude, mota, noidung, hinhanh, ngayDang, ngaySua;

	public Blogs() {

	}

	public Blogs(long id, long id_taikhoan, String tieude, String mota, String noidung, String hinhanh, String ngayDang,
			String ngaySua) {
		super();
		this.id = id;
		this.id_taikhoan = id_taikhoan;
		this.tieude = tieude;
		this.mota = mota;
		this.noidung = noidung;
		this.hinhanh = hinhanh;
		this.ngayDang = ngayDang;
		this.ngaySua = ngaySua;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getId_taikhoan() {
		return id_taikhoan;
	}

	public void setId_taikhoan(long id_taikhoan) {
		this.id_taikhoan = id_taikhoan;
	}

	public String getTieude() {
		return tieude;
	}

	public void setTieude(String tieude) {
		this.tieude = tieude;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public String getNoidung() {
		return noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public String getNgayDang() {
		return ngayDang;
	}

	public void setNgayDang(String ngayDang) {
		this.ngayDang = ngayDang;
	}

	public String getNgaySua() {
		return ngaySua;
	}

	public void setNgaySua(String ngaySua) {
		this.ngaySua = ngaySua;
	}

}
