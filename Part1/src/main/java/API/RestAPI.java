package API;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

import org.json.JSONArray;
import org.json.JSONObject;

public class RestAPI {
	//Register for a free Zomato API key on their website
	//private static final String apiKey = "f8d9f9d39a43e6ec63538a5356043b36";
	private static final String apiKey = "55baa8b34fff1bd16e4127f326bbae56";
	
	//This is the Zomato API we are calling to get restaurant informations
	private static final String bulkURL = "https://developers.zomato.com/api/v2.1/search?entity_id=195071&entity_type=landmark";
	
	//all restaurant (including from past searches) unique Ids stored in an array
	private static ArrayList<Integer> restIDs = new ArrayList<Integer>();
	
	//restaurant unique ids from the current search session
	private static ArrayList<Integer> currentRestIds = new ArrayList<Integer>();

	//hashMap mapping the unique id of each restaurant to the data object recipe
	private static HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
	
	private static Boolean state = false;
	
	//search query the user last used
	private static String searchString;
	
	//Ids of the recipes in the three lists
	private static ArrayList<Integer> favoritesList = new ArrayList<Integer>();
	private static ArrayList<Integer> toExploreList = new ArrayList<Integer>();
	private static ArrayList<Integer> doNotShowList = new ArrayList<Integer>();
	
	//search query the user last used
	private static int numResults = 0;

	public static HashMap<Integer, Restaurant> getRestaurantMap() {
		return allRestaurants;
	}

	public static void setRestaurantMap(HashMap<Integer, Restaurant> myHash) {
		allRestaurants = myHash;
	}

	public static Boolean getState() {
		return state;
	}

	public static void setState(Boolean called) {
		state = called;
	}

	public static ArrayList<Integer> getRestIDs() {
		return restIDs;
	}

	public static void setRestIDs(ArrayList<Integer> arr) {
		restIDs = arr;
	}

	public static void setCurrentRestIds(ArrayList<Integer> arr) {
		currentRestIds = arr;
	}

	public static ArrayList<Integer> getCurrentRestIds() {
		return currentRestIds;
	}
	
	public static ArrayList<Integer> afterRadius(ArrayList<Integer> beforeRadius, String radius){
		double radiusD = Double.parseDouble(radius);
		ArrayList<Integer> resultsList = new ArrayList<Integer>();
		for(int i = 0; i < beforeRadius.size(); i++) {
			if(allRestaurants.get(beforeRadius.get(i)).getDistance()<=radiusD){
				resultsList.add(beforeRadius.get(i));
			}
		}
		return resultsList;
	}
	
	public static ArrayList<Integer> listInclusions(int num) {
		//Items to include in the list to be displayed on resultsPage
		ArrayList<Integer> resultsList = new ArrayList<Integer>();

		for (int i = 0; i < currentRestIds.size(); i++) {
			// First time through, checking putting favorites on top and not showing do not
			// show. This is for putting favorites on top of results
			if (resultsList.size() == num) {
				break;
			}
			if (allRestaurants.get(currentRestIds.get(i)).getDoNotShow() == false) {
				if (allRestaurants.get(currentRestIds.get(i)).getFavorite() == true) {
					resultsList.add(currentRestIds.get(i));
				}
			}
		}

		for (int i = 0; i < currentRestIds.size(); i++) {
			// Adding the rest to list
			if (resultsList.size() == num) {
				break;
			}
			if (allRestaurants.get(currentRestIds.get(i)).getDoNotShow() == false
					&& allRestaurants.get(currentRestIds.get(i)).getFavorite() == false) {
				resultsList.add(currentRestIds.get(i));
			}
		}
		return resultsList;
	}

	public static ArrayList<Integer> resultsPageList(String query, String number)
			throws NumberFormatException, Exception {

		if (query == null || number == null) {
			// returning from other pages other than searchPage
			return listInclusions(numResults);
		} else if (query.equals(searchString) && Integer.valueOf(number) == numResults) {
			// Searching for the same term and and same number
			return listInclusions(numResults);
		} else if (query.equals(searchString) && Integer.valueOf(number) < numResults) {
			// Searching for the same term but less number
			numResults = Integer.valueOf(number);
			DatabaseDriver.sessionRestaurants(currentRestIds);
			return listInclusions(Integer.valueOf(number));

		} else {
			// Searching for more items or different terms or both
			call_me(query, Integer.valueOf(number));
			DatabaseDriver.sessionRestaurants(currentRestIds);
			return listInclusions(numResults);
		}

	}

	public static ArrayList<Integer> getFavorites() {
		//Get favorites list to display for the favorites page and update the favoritesList array in this class
		ArrayList<Integer> restInList = new ArrayList<Integer>();

		for (int i = 0; i < restIDs.size(); i++) {
			if (allRestaurants.get(restIDs.get(i)).getFavorite().equals(true)) {
				restInList.add(restIDs.get(i));
			}
			System.out.println("restaurant: " + allRestaurants.get(restIDs.get(i)).getFavorite());
		}
		System.out.println("Restaurants in List: " + restInList.size());
		favoritesList = restInList;
		return restInList;
	}

	public static ArrayList<Integer> getToExplores() {
		//Get to explore to display for the to explore page and update the toExploreList array in this class
		ArrayList<Integer> restInList = new ArrayList<Integer>();

		for (int i = 0; i < restIDs.size(); i++) {
			if (allRestaurants.get(restIDs.get(i)).getToExplore().equals(true)) {
				restInList.add(restIDs.get(i));
			}
			System.out.println("restaurant: " + allRestaurants.get(restIDs.get(i)).getToExplore());
		}
		System.out.println("Restaurants in List: " + restInList.size());
		toExploreList = restInList;
		return restInList;
	}

	public static ArrayList<Integer> getDoNotShows() {
		//Get do not show to display for the do not show page and update the doNotShowList array in this class
		ArrayList<Integer> restInList = new ArrayList<Integer>();

		for (int i = 0; i < restIDs.size(); i++) {
			if (allRestaurants.get(restIDs.get(i)).getDoNotShow().equals(true)) {
				restInList.add(restIDs.get(i));
			}
			System.out.println("restaurant: " + allRestaurants.get(restIDs.get(i)).getDoNotShow());
		}
		System.out.println("Restaurants in List: " + restInList.size());
		doNotShowList = restInList;
		return restInList;
	}

	public static void reRank() {
		//Ranking the restaurants based on driving time from Tommy T
		for (int i = 0; i < restIDs.size(); i++) {
			for (int j = i; j < restIDs.size(); j++) {
				String[] splitI = allRestaurants.get(restIDs.get(i)).getTravelTime().split(" ");
				String[] splitJ = allRestaurants.get(restIDs.get(j)).getTravelTime().split(" ");
				if (Integer.valueOf(splitJ[0]) < Integer.valueOf(splitI[0])) {
					Collections.swap(restIDs, i, j);
				}
			}
		}
		for (int i = 0; i < currentRestIds.size(); i++) {
			for (int j = i; j < currentRestIds.size(); j++) {
				String[] splitI = allRestaurants.get(currentRestIds.get(i)).getTravelTime().split(" ");
				String[] splitJ = allRestaurants.get(currentRestIds.get(j)).getTravelTime().split(" ");
				if (Integer.valueOf(splitJ[0]) < Integer.valueOf(splitI[0])) {
					Collections.swap(currentRestIds, i, j);
				}
			}
		}
	}

	private static Restaurant travelTime(double lat1, double lon1, double lat2, double lon2, String key) throws Exception {
		Restaurant tempRest = new Restaurant(1);
		
		//API call to Google Map to get driving time between two coordinates
		String link = "https://maps.googleapis.com/maps/api/directions/json?origin=";
		URL obj = new URL(link + lat1 + "," + lon1 + "&destination=" + lat2 + "," + lon2 + "&key=" + key);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		int responseCode = con.getResponseCode();

		System.out.println("\nSending 'GET' request to URL : " + link + lat1 + "," + lon1 + "&destination=" + lat2 + ","
				+ lon2 + "&key=" + key);
		System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
		JSONObject myResponse = new JSONObject(response.toString());

		String travelTime = myResponse.getJSONArray("routes").getJSONObject(0).getJSONArray("legs").getJSONObject(0)
				.getJSONObject("duration").getString("text");
		String distance = myResponse.getJSONArray("routes").getJSONObject(0).getJSONArray("legs").getJSONObject(0)
				.getJSONObject("distance").getString("text");
		tempRest.setTravelTime(travelTime);
		try {
			String[] splitStr = distance.trim().split("\\s+");
			double dist = Double.parseDouble(splitStr[0]);
			tempRest.setDistance(dist);
			System.out.println("Distance: " + dist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println(travelTime);
		
		return tempRest;
	}
	
//	private static String distrance(double lat1, double lon1, double lat2, double lon2, String key) throws Exception {
//		
//		//API call to Google Map to get driving time between two coordinates
//		String link = "https://maps.googleapis.com/maps/api/directions/json?origin=";
//		URL obj = new URL(link + lat1 + "," + lon1 + "&destination=" + lat2 + "," + lon2 + "&key=" + key);
//		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
//		con.setRequestMethod("GET");
//		int responseCode = con.getResponseCode();
//
//		System.out.println("\nSending 'GET' request to URL : " + link + lat1 + "," + lon1 + "&destination=" + lat2 + ","
//				+ lon2 + "&key=" + key);
//		System.out.println("Response Code : " + responseCode);
//
//		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
//		String inputLine;
//		StringBuffer response = new StringBuffer();
//		while ((inputLine = in.readLine()) != null) {
//			response.append(inputLine);
//		}
//		in.close();
//		JSONObject myResponse = new JSONObject(response.toString());
//
//		String travelTime = myResponse.getJSONArray("routes").getJSONObject(0).getJSONArray("legs").getJSONObject(0)
//				.getJSONObject("duration").getString("text");
//		System.out.println(travelTime);
//
//		return travelTime;
//	}
	
	
	
	public static HashMap<Integer, Restaurant> call_me(String searchTerm, int resultLimit) throws Exception {
		//This is the API call where we search restaurant closest to Tommy Trojan using the search query and 
		//Display information such as name rating, time, and address etc.
		//Used second API for gettin driving time between two coordinates
		String[] splitString = searchTerm.split(" ");
		String combinedSearch = "";
		for (int i = 0; i < splitString.length; i++) {
			combinedSearch += splitString[i];
		}

		HashMap<Integer, Restaurant> newRests = new HashMap<Integer, Restaurant>();
		ArrayList<Integer> newRestIDs = new ArrayList<Integer>();

		String fullURL = bulkURL + "&q=" + combinedSearch + "&count=" + resultLimit;
		
		URL obj = new URL(fullURL);
		//Establishing HTTP Connection with Zomato API
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
		
		//Parsing JSON from the API call
		JSONObject myResponse = new JSONObject(response.toString());
		JSONArray array = myResponse.getJSONArray("restaurants");
		System.out.println("result after Reading JSON Response");

		for (int i = 0; i < array.length(); i++) {
			JSONObject test = array.getJSONObject(i);
			JSONObject test2 = test.getJSONObject("restaurant");
			JSONObject location = test2.getJSONObject("location");
			JSONObject userRating = test2.getJSONObject("user_rating");

			Restaurant newRest = new Restaurant(test2.getInt("id"));
			
			//Setting the data members of the restaurant objects
			newRest.setName(test2.getString("name"));
			newRest.setAddress(location.getString("address"));
			newRest.setLatitude(location.getDouble("latitude"));
			newRest.setLongitude(location.getDouble("longitude"));
			newRest.setRating(userRating.getDouble("aggregate_rating"));
			newRest.setURL(test2.getString("url"));
			newRest.setPriceRange(test2.getDouble("average_cost_for_two"));
			newRest.setPhoneNumber("(213)");

			//Calling Google Map API to get driving time between two coordinates
			//Use your own google map API key for the key parameter in travelTime()
			Restaurant tempRest = travelTime(34.0224, -118.2851, newRest.getLatitude(), newRest.getLongitude(),
					"AIzaSyA8VQVUyJJIhDwm2hKITkLeCqUqyiL9Y1w");


			newRest.setTravelTime(tempRest.getTravelTime());
			newRest.setDistance(tempRest.getDistance());

			//Adding to map
			newRests.put(test2.getInt("id"), newRest);
			newRestIDs.add(test2.getInt("id"));
			
			//Adding to database
			DatabaseDriver.insertRestaurant(1, newRest);

			System.out.println(test2.get("name"));
			System.out.println("");
		}
		searchString = searchTerm;
		numResults = resultLimit;
		currentRestIds = newRestIDs;
		
		//Checking for membership in the three lists
		for (int i = 0; i < favoritesList.size(); i++) {
			if (newRests.containsKey(favoritesList.get(i))) {
				newRests.get(favoritesList.get(i)).setFavorite(true);
			}
		}
		for (int i = 0; i < toExploreList.size(); i++) {
			if (newRests.containsKey(toExploreList.get(i))) {
				newRests.get(toExploreList.get(i)).setToExplore(true);
			}
		}
		for (int i = 0; i < doNotShowList.size(); i++) {
			if (newRests.containsKey(doNotShowList.get(i))) {
				newRests.get(doNotShowList.get(i)).setDoNotShow(true);
			}
		}
		
		//Adding newly retrieved Restaurants and Ids into the old map and array and overwriting duplicates
		allRestaurants.putAll(newRests);
		restIDs.addAll(newRestIDs);
		HashSet<Integer> hs = new HashSet<Integer>();
		hs.addAll(restIDs); // willl not add the duplicate values
		restIDs.clear();
		restIDs.addAll(hs);
		
		//Ranking based on criteria provided in requirements
		reRank();
		for (int i = 0; i < restIDs.size(); i++) {
			System.out.println(restIDs.get(i));
		}
		
		//Console printout of results
		for (int i = 0; i < allRestaurants.size(); i++) {
			Restaurant newRest = allRestaurants.get(restIDs.get(i));
			System.out.println("Restaurant Name: " + newRest.getName());
			System.out.println("Restaurant Address: " + newRest.getAddress());
			System.out.println("Latitude: " + newRest.getLatitude());
			System.out.println("Longitude: " + newRest.getLongitude());
			System.out.println("Rating: " + newRest.getRating());
			System.out.println("URL: " + newRest.getURL());
			// new test below
			System.out.println("TESTING");
			System.out.println("$: " + newRest.getPriceRange());
			System.out.println("Distance: " + newRest.getTravelTime());
		}
		return allRestaurants;
	}
}