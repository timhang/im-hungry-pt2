package API;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Test;

public class RecipeAPITest {

	@Test
	public void testGetSetState() {
		//test for the getter/setter of state
		RecipeAPI testObj1 = new RecipeAPI();
		testObj1.setState(false);
		assertEquals("Mismatch of state", testObj1.getState(), false);
	}

	@Test
	public void testGetSetRecipeId() {
		RecipeAPI testObj3 = new RecipeAPI();
		ArrayList<Integer> arr = new ArrayList<Integer>();
		arr.add(1);
		testObj3.setRecipeId(arr);
		assertEquals("Mismatch on recipe id", testObj3.getRecipeId(), arr);
	}

	@Test
	public void testGetLists() {
		//test two cases; true and false scenarios
		ArrayList<Integer> recipes = new ArrayList<Integer>();
		recipes.add(1);
		recipes.add(2);
		HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
		Recipe recipeOne = new Recipe(1);
		Recipe recipeTwo = new Recipe(2);
		recipeOne.setFavorite(true);
		recipeTwo.setFavorite(false);
		recipeOne.setDoNotShow(true);
		recipeTwo.setDoNotShow(false);
		recipeOne.setToExplore(true);
		recipeTwo.setToExplore(false);
		RecipeAPI testObjA = new RecipeAPI();
		testObjA.setRecipeId(recipes);
		testObjA.setRecipeMap(allRecipes);
		allRecipes.put(1, recipeOne);
		allRecipes.put(2, recipeTwo);
		assertEquals("Mismatch on get favorites result", testObjA.getFavorites().size(), 1);
		assertEquals("Mismatch on get Do Not Show result", testObjA.getDoNotShows().size(), 1);
		assertEquals("Mismatch on get To Explore result", testObjA.getToExplores().size(), 1);
	}


	@Test
	public void testGetSetRecipeMap() {
		RecipeAPI testObj4 = new RecipeAPI();
		HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>();
		testObj4.setRecipeMap(myHash);
		assertEquals("Mismatch on recipe map", testObj4.getRecipeMap(), myHash);
	}

	@Test
	public void testCall_me() {
		RecipeAPI recipeAPI = new RecipeAPI();
		HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>();
		//non-empty resutls cases
		try {
			assertEquals("Checking the size of return recipes", recipeAPI.call_me("burger", 5).size(), 5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
