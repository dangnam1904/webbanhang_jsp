package Objects;

public class Products {
	long id, id_loaisp;
	String tensanpham, mota, anhchinh; 
	double giagoc;
	int khuyenmai,luotthich,tinhtrang;

	public Products() {

	}
	
	public Products(long id, long id_loaisanpham, String tensanpham, String mota, String anhchinh, double giagoc,
			int khuyenmai, int luotthich, int tinhtrang) { 
		this.id = id;
		this.id_loaisp = id_loaisanpham;
		this.tensanpham = tensanpham;
		this.mota = mota;
		this.anhchinh = anhchinh;
		this.giagoc = giagoc;
		this.khuyenmai = khuyenmai;
		this.luotthich = luotthich;
		this.tinhtrang = tinhtrang;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getId_loaisanpham() {
		return id_loaisp;
	}
	public void setId_loaisanpham(long id_loaisanpham) {
		this.id_loaisp = id_loaisanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getAnhchinh() {
		return anhchinh;
	}
	public void setAnhchinh(String anhchinh) {
		this.anhchinh = anhchinh;
	}
	public double getGiagoc() {
		return giagoc;
	}
	public void setGiagoc(double giagoc) {
		this.giagoc = giagoc;
	}
	public int getKhuyenmai() {
		return khuyenmai;
	}
	public void setKhuyenmai(int khuyenmai) {
		this.khuyenmai = khuyenmai;
	}
	public int getLuotthich() {
		return luotthich;
	}
	public void setLuotthich(int luotthich) {
		this.luotthich = luotthich;
	} 
	public int getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(int tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
}
