package API;

import static org.junit.Assert.*;

import java.util.HashMap;

import org.junit.Test;

public class DeleteItemTest {

 @Test
 public void testDelete() {
  
  DeleteItem deleteItemTest = new DeleteItem();
  Restaurant restaurant1 = new Restaurant(1);
  restaurant1.setName("1");
  restaurant1.setFavorite(true);
  Restaurant restaurant2 = new Restaurant(2);
  restaurant2.setFavorite(true);
  restaurant2.setName("2");
  Restaurant restaurant3 = new Restaurant(3);
  restaurant3.setFavorite(true);
  restaurant3.setName("3");
  
  Recipe recipe1 = new Recipe(4);
  recipe1.setFavorite(true);
  recipe1.setName("4");
  Recipe recipe2 = new Recipe(5);
  recipe2.setFavorite(true);
  recipe2.setName("5");
  Recipe recipe3 = new Recipe(6);
  recipe3.setFavorite(true);
  recipe3.setName("6");
  
  HashMap<Integer,Restaurant> RestaurantMap = new HashMap<Integer, Restaurant>();
  HashMap<Integer,Recipe> RecipeMap = new HashMap<Integer, Recipe>();
  RestaurantMap.put(1, restaurant1);
  RestaurantMap.put(2, restaurant2);
  RestaurantMap.put(3, restaurant3);
  RecipeMap.put(4, recipe1);
  RecipeMap.put(5, recipe2);
  RecipeMap.put(6, recipe3);
  
  RecipeAPI.setRecipeMap(RecipeMap);
  RestAPI.setRestaurantMap(RestaurantMap);
  deleteItemTest.delete("1,1,2", "2,4,5", "fav");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getFavorite());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getFavorite());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getFavorite());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getFavorite());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getFavorite());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getFavorite());
  
  deleteItemTest.delete("1", "2", "fav");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getFavorite());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getFavorite());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getFavorite());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getFavorite());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getFavorite());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getFavorite());
  
  restaurant1.setToExplore(true);
  restaurant2.setToExplore(true);
  restaurant3.setToExplore(true);
  recipe1.setToExplore(true);
  recipe2.setToExplore(true);
  recipe3.setToExplore(true);
  
  RestaurantMap.put(1, restaurant1);
  RestaurantMap.put(2, restaurant2);
  RestaurantMap.put(3, restaurant3);
  RecipeMap.put(4, recipe1);
  RecipeMap.put(5, recipe2);
  RecipeMap.put(6, recipe3);
  
  RecipeAPI.setRecipeMap(RecipeMap);
  RestAPI.setRestaurantMap(RestaurantMap);
  
  deleteItemTest.delete("1,1,2", "2,4,5", "exp");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getToExplore());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getToExplore());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getToExplore());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getToExplore());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getToExplore());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getToExplore());
  
  deleteItemTest.delete("1", "2", "exp");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getToExplore());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getToExplore());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getToExplore());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getToExplore());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getToExplore());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getToExplore());
  
  restaurant1.setDoNotShow(true);
  restaurant2.setDoNotShow(true);
  restaurant3.setDoNotShow(true);
  recipe1.setDoNotShow(true);
  recipe2.setDoNotShow(true);
  recipe3.setDoNotShow(true);
  
  RestaurantMap.put(1, restaurant1);
  RestaurantMap.put(2, restaurant2);
  RestaurantMap.put(3, restaurant3);
  RecipeMap.put(4, recipe1);
  RecipeMap.put(5, recipe2);
  RecipeMap.put(6, recipe3);
  
  RecipeAPI.setRecipeMap(RecipeMap);
  RestAPI.setRestaurantMap(RestaurantMap);
  
  deleteItemTest.delete("1,1,2", "2,4,5", "dns");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getDoNotShow());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getDoNotShow());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getDoNotShow());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getDoNotShow());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getDoNotShow());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getDoNotShow());
  
  deleteItemTest.delete("1", "2", "dns");
  
  assertEquals("Checking if restaurant1 is still in list", false, RestAPI.getRestaurantMap().get(1).getDoNotShow());
  assertEquals("Checking if restaurant2 is still in list", false, RestAPI.getRestaurantMap().get(2).getDoNotShow());
  assertEquals("Checking if restaurant3 is still in list", true, RestAPI.getRestaurantMap().get(3).getDoNotShow());
  
  assertEquals("Checking if recipe4 is still in list", false, RecipeAPI.getRecipeMap().get(4).getDoNotShow());
  assertEquals("Checking if recipe5 is still in list", false, RecipeAPI.getRecipeMap().get(5).getDoNotShow());
  assertEquals("Checking if recipe6 is still in list", true, RecipeAPI.getRecipeMap().get(6).getDoNotShow());
  //make map with a few objects s
  
  //RecipeAPI.setRecipeMap(mMap); 1,2,3,4,5,
  //deleteItemTest.delete(restIdsString, recipeIdsString, list);
  //fail("Not yet implemented");
 }
}