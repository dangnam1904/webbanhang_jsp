package Objects;

public class BillsDetail {
	long id, id_hoadon, id_sanpham;
	int soluong;
	
	public BillsDetail() {
		 
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getId_hoadon() {
		return id_hoadon;
	}

	public void setId_hoadon(long id_hoadon) {
		this.id_hoadon = id_hoadon;
	}

	public long getId_sanpham() {
		return id_sanpham;
	}

	public void setId_sanpham(long id_sanpham) {
		this.id_sanpham = id_sanpham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public BillsDetail(long id, long id_hoadon, long id_sanpham, int soluong) {
		super();
		this.id = id;
		this.id_hoadon = id_hoadon;
		this.id_sanpham = id_sanpham;
		this.soluong = soluong;
	}
}
