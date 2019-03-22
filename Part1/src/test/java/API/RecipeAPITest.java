package API;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Test;

public class RecipeAPITest {

	@Test
	public void testGetSetState() {
		// test for the getter/setter of state
//		RecipeAPI testObj1 = new RecipeAPI();
//		testObj1.setState(false);
//		assertEquals("Mismatch of state", false, testObj1.getState());
	}

//	@Test
//	public void testReRank() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testGetterSetter() {
		// test for the getter/setter of state
//		RecipeAPI testObj2 = new RecipeAPI();
//		testObj2.setNumResults(0);
//		assertEquals("Mismatch of number results", 0, testObj2.getNumResults());
//		testObj2.setSearchString("abc");
//		assertEquals("Mismatch of search string", "abc", testObj2.getSearchString());
	}

//	@Test
//	public void testGetSetRecipeId() {
//		RecipeAPI testObj3 = new RecipeAPI();
//		ArrayList<Integer> arr = new ArrayList<Integer>();
//		arr.add(1);
//		testObj3.setRecipeId(arr);
//		assertEquals("Mismatch on recipe id", arr, testObj3.getRecipeId());
//		testObj3.setCurrentRecipeId(arr);
//		assertEquals("Mismatch on current recipe id", arr, testObj3.getCurrentRecipeId());
//	}

	/*
	 * @Test public void testListInclusions() {
	 * 
	 * RecipeAPI recipeAPI = new RecipeAPI(); ArrayList<Integer> currentRecipeIds =
	 * new ArrayList<Integer>(); currentRecipeIds.add(1); currentRecipeIds.add(2);
	 * currentRecipeIds.add(3); currentRecipeIds.add(4);
	 * 
	 * HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>(); Recipe
	 * recipeOne = new Recipe(1); Recipe recipeTwo = new Recipe(2); Recipe
	 * recipeThree = new Recipe(3); Recipe recipeFour = new Recipe(4);
	 * 
	 * recipeOne.setFavorite(true); recipeTwo.setFavorite(true);
	 * recipeOne.setDoNotShow(true); recipeTwo.setDoNotShow(false);
	 * 
	 * recipeThree.setFavorite(false); recipeFour.setFavorite(false);
	 * recipeThree.setDoNotShow(true); recipeFour.setDoNotShow(false);
	 * 
	 * allRecipes.put(1, recipeOne); allRecipes.put(2, recipeTwo); allRecipes.put(3,
	 * recipeThree); allRecipes.put(4, recipeFour);
	 * 
	 * recipeAPI.setCurrentRecipeId(currentRecipeIds);
	 * recipeAPI.setRecipeMap(allRecipes);
	 * 
	 * assertEquals("Mismatch on list inclusion - empty", 0,
	 * recipeAPI.listInclusions(0).size());
	 * assertEquals("Mismatch on list inclusion - non empty", 2,
	 * recipeAPI.listInclusions(4).size()); }
	 */

	@Test
	public void testResultsPageList() throws NumberFormatException, Exception {

		RecipeAPI recipeAPI = new RecipeAPI();

		try {
			recipeAPI.call_me("burger", 5);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5, recipeAPI.getRecipeId().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5, recipeAPI.getCurrentRecipeId().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", "burger", recipeAPI.getSearchString());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5, recipeAPI.getNumResults());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// input parameters: string query, string number
		try {
			assertEquals("Mismatch on results page list - null tests", 5, recipeAPI.resultsPageList(null, null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 3,
					recipeAPI.resultsPageList("burger", "3").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 3, recipeAPI.resultsPageList(null, null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 7,
					recipeAPI.resultsPageList("burger", "7").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 7,
					recipeAPI.resultsPageList("pizza", "7").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5,
					recipeAPI.resultsPageList("burger", "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5,
					recipeAPI.resultsPageList("burger", "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5, recipeAPI.resultsPageList(null, "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 5,
					recipeAPI.resultsPageList("burger", null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(1)).setFavorite(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(1)).setToExplore(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(2)).setToExplore(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(2)).setFavorite(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(3)).setDoNotShow(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(3)).setFavorite(true);
		recipeAPI.getRecipeMap().get(recipeAPI.resultsPageList("burger", "5").get(3)).setToExplore(true);

		try {
			assertEquals("Mismatch on results page list - null tests", 3, recipeAPI.getFavorites().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 2, recipeAPI.getToExplores().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 1, recipeAPI.getDoNotShows().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 9,
					recipeAPI.resultsPageList("burger", "10").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			assertEquals("Mismatch on results page list - null tests", 1,
					recipeAPI.resultsPageList("burger", "1").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Test
	public void testGetSetRecipeMap() {
//		RecipeAPI testObj4 = new RecipeAPI();
//		HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>();
//		testObj4.setRecipeMap(myHash);
//		assertEquals("Mismatch on recipe map", testObj4.getRecipeMap(), myHash);
	}

	/*
	 * @Test public void testCall_me() { RecipeAPI recipeAPI = new RecipeAPI();
	 * HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>(); //
	 * non-empty resutls cases try {
	 * assertEquals("Checking the size of return recipes", 5,
	 * recipeAPI.call_me("burger", 5).size()); } catch (Exception e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } }
	 */

}
