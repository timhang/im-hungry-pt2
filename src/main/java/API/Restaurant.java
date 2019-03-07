package API;


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
	
	public void setPriceRange(Double priceRange) {
		this.priceRange = priceRange;
	}
	
	public void setDoNotShow(Boolean state) {
		this.doNotShow = state;
	}
	
	public void setFavorite(Boolean state) {
		this.favorite = state;
		System.out.println("Inside Set Favorite of " + name + " favorite: " + favorite);
	}
	
	public void setToExplore(Boolean state) {
		this.toExplore = state;
	}
	
	public void setTravelTime(String travelTime) {
		this.travelTime = travelTime;
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
	
	public String getTravelTime() {
		return this.travelTime;
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
	
	public double getPriceRange() {
		return this.priceRange;
	}
	
	public Boolean getDoNotShow() {
		return doNotShow;
	}
	
	public Boolean getFavorite() {
		return favorite;
	}
	
	public Boolean getToExplore() {
		return toExplore;
	}
	
	private int id;
	private String travelTime;
	private double rating;
	private double latitude;
	private double longitude; 
	private double priceRange;
	private String name;
	private String address;
	private String url;
	private String phoneNumber;	
	private Boolean doNotShow = false; //false is show, true is do not show
    private Boolean favorite = false; //false is not in favorite, true is in favorite
    private Boolean toExplore = false;
}