package ecom.app.entities;
 
import java.util.Arrays;
 
public class CartItems {	
	private String productName;
    private String description;
    private int price;
    private byte[] productImage;
    private int quantity;
	public CartItems() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartItems(String productName, String description, int price, byte[] productImage, int quantity) {
		super();
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.productImage = productImage;
		this.quantity = quantity;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public byte[] getProductImage() {
		return productImage;
	}
	public void setProductImage(byte[] productImage) {
		this.productImage = productImage;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "CartItems [productName=" + productName + ", description=" + description + ", price=" + price
				+ ", productImage=" + Arrays.toString(productImage) + ", quantity=" + quantity + "]";
	}
 
 
	
	
	
}
 
 