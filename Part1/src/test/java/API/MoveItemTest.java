package API;

import static org.junit.Assert.*;

import java.util.HashMap;

import org.junit.Test;

public class MoveItemTest {

	@Test
	public void testMove() {

		MoveItem moveItem = new MoveItem();
		Restaurant restaurant1 = new Restaurant(1);
		restaurant1.setName("1");
		restaurant1.setFavorite(true);
		Restaurant restaurant2 = new Restaurant(2);
		restaurant2.setFavorite(true);
		restaurant2.setName("2");

		Recipe recipe1 = new Recipe(3);
		recipe1.setFavorite(true);
		recipe1.setName("3");
		Recipe recipe2 = new Recipe(4);
		recipe2.setFavorite(true);
		recipe2.setName("4");

		HashMap<Integer, Restaurant> RestaurantMap = new HashMap<Integer, Restaurant>();
		HashMap<Integer, Recipe> RecipeMap = new HashMap<Integer, Recipe>();
		RestaurantMap.put(1, restaurant1);
		RestaurantMap.put(2, restaurant2);
		RecipeMap.put(3, recipe1);
		RecipeMap.put(4, recipe2);

		RecipeAPI.setRecipeMap(RecipeMap);
		RestAPI.setRestaurantMap(RestaurantMap);
		// On front end prevented same list
//  moveItem.move("1,1,2", "2,3,4", "fav","1");
//  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getFavorite());
//  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getFavorite());
//  
//  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(3).getFavorite());
//  assertEquals("Checking if recipe5 is still in list", true, RecipeAPI.getRecipeMap().get(4).getFavorite());

		// fav -> exp
		/*
		 * restaurant1.setFavorite(true); restaurant2.setFavorite(true);
		 * recipe1.setFavorite(true); recipe2.setFavorite(true); RestaurantMap.put(1,
		 * restaurant1); RestaurantMap.put(2, restaurant2); RecipeMap.put(3, recipe1);
		 * RecipeMap.put(4, recipe2); RecipeAPI.setRecipeMap(RecipeMap);
		 * RestAPI.setRestaurantMap(RestaurantMap);
		 */

		moveItem.move("1,1,2", "2,3,4", "fav", "2");
		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getFavorite());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getFavorite());

		assertEquals("Checking if recipe3 is still in list", false, RecipeAPI.getRecipeMap().get(3).getFavorite());
		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getFavorite());

		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getToExplore());
		assertEquals("Checking if restaurant2 is still in list", true,
				RestAPI.getRestaurantMap().get(2).getToExplore());

		assertEquals("Checking if recipe3 is still in list", true, RecipeAPI.getRecipeMap().get(3).getToExplore());
		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(4).getToExplore());

		moveItem.move("1,1,2", "2,3,4", "exp", "1");
		assertEquals("Checking if restaurant1 is still in list", true, RestAPI.getRestaurantMap().get(1).getFavorite());
		assertEquals("Checking if restaurant2 is still in list", true, RestAPI.getRestaurantMap().get(2).getFavorite());

		assertEquals("Checking if recipe3 is still in list", true, RecipeAPI.getRecipeMap().get(3).getFavorite());
		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(4).getFavorite());

		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getToExplore());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getToExplore());

		assertEquals("Checking if recipe3 is still in list", false, RecipeAPI.getRecipeMap().get(3).getToExplore());
		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getToExplore());

		// fav -> dns
		restaurant1.setFavorite(true);
		restaurant2.setFavorite(true);
		recipe1.setFavorite(true);
		recipe2.setFavorite(true);
		restaurant1.setToExplore(false);
		restaurant2.setFavorite(false);
		recipe1.setFavorite(false);
		recipe2.setFavorite(false);
		RestaurantMap.put(1, restaurant1);
		RestaurantMap.put(2, restaurant2);
		RecipeMap.put(3, recipe1);
		RecipeMap.put(4, recipe2);
		RecipeAPI.setRecipeMap(RecipeMap);
		RestAPI.setRestaurantMap(RestaurantMap);

		moveItem.move("1,1,2", "2,3,4", "fav", "3");
		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getFavorite());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getFavorite());

		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(3).getFavorite());
		assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(4).getFavorite());

		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getDoNotShow());
		assertEquals("Checking if restaurant2 is still in list", true,
				RestAPI.getRestaurantMap().get(2).getDoNotShow());

		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(3).getDoNotShow());
		assertEquals("Checking if recipe5 is still in list", true, RecipeAPI.getRecipeMap().get(4).getDoNotShow());

		moveItem.move("1,1,2", "2,3,4", "dns", "1");
		assertEquals("Checking if restaurant1 is still in list", true, RestAPI.getRestaurantMap().get(1).getFavorite());
		assertEquals("Checking if restaurant2 is still in list", true, RestAPI.getRestaurantMap().get(2).getFavorite());

		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(3).getFavorite());
		assertEquals("Checking if recipe5 is still in list", true, RecipeAPI.getRecipeMap().get(4).getFavorite());

		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getDoNotShow());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getDoNotShow());

		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(3).getDoNotShow());
		assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(4).getDoNotShow());
		// fail("Not yet implemented");

		restaurant1.setToExplore(true);
		restaurant2.setToExplore(true);
		recipe1.setToExplore(true);
		recipe2.setToExplore(true);
		restaurant1.setDoNotShow(false);
		restaurant2.setDoNotShow(false);
		recipe1.setDoNotShow(false);
		recipe2.setDoNotShow(false);
		RestaurantMap.put(1, restaurant1);
		RestaurantMap.put(2, restaurant2);
		RecipeMap.put(3, recipe1);
		RecipeMap.put(4, recipe2);
		RecipeAPI.setRecipeMap(RecipeMap);
		RestAPI.setRestaurantMap(RestaurantMap);

		moveItem.move("1,1,2", "2,3,4", "exp", "3");
		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getToExplore());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getToExplore());

		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(3).getToExplore());
		assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(4).getToExplore());

		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getDoNotShow());
		assertEquals("Checking if restaurant2 is still in list", true,
				RestAPI.getRestaurantMap().get(2).getDoNotShow());

		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(3).getDoNotShow());
		assertEquals("Checking if recipe5 is still in list", true, RecipeAPI.getRecipeMap().get(4).getDoNotShow());

		moveItem.move("1,1,2", "2,3,4", "dns", "2");
		assertEquals("Checking if restaurant1 is still in list", false,
				RestAPI.getRestaurantMap().get(1).getDoNotShow());
		assertEquals("Checking if restaurant2 is still in list", false,
				RestAPI.getRestaurantMap().get(2).getDoNotShow());

		assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(3).getDoNotShow());
		assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(4).getDoNotShow());

		assertEquals("Checking if restaurant1 is still in list", true,
				RestAPI.getRestaurantMap().get(1).getToExplore());
		assertEquals("Checking if restaurant2 is still in list", true,
				RestAPI.getRestaurantMap().get(2).getToExplore());

		assertEquals("Checking if recipe4 is still in list", true, RecipeAPI.getRecipeMap().get(3).getToExplore());
		assertEquals("Checking if recipe5 is still in list", true, RecipeAPI.getRecipeMap().get(4).getToExplore());

	}

}
