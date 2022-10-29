package Objects;

public class Category { 
	long id;
	String tenloai;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}

	public Category() { 
		
	}
	
	public Category(long id, String tenloai) { 
		this.id = id;
		this.tenloai = tenloai;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
