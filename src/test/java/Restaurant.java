

public class Restaurant {
	public Restaurant(int id) {
		this.id = id; 
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public void setURL(String url) {
		this.url = url;
	}
	
	public void setRating(Double rating) {
		this.rating = rating;
	}
	
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	
	public int getID(){
		return this.id;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getAddress() {
		return this.address;
	}
	
	public String getURL() {
		return this.url;
	}
	
	public double getRating() {
		return this.rating;
	}
	
	public String getPhoneNumber() {
		return this.phoneNumber;
	}
	
	public double getLatitude() {
		return this.latitude;
	}
	
	public double getLongitude() {
		return this.longitude;
	}
	
	private int id;
	private double rating;
	private double latitude;
	private double longitude; 
	private String name;
	private String address;
	private String url;
	private String phoneNumber;

	
}