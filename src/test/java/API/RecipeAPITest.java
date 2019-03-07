package API;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Test;

public class RecipeAPITest {

	@Test
	public void testGetSetState() {
		RecipeAPI testObj1 = new RecipeAPI();
		testObj1.setState(false);
		assertEquals("Mismatch of state", testObj1.getState(), false);
	}

	@Test
	public void testReRank() {
		
		//the goal of this function is to rank the recipe based on prep time
		ArrayList<Integer> recipes = new ArrayList<Integer>();
		recipes.add(1);
		recipes.add(2);
		HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
		Recipe recipeOne = new Recipe(1);
		Recipe recipeTwo = new Recipe(2);
		recipeOne.setPrepTime(20);
		recipeTwo.setPrepTime(10);
		allRecipes.put(1, recipeOne);
		allRecipes.put(2, recipeTwo);
		
	
	}

	@Test
	public void testGetRecipeId() {
		
	}

	@Test
	public void testGetRecipeMap() {
		
	}

	@Test
	public void testCall_me() {
		RecipeAPI recipeAPI = new RecipeAPI();
		HashMap<Integer, Recipe> myHash = new HashMap<Integer, Recipe>();
		try {
			assertEquals("Checking the size of return recipes", recipeAPI.call_me("burger", 5).size(), 5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
