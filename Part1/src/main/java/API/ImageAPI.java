package API;

import java.io.*;
import java.net.*;
import java.util.ArrayList;

public class ImageAPI {
	// private static final String apiKey="";
	
	//Insert your own Google Search API key after key=
	//This is the base URL without the search terms
	private static String key = "AIzaSyAe0O88NJ9UnjIdEzc_24QdD2hqVhbhcPM";
	
	private static final String baseImageURL = "https://www.googleapis.com/customsearch/v1?key="+ key +"&cx=015413150496605702069:vfrlyji0v9m&searchType=image&callback=hndlr&q=";
	private static Boolean state = false;
	
	//Array of images to display
	private static ArrayList<String> imageArray;
	//Last term searched by user
	private static String searchTerm;

	public static void setSearchTerm(String st) {
		searchTerm = st;
	}

	public static String getSearchTerm() {
		return searchTerm;
	}

	public static ArrayList<String> getImageArray() {
		return imageArray;
	}

	public static Boolean getState() {
		return state;
	}

	public static void setState(Boolean called) {
		state = called;
	}

	public static ArrayList<String> getImagesToDisplay(String search) throws Exception {
		//This is the logic that determines if we need to call the API via call_me or just display the imageArray in storage
		if (search == null) { //this is the case where user come from any other page but the searchPage to resultsPage
			return imageArray;
		} else if (search.equals(searchTerm)) { //This is the case where user enters the same search term as last time.
			return imageArray;
		} else { // if user enters a different search term than last time or if user searched for the first time call API
			return call_me(search);
		}
	}

	public static ArrayList<String> call_me(String query) throws Exception {
		//Calling google custom search API
		
		String[] splitString = query.split(" ");
		String combinedSearch = "";
		//Parsing input string
		for (int i = 0; i < splitString.length; i++) {
			combinedSearch += splitString[i];
		}

		ArrayList<String> arr = new ArrayList<String>();
		
		//Establishing HTTP connection with the API
		URL url = new URL(baseImageURL + combinedSearch);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Accept", "application/json");
		
		//getting the JSON response
		BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));
		
		String output;
		System.out.println("Output from Server .... \n");
		
		//Parsing the image URLs and putting them in the image array
		while ((output = br.readLine()) != null) {

			if (output.contains("\"link\": \"")) {
				String link = output.substring(output.indexOf("\"link\": \"") + ("\"link\": \"").length(),
						output.indexOf("\","));
				System.out.println(link); // Will print the google search links
				arr.add(link);
			}
		}
		conn.disconnect();
		searchTerm = query;
		imageArray = arr;
		return imageArray;
	}

}
