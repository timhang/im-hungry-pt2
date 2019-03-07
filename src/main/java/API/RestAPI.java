package API;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONObject;

public class RestAPI {
	private static final String apiKey = "f8d9f9d39a43e6ec63538a5356043b36";
	//private static final String baseURL = "https://developers.zomato.com/api/v2.1/";
	private static final String bulkURL = "https://developers.zomato.com/api/v2.1/search?entity_id=195071&entity_type=landmark";
	private static ArrayList<Integer> restIDs = new ArrayList<Integer>();
	private static HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
	private static Boolean state = false;
//	public static void main (String[] args) {
//		try {
//			RestAPI.call_me();
//		}
//		catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	public static HashMap<Integer, Restaurant> getRestaurantMap(){
		return allRestaurants;
	}
	
	public static Boolean getState() {
		return state;
	}
	
	public static void setState(Boolean called) {
		state = called;
	}
	
	public static ArrayList<Integer> getRestIDs(){
		return restIDs;
	}
	
	private static int travelTime(double distance) {
		int travelTime = (int) (distance / 40);
		return travelTime;
	}
	
    private static double distance(double lat1, double lon1, double lat2, double lon2, char unit) {
        double theta = lon1 - lon2;
        double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
        dist = Math.acos(dist);
        dist = rad2deg(dist);
        dist = dist * 60 * 1.1515;
        if (unit == 'K') {
          dist = dist * 1.609344;
        } else if (unit == 'N') {
          dist = dist * 0.8684;
          }
        return (dist);
      }

      /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
      /*::  This function converts decimal degrees to radians             :*/
      /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
      private static double deg2rad(double deg) {
        return (deg * Math.PI / 180.0);
      }

      /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
      /*::  This function converts radians to decimal degrees             :*/
      /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
      private static double rad2deg(double rad) {
        return (rad * 180.0 / Math.PI);
      }
	
	public static HashMap<Integer, Restaurant> call_me(String searchTerm, int resultLimit) throws Exception {
		HashMap<Integer, Restaurant> newRests = new HashMap<Integer, Restaurant>();
		ArrayList<Integer> newRestIDs = new ArrayList<Integer>();
		
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
	    
	    
	    for (int i = 0; i < array.length(); i++) {
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
	    	newRest.setPriceRange(test2.getDouble("average_cost_for_two"));
	    	
	    	double newDistance = distance(newRest.getLatitude(), newRest.getLongitude(), 34.0224, 118.2851, 'K');
	    	newRest.setDistance(newDistance);
	    	
	    	int newTravelTime = travelTime(newDistance);
	    	newRest.setTravelTime(newTravelTime);
	    	
	    	newRests.put(i, newRest);
	    	newRestIDs.add(i);
	    	
		    System.out.println(test2.get("name"));
		    System.out.println("");
	    }
	    allRestaurants = newRests;
	    restIDs = newRestIDs;
	    
	    for (int i = 0; i < allRestaurants.size(); i++) {
	    	Restaurant newRest = allRestaurants.get(i);
	    	System.out.println("Restaurant Name: " + newRest.getName());
	    	System.out.println("Restaurant Address: " + newRest.getAddress());
	    	System.out.println("Latitude: " + newRest.getLatitude());
	    	System.out.println("Longitude: " + newRest.getLongitude());
	    	System.out.println("Rating: " + newRest.getRating());
	    	System.out.println("URL: " + newRest.getURL());
	    	//new test below
	    	System.out.println("TESTING");
	    	System.out.println("$: " + newRest.getPriceRange());
	    	System.out.println("Distance: " + newRest.getTravelTime());
	    }
	    return allRestaurants;
	}
}