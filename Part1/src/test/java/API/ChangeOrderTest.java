package API;

import static org.junit.Assert.*;

import java.util.HashMap;

import org.junit.Before;
import org.junit.Test;

public class ChangeOrderTest {
	@Before
	public void setup() {
		
		// add items to favorites
		AddToList addToList = new AddToList();
		System.out.println("These are the items we have");
		
		// create restaurant
		Restaurant restaurant1 = new Restaurant(1);
		restaurant1.setName("1");

		// create a recipe
		Recipe recipe1 = new Recipe(3);
		recipe1.setName("3");

		// add it to map
		HashMap<Integer, Restaurant> RestaurantMap = new HashMap<Integer, Restaurant>();
		HashMap<Integer, Recipe> RecipeMap = new HashMap<Integer, Recipe>();
		RestaurantMap.put(1, restaurant1);
		RecipeMap.put(3, recipe1);

		// send maps to session
		RecipeAPI.setRecipeMap(RecipeMap);
		RestAPI.setRestaurantMap(RestaurantMap);

		addToList.add("restaurant", 1, "fav");
		addToList.add("recipe", 3, "fav");
		
		// TODO: ensure items are in the correct order
		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getFavorite());

		assertEquals("Checking if recipe3 is still in list", true, 
				RecipeAPI.getRecipeMap().get(3).getFavorite());		
	}
	
	@Test
	public void changeOrder() {
		
		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getFavorite());

		assertEquals("Checking if recipe3 is still in list", true, 
				RecipeAPI.getRecipeMap().get(3).getFavorite());
		
		// get indexes
		
		
		// change order
		
		// verify index was changed
		
	}
	
}