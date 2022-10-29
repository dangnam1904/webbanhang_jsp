package Objects;

public class Items {
	private Products products;
	private int quantity;
	
	public Items() { 
		
	} 
	
	public Items(Products products, int quantity) { 
		this.products = products;
		this.quantity = quantity;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
