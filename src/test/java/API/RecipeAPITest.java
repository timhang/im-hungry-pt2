package API;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Test;

public class RecipeAPITest {

	@Test
	public void testGetSetState() {
		// test for the getter/setter of state
		RecipeAPI testObj1 = new RecipeAPI();
		testObj1.setState(false);
		assertEquals("Mismatch of state", false, testObj1.getState());
	}

//	@Test
//	public void testReRank() {
//		fail("Not yet implemented");
//	}
	
	@Test
	public void testGetterSetter() {
		// test for the getter/setter of state
		RecipeAPI testObj2 = new RecipeAPI();
		testObj2.setNumResults(0);
		assertEquals("Mismatch of number results", 0, testObj2.getNumResults());
		testObj2.setSearchString("abc");
		assertEquals("Mismatch of search string", "abc", testObj2.getSearchString());
	}

	@Test
	public void testGetSetRecipeId() {
		RecipeAPI testObj3 = new RecipeAPI();
		ArrayList<Integer> arr = new ArrayList<Integer>();
		arr.add(1);
		testObj3.setRecipeId(arr);
		assertEquals("Mismatch on recipe id", arr, testObj3.getRecipeId());
		testObj3.setCurrentRecipeId(arr);
		assertEquals("Mismatch on current recipe id", arr, testObj3.getCurrentRecipeId());
	}


	/*
	@Test
	public void testListInclusions() {
		
		RecipeAPI recipeAPI = new RecipeAPI();
		ArrayList<Integer> currentRecipeIds = new ArrayList<Integer>();
		currentRecipeIds.add(1);
		currentRecipeIds.add(2);
		currentRecipeIds.add(3);
		currentRecipeIds.add(4);
	
		HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
		Recipe recipeOne = new Recipe(1);
		Recipe recipeTwo = new Recipe(2);
		Recipe recipeThree = new Recipe(3);
		Recipe recipeFour = new Recipe(4);
		
		recipeOne.setFavorite(true);
		recipeTwo.setFavorite(true);
		recipeOne.setDoNotShow(true);
		recipeTwo.setDoNotShow(false);
		
		recipeThree.setFavorite(false);
		recipeFour.setFavorite(false);
		recipeThree.setDoNotShow(true);
		recipeFour.setDoNotShow(false);
		
		allRecipes.put(1, recipeOne);
		allRecipes.put(2, recipeTwo);
		allRecipes.put(3, recipeThree);
		allRecipes.put(4, recipeFour);
		
		recipeAPI.setCurrentRecipeId(currentRecipeIds);
		recipeAPI.setRecipeMap(allRecipes);
		
		assertEquals("Mismatch on list inclusion - empty", 0, recipeAPI.listInclusions(0).size());
		assertEquals("Mismatch on list inclusion - non empty", 2, recipeAPI.listInclusions(4).size());
	}
	*/

	@Test
	public void testResultsPageList() {
		
		
		RecipeAPI recipeAPI = new RecipeAPI();
		
		
		try {
			recipeAPI.call_me("burger", 5);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//input parameters: string query, string number
		
		
		
		
		
		
	}

	@Test
	public void testGetLists() {
		// test two cases; true and false scenarios
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
		allRecipes.put(1, recipeOne);
		allRecipes.put(2, recipeTwo);
		
		testObjA.setRecipeId(recipes);
		testObjA.setRecipeMap(allRecipes);
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
	
	
	/*
	@Test
	public void testCall_me() {
		RecipeAPI recipeAPI = new RecipeAPI();
		HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>();
		// non-empty resutls cases
		try {
			assertEquals("Checking the size of return recipes", 5, recipeAPI.call_me("burger", 5).size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	*/

}
