package API;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RecipeAPI {
	private static final String apiKey="61f3ebfe96mshef9b8dfa74f18b3p1f7946jsn0ef4f7865ac6";
	private static final String baseRecipeUrl= "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/search?";
	private static final String baseBulkUrl = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk?ids=";
	private static ArrayList<Integer> recipes = new ArrayList<Integer>();
	private static HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
	private static Boolean state = false;

//	public static void main (String[] args) {
//		try {
//			RecipeAPI.call_me("burger",3);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	public static Boolean getState() {
		return state;
	}
	
	public static void setState(Boolean called) {
		state = called;
	}
	
	public static void reRank() {
		for(int i = 0; i < recipes.size(); i++) {
			for(int j = i; j < recipes.size(); j++) {
				if(allRecipes.get(recipes.get(j)).getPrepTime() < allRecipes.get(recipes.get(i)).getPrepTime()) {
					Collections.swap(recipes, i, j);
				}
			}
		}
		for(int i = 0; i < recipes.size(); i++) {
			System.out.println(i+". "+allRecipes.get(recipes.get(i)).getPrepTime());
		}
	}
	
	public static ArrayList<Integer> getRecipeId(){
		return recipes;
	}
	
	public static HashMap<Integer, Recipe> getRecipeMap(){
		return allRecipes;
	}
	public static HashMap<Integer, Recipe> call_me(String searchTerm, int number) throws Exception {
		HashMap<Integer, Recipe> newRecipes = new HashMap<Integer, Recipe>();
		ArrayList<Integer> newRecipeIds= new ArrayList<Integer>();
		
	    String url = baseRecipeUrl+"query="+searchTerm+"&number="+number;
	    URL obj = new URL(url);
	    HttpURLConnection con = (HttpURLConnection) obj.openConnection();
	    // optional default is GET
	    con.setRequestMethod("GET");
	    con.addRequestProperty("X-RapidAPI-Key", apiKey);
//	    //add request header
//	    con.setRequestProperty("User-Agent", "Mozilla/5.0");
	    int responseCode = con.getResponseCode();
	    System.out.println("\nSending 'GET' request to URL : " + url);
	    System.out.println("Response Code : " + responseCode);
//	    BufferedReader in = new BufferedReader(
//	             new InputStreamReader(con.getInputStream()));
//		
     	BufferedReader br = new BufferedReader(new InputStreamReader(
	            (con.getInputStream())));
     
        //ArrayList<JSONObject> lines = new ArrayList<JSONObject>();
	    String output = br.readLine();
	    JSONObject jsonObj = new JSONObject(output);
	    con.disconnect();
	    
	    System.out.println("Output from Server .... \n");

	    JSONArray results =  jsonObj.getJSONArray("results");
	    String combinedIds = "";
	    for(int i = 0; i< results.length() ;i ++) {
	    	JSONObject resultObject = results.getJSONObject(i);
	    	newRecipeIds.add(resultObject.getInt("id"));
	    	combinedIds = combinedIds + newRecipeIds.get(i);
	    	if(i!=results.length()-1) {
	    		combinedIds = combinedIds + ",";
	    	}
	    }
	    
	    //Using results for the previous call to get the bulk recipe information
	    url = baseBulkUrl + combinedIds;
	    obj = new URL(url);
	    con = (HttpURLConnection) obj.openConnection();
	    con.setRequestMethod("GET");
	    con.addRequestProperty("X-RapidAPI-Key", apiKey);
	    responseCode = con.getResponseCode();
	    System.out.println("\nSending 'GET' request to URL : " + url);
	    System.out.println("Response Code : " + responseCode);
	    br = new BufferedReader(new InputStreamReader(
	            (con.getInputStream())));
	    
	    
	    
	    String bulk = br.readLine();
	    JSONArray bulkObj = new JSONArray(bulk);
	    con.disconnect();
	    
	    for(int i = 0; i < bulkObj.length(); i++) {
	    	Recipe currentRecipe = new Recipe(newRecipeIds.get(i));
	    	
	    	//Getting star rating
	    	float toFloat = bulkObj.getJSONObject(i).getInt("spoonacularScore");
	    	currentRecipe.setStarRating(toFloat/20);
	    	
	    	//Getting prep and cook time
	    	int prep = -1;
	    	int cook = -1;
	    	try {
	    		prep = bulkObj.getJSONObject(i).getInt("preparationMinutes");
	    		cook = bulkObj.getJSONObject(i).getInt("cookingMinutes");
	    	} catch (JSONException e)
	    	{
	    		//handle the exception 
	    	}
	    	if(prep == -1) {
	    		prep = bulkObj.getJSONObject(i).getInt("readyInMinutes")/2;
	    	}
	    	if(cook == -1) {
	    		cook = bulkObj.getJSONObject(i).getInt("readyInMinutes")/2;
	    	}
	    	currentRecipe.setPrepTime(prep);
	    	currentRecipe.setCookTime(cook);
	    	
	    	//Getting Image URL
	    	currentRecipe.setImage(bulkObj.getJSONObject(i).getString("image"));
	    	
	    	//Getting name
	    	currentRecipe.setName(bulkObj.getJSONObject(i).getString("title"));
	    	ArrayList<String> ingredients = new ArrayList<String>();
	    	ArrayList<String> instructions = new ArrayList<String>();
	    	JSONArray extendedIngredients = bulkObj.getJSONObject(i).getJSONArray("extendedIngredients");
	    	JSONArray analyzedInstructions = new JSONArray();
	    	if(bulkObj.getJSONObject(i).getJSONArray("analyzedInstructions").length()!=0) {
	    		analyzedInstructions = bulkObj.getJSONObject(i).getJSONArray("analyzedInstructions").getJSONObject(0).getJSONArray("steps");
	    	}
	    	
	    	System.out.println("Name: "+ currentRecipe.getName() + "\nStars: " + currentRecipe.getStarRating() + "\nprepTime: " + currentRecipe.getPrepTime()+"\ncookTime: "+ currentRecipe.getCookTime()+ "\nimg: "+currentRecipe.getImage());
	    	
	    	//Getting ingredients
	    	System.out.print("Ingredients: ");
	    	for(int j = 0; j< extendedIngredients.length();j++) {
	    		if(j%3 == 0) {
	    			System.out.println("");
	    		}
	    		ingredients.add(extendedIngredients.getJSONObject(j).getString("name"));
	    		System.out.print(ingredients.get(j)+ ", ");
	    	}
	    	System.out.println("");
	    	currentRecipe.setIngredients(ingredients);
	    	
	    	
	    	//Getting Instructions
	    	int numOfInstructions = 0;
	    	if(analyzedInstructions.length() > 10) {
	    		numOfInstructions = 10;
	    	} else {
	    		numOfInstructions = analyzedInstructions.length();
	    	}
	    	System.out.println("Instructions: ");
	    	for(int j = 0; j< numOfInstructions;j++) {
	    		instructions.add(analyzedInstructions.getJSONObject(j).getString("step"));
	    		System.out.println((j+1)+". "+instructions.get(j));
	    	}
	    	System.out.println("");
	    	currentRecipe.setInstructions(instructions);
	    	
	    	//Setting List States
	    	currentRecipe.setDoNotShow(false);
	    	currentRecipe.setFavorite(false);
	    	
	    	//Adding to map
	    	newRecipes.put(currentRecipe.getId(), currentRecipe);
	    	
	    	
	    }
	    recipes = newRecipeIds;
	    allRecipes = newRecipes;
	    reRank();
	    return allRecipes;



	}
	
	
}