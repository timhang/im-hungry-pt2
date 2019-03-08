package API;

import java.io.*;
import java.net.*;
import java.util.ArrayList;


public class ImageAPI {
 //private static final String apiKey="AIzaSyAe0O88NJ9UnjIdEzc_24QdD2hqVhbhcPM";
 private static final String baseImageURL= "https://www.googleapis.com/customsearch/v1?key=AIzaSyAe0O88NJ9UnjIdEzc_24QdD2hqVhbhcPM&cx=015413150496605702069:vfrlyji0v9m&searchType=image&callback=hndlr&q=";
 private static Boolean state = false;
 private static ArrayList<String> imageArray;
 private static String searchTerm;
 
 public static void setSearchTerm(String st) {
	 searchTerm = st;
 }
 
 public static String getSearchTerm() {
	 return searchTerm;
 }
 
public static ArrayList<String> getImageArray(){
	return imageArray;
}
 
 public static Boolean getState() {
	 return state;
 }
 
 public static void setState(Boolean called) {
	 state = called;
 }
 
 public static ArrayList<String> getImagesToDisplay(String search) throws Exception {
	 if(search == null){
		 return imageArray;
	 } else if (search.equals(searchTerm)){
		 return imageArray;
	 } else {
		 return call_me(search);
	 }
 }
 
 public static ArrayList<String> call_me(String query) throws Exception {
	 	String[] splitString = query.split(" ");
		String combinedSearch = "";
		for(int i = 0; i<splitString.length; i++) {
			combinedSearch += splitString[i];
		}

	    ArrayList<String> arr = new ArrayList<String>();
	    URL url = new URL(
	    		baseImageURL + combinedSearch);
	    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	    conn.setRequestMethod("GET");
	    conn.setRequestProperty("Accept", "application/json");
	    BufferedReader br = new BufferedReader(new InputStreamReader(
	            (conn.getInputStream())));

	    String output;
	    System.out.println("Output from Server .... \n");
	    while ((output = br.readLine()) != null) {

	        if(output.contains("\"link\": \"")){                
	            String link=output.substring(output.indexOf("\"link\": \"")+("\"link\": \"").length(), output.indexOf("\","));
	            System.out.println(link);       //Will print the google search links
	            arr.add(link);
	        }     
	    }
	    conn.disconnect(); 
	    searchTerm = query;
	    imageArray = arr;
	    return imageArray;
    }
 
 
}
