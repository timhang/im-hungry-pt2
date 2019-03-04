package API;

import java.io.*;
import java.net.*;
import java.util.ArrayList;


public class ImageAPI {
 private static final String apiKey="AIzaSyAe0O88NJ9UnjIdEzc_24QdD2hqVhbhcPM";
 private static final String baseImageURL= "https://www.googleapis.com/customsearch/v1?key=AIzaSyAe0O88NJ9UnjIdEzc_24QdD2hqVhbhcPM&cx=015413150496605702069:vfrlyji0v9m&searchType=image&callback=hndlr&q=";

 public static ArrayList<String> call_me(String query) throws Exception {


	    ArrayList<String> arr = new ArrayList<String>();
	    URL url = new URL(
	    		baseImageURL + query);
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

	    return arr;
    }
 
 
}