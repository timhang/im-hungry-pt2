package API; 

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

public class RestAPI {
	private static final String apiKey = "f8d9f9d39a43e6ec63538a5356043b36";
	private static final String baseURL = "https://developers.zomato.com/api/v2.1/";
	private static final String bulkURL = "https://developers.zomato.com/api/v2.1/search?entity_id=195071&entity_type=landmark";
	private static final ArrayList<Integer> restIDs = new ArrayList<Integer>();
	private static final HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();

//	public static void main (String[] args) {
//		try {
//			RestAPI.call_me();
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	public static ArrayList<Integer> getRestIDs(){
		return restIDs;
	}
	
	private static HashMap<Integer, Restaurant> call_me(String searchTerm, int resultLimit) throws Exception {
	    String fullURL = bulkURL+"&q=" + searchTerm + "&count=" + resultLimit;
	    
		URL obj = new URL(fullURL);
		
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		con.addRequestProperty("user-key", apiKey);
		int responseCode = con.getResponseCode();
		
		System.out.println("\nSending 'GET' request to URL : " + fullURL);
	    System.out.println("Response Code : " + responseCode);
	    
	    BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
	    String inputLine;
	    StringBuffer response = new StringBuffer();
	    while ((inputLine = in.readLine()) != null) {
	        response.append(inputLine);
	    }
	    in.close();
	    
	    System.out.println(response.toString());
	    	    
	    JSONObject myResponse = new JSONObject(response.toString());
	    JSONArray array = myResponse.getJSONArray("restaurants");
	    System.out.println("result after Reading JSON Response");
	    
	    
	    for (int i =0; i < array.length(); i++) {
	    	JSONObject test = array.getJSONObject(i);
	    	JSONObject test2 = test.getJSONObject("restaurant");
	    	JSONObject location = test2.getJSONObject("location");
	    	JSONObject userRating = test2.getJSONObject("user_rating");
	    	
	    	Restaurant newRest = new Restaurant(i);
	    	
	    	newRest.setName(test2.getString("name"));
	    	newRest.setAddress(location.getString("address"));
	    	newRest.setLatitude(location.getDouble("latitude"));
	    	newRest.setLongitude(location.getDouble("longitude"));
	    	newRest.setRating(userRating.getDouble("aggregate_rating"));
	    	newRest.setURL(test2.getString("url"));
	    	
	    	allRestaurants.put(i, newRest);
	    	restIDs.add(i);
	    	
		    System.out.println(test2.get("name"));
		    System.out.println("");
	    }
	    
	    for (int i = 0; i < allRestaurants.size(); i++) {
	    	Restaurant newRest = allRestaurants.get(i);
	    	System.out.println("Restaurant Name: " + newRest.getName());
	    	System.out.println("Restaurant Address: " + newRest.getAddress());
	    	System.out.println("Latitude: " + newRest.getLatitude());
	    	System.out.println("Longitude: " + newRest.getLongitude());
	    	System.out.println("Rating: " + newRest.getRating());
	    	System.out.println("URL: " + newRest.getURL());
	    }
	    
	    return allRestaurants;
	}
}
