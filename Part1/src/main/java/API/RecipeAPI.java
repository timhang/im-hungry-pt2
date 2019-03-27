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
import org.json.JSONException;
import org.json.JSONObject;

public class RecipeAPI {
	//apiKey for the spoonacular API. Go to RapidAPI and register for a free Spoonacular API key
	private static final String apiKey = "61f3ebfe96mshef9b8dfa74f18b3p1f7946jsn0ef4f7865ac6";
	//First API to call
	private static final String baseRecipeUrl = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/search?";
	//Second API to call
	private static final String baseBulkUrl = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk?ids=";

	//all recipes (including from past searches) unique Ids stored in an array
	private static ArrayList<Integer> recipes = new ArrayList<Integer>();
	//recipes unique ids from the current search session
	private static ArrayList<Integer> currentRecipeIds = new ArrayList<Integer>();
	//hashMap mapping the unique id of each recipe to the data object recipe
	private static HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
	//search query the user last used
	private static String searchString;
	//number searched the user last entered
	private static int numResults = 0;
	
	//Ids of the recipes in the three lists
	private static ArrayList<Integer> favoritesList = new ArrayList<Integer>();
	private static ArrayList<Integer> toExploreList = new ArrayList<Integer>();
	private static ArrayList<Integer> doNotShowList = new ArrayList<Integer>();


	public static void reRank() {
		
		//This is the algorithm that ranks recipes based on prep time from least to most using bubble sort
		//Called whenever the API is called
		for (int i = 0; i < recipes.size(); i++) {
			for (int j = i; j < recipes.size(); j++) {
				System.out.println("1 - " + allRecipes.get(recipes.get(j)).getPrepTime());
				System.out.println("2 - " + allRecipes.get(recipes.get(i)).getPrepTime());
				if (allRecipes.get(recipes.get(j)).getPrepTime() < allRecipes.get(recipes.get(i)).getPrepTime()) {
					Collections.swap(recipes, i, j);
				}
			}
		}


		for (int i = 0; i < currentRecipeIds.size(); i++) {
			for (int j = i; j < currentRecipeIds.size(); j++) {
				if (allRecipes.get(currentRecipeIds.get(j)).getPrepTime() < allRecipes.get(currentRecipeIds.get(i))
						.getPrepTime()) {
					Collections.swap(currentRecipeIds, i, j);
				}
			}
		}
		for (int i = 0; i < recipes.size(); i++) {
			System.out.println(i + ". " + allRecipes.get(recipes.get(i)).getPrepTime());
		}
	}

	public static ArrayList<Integer> getRecipeId() {
		return recipes;
	}


	public static ArrayList<Integer> getCurrentRecipeId() {
		return currentRecipeIds;
	}

	public static String getSearchString() {
		return searchString;
	}

	public static int getNumResults() {
		return numResults;
	}

	public static ArrayList<Integer> listInclusions(int num) {
		//Items to include in the list to be displayed on resultsPage
		ArrayList<Integer> resultsList = new ArrayList<Integer>();

		System.out.println("Current Recipe IDs size: " + currentRecipeIds.size());
		for (int i = 0; i < currentRecipeIds.size(); i++) {
			// First time through, checking putting favorites on top and not showing do not
			// show. This is for putting favorites on top of results
			if (resultsList.size() == num) {
				break;
			}
			if (allRecipes.get(currentRecipeIds.get(i)).getDoNotShow() == false) {
				if (allRecipes.get(currentRecipeIds.get(i)).getFavorite() == true) {
					resultsList.add(currentRecipeIds.get(i));
				}
			}
		}

		for (int i = 0; i < currentRecipeIds.size(); i++) {
			// Adding the rest to list
			if (resultsList.size() == num) {
				break;
			}
			if (allRecipes.get(currentRecipeIds.get(i)).getDoNotShow() == false
					&& allRecipes.get(currentRecipeIds.get(i)).getFavorite() == false) {
				resultsList.add(currentRecipeIds.get(i));
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
			return listInclusions(Integer.valueOf(number));

		} else {
			// Searching for more items or different terms or both
			call_me(query, Integer.valueOf(number));
			return listInclusions(numResults);
		}

	}

	public static ArrayList<Integer> getFavorites() {
		//Get favorites list to display for the favorites page and update the favoritesList array in this class
		ArrayList<Integer> recipeInList = new ArrayList<Integer>();
		for (int i = 0; i < recipes.size(); i++) {
			if (allRecipes.get(recipes.get(i)).getFavorite().equals(true)) {
				recipeInList.add(recipes.get(i));
			}
			System.out.println("recipe: " + allRecipes.get(recipes.get(i)).getFavorite());
		}

		System.out.println("Recipes in List: " + recipeInList.size());
		favoritesList = recipeInList;
		return recipeInList;
	}

	public static ArrayList<Integer> getToExplores() {
		//Get to explore to display for the to explore page and update the toExploreList array in this class
		ArrayList<Integer> recipeInList = new ArrayList<Integer>();
		for (int i = 0; i < recipes.size(); i++) {
			if (allRecipes.get(recipes.get(i)).getToExplore().equals(true)) {
				recipeInList.add(recipes.get(i));
			}
			System.out.println("recipe: " + allRecipes.get(recipes.get(i)).getToExplore());
		}

		System.out.println("Recipes in List: " + recipeInList.size());
		toExploreList = recipeInList;
		return recipeInList;
	}

	public static ArrayList<Integer> getDoNotShows() {
		//Get do not show to display for the do not show page and update the doNotShowList array in this class
		ArrayList<Integer> recipeInList = new ArrayList<Integer>();
		for (int i = 0; i < recipes.size(); i++) {
			if (allRecipes.get(recipes.get(i)).getDoNotShow().equals(true)) {
				recipeInList.add(recipes.get(i));
			}
			System.out.println("recipe: " + allRecipes.get(recipes.get(i)).getDoNotShow());
		}

		System.out.println("Recipes in List: " + recipeInList.size());
		doNotShowList = recipeInList;
		return recipeInList;
	}

	public static HashMap<Integer, Recipe> getRecipeMap() {
		return allRecipes;
	}

	public static void setRecipeMap(HashMap<Integer, Recipe> mMap) {
		//for testing purposes
		allRecipes = mMap;
	}

	public static HashMap<Integer, Recipe> call_me(String searchTerm, int number) throws Exception {
		//This is the API call the the spoonacular database. It's broken down into two parts.
		//In the first part, the search terms are used to obtain recipeIds in the database related to 
		//the search terms. In the second part, the retrieve ids from the first call is used to retrieve
		//the rest of the data such as prep time, cook time from the API.
		
		//Parse the search string
		String[] splitString = searchTerm.split(" ");
		String combinedSearch = "";
		for (int i = 0; i < splitString.length; i++) {
			combinedSearch += splitString[i];
		}
		//newRecipes to add the the map and newRecipesIds
		HashMap<Integer, Recipe> newRecipes = new HashMap<Integer, Recipe>();
		ArrayList<Integer> newRecipeIds = new ArrayList<Integer>();
		
		//Establishing HTTP connection with the first API
		String url = baseRecipeUrl + "query=" + combinedSearch + "&number=" + number;
		URL obj = new URL(url);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		con.addRequestProperty("X-RapidAPI-Key", apiKey);

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'GET' request to URL : " + url);
		System.out.println("Response Code : " + responseCode);
		
		//Get response in JSON
		BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));

		// ArrayList<JSONObject> lines = new ArrayList<JSONObject>();
		String output = br.readLine();
		JSONObject jsonObj = new JSONObject(output);
		con.disconnect();

		System.out.println("Output from Server .... \n");
		
		
		//JSON Parsing
		JSONArray results = jsonObj.getJSONArray("results");
		String combinedIds = "";
		for (int i = 0; i < results.length(); i++) {
			JSONObject resultObject = results.getJSONObject(i);
			newRecipeIds.add(resultObject.getInt("id"));
			combinedIds = combinedIds + newRecipeIds.get(i);
			if (i != results.length() - 1) {
				combinedIds = combinedIds + ",";
			}
		}
		if (results.length() > 0) {
			// Using results for the previous call to get the bulk recipe information
			url = baseBulkUrl + combinedIds;
			obj = new URL(url);
			con = (HttpURLConnection) obj.openConnection();
			con.setRequestMethod("GET");
			con.addRequestProperty("X-RapidAPI-Key", apiKey);
			responseCode = con.getResponseCode();
			System.out.println("\nSending 'GET' request to URL : " + url);
			System.out.println("Response Code : " + responseCode);
			br = new BufferedReader(new InputStreamReader((con.getInputStream())));

			String bulk = br.readLine();
			JSONArray bulkObj = new JSONArray(bulk);
			con.disconnect();
			
			//Second API JSON Parsing
			for (int i = 0; i < bulkObj.length(); i++) {
				Recipe currentRecipe = new Recipe(newRecipeIds.get(i));

				// Getting star rating
				float toFloat = bulkObj.getJSONObject(i).getInt("spoonacularScore");
				currentRecipe.setStarRating(toFloat / 20);

				// Getting prep and cook time
				int prep = -1;
				int cook = -1;
				try {
					prep = bulkObj.getJSONObject(i).getInt("preparationMinutes");
					cook = bulkObj.getJSONObject(i).getInt("cookingMinutes");
				} catch (JSONException e) {
					// handle the exception
				}
				if (prep == -1) {
					prep = bulkObj.getJSONObject(i).getInt("readyInMinutes") / 2;
				}
				if (cook == -1) {
					cook = bulkObj.getJSONObject(i).getInt("readyInMinutes") / 2;
				}
				currentRecipe.setPrepTime(prep);
				currentRecipe.setCookTime(cook);

				// Getting Image URL
				currentRecipe.setImage(bulkObj.getJSONObject(i).getString("image"));

				// Getting name
				currentRecipe.setName(bulkObj.getJSONObject(i).getString("title"));
				ArrayList<String> ingredients = new ArrayList<String>();
				ArrayList<String> instructions = new ArrayList<String>();
				JSONArray extendedIngredients = bulkObj.getJSONObject(i).getJSONArray("extendedIngredients");
				JSONArray analyzedInstructions = new JSONArray();
				if (bulkObj.getJSONObject(i).getJSONArray("analyzedInstructions").length() != 0) {
					analyzedInstructions = bulkObj.getJSONObject(i).getJSONArray("analyzedInstructions")
							.getJSONObject(0).getJSONArray("steps");
				}

				System.out.println("Name: " + currentRecipe.getName() + "\nStars: " + currentRecipe.getStarRating()
						+ "\nprepTime: " + currentRecipe.getPrepTime() + "\ncookTime: " + currentRecipe.getCookTime()
						+ "\nimg: " + currentRecipe.getImage());

				// Getting ingredients
				System.out.print("Ingredients: ");
				for (int j = 0; j < extendedIngredients.length(); j++) {
					if (j % 3 == 0) {
						System.out.println("");
					}
					ingredients.add(extendedIngredients.getJSONObject(j).getString("name"));
					System.out.print(ingredients.get(j) + ", ");
				}
				System.out.println("");
				currentRecipe.setIngredients(ingredients);

				// Getting Instructions
				int numOfInstructions = 0;
				if (analyzedInstructions.length() > 10) {
					numOfInstructions = 10;
				} else {
					numOfInstructions = analyzedInstructions.length();
				}
				System.out.println("Instructions: ");
				for (int j = 0; j < numOfInstructions; j++) {
					instructions.add(analyzedInstructions.getJSONObject(j).getString("step"));
					System.out.println((j + 1) + ". " + instructions.get(j));
				}
				System.out.println("");
				currentRecipe.setInstructions(instructions);

				// Setting List States
				currentRecipe.setDoNotShow(false);
				currentRecipe.setFavorite(false);

				// Adding to map
				newRecipes.put(currentRecipe.getId(), currentRecipe);

			}
			//Setting the searchString field to user's last entered search
			searchString = searchTerm;
			numResults = number;
			currentRecipeIds = newRecipeIds;
			
			//Check if any of the newly retrieved objects were in any of the three lists, if so, set to true their state in list
			for (int i = 0; i < favoritesList.size(); i++) {
				if (newRecipes.containsKey(favoritesList.get(i))) {
					newRecipes.get(favoritesList.get(i)).setFavorite(true);
				}
			}
			for (int i = 0; i < toExploreList.size(); i++) {
				if (newRecipes.containsKey(toExploreList.get(i))) {
					newRecipes.get(toExploreList.get(i)).setToExplore(true);
				}
			}
			for (int i = 0; i < doNotShowList.size(); i++) {
				if (newRecipes.containsKey(doNotShowList.get(i))) {
					newRecipes.get(doNotShowList.get(i)).setDoNotShow(true);
				}
			}
			
			//Combined the newly retrieved recipe maps with the old recipe map, overwriting duplicates
			allRecipes.putAll(newRecipes);
			
			//Combined the newly retrieved recipe ids with the old object ids, overwriting duplicates
			recipes.addAll(newRecipeIds);
			HashSet<Integer> hs = new HashSet<Integer>();
			hs.addAll(recipes); // willl not add the duplicate values
			recipes.clear();
			recipes.addAll(hs);

			//Ranking based on the criteria provided in the requirements
			reRank();
		}

		return allRecipes;

	}

}