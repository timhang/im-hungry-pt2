package API;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.Test;

import API.DatabaseDriver.lists;

import org.json.*;

public class DatabaseDriverTest {

	@Test
	public void test() throws Exception {
		DatabaseDriver dbdriver = new DatabaseDriver();
//		Recipe testObj1 = new Recipe(101041);
//		testObj1.setStarRating(3.85f);
//		testObj1.setName("pizza");
//		testObj1.setImage("imgURL");
//		testObj1.setPrepTime(10);
//		testObj1.setCookTime(20);
//		ArrayList<String> arr1 = new ArrayList<String>();
//		arr1.add("magicIngredients");
//		testObj1.setIngredients(arr1);
//		ArrayList<String> arr2 = new ArrayList<String>();
//		arr2.add("magicInstructions");
//		testObj1.setInstructions(arr2);
//		testObj1.setDoNotShow(true);
//		testObj1.setFavorite(true);
//		
//		Restaurant testObj2 = new Restaurant(10101);
//		testObj2.setName("Top Restaurant");
//		testObj2.setAddress("Street");
//		testObj2.setPhoneNumber("213323");
//		testObj2.setURL("4399.com");
//		testObj2.setTravelTime("5 mins");
//		testObj2.setRating(5.0);
//		testObj2.setLatitude(1.0);
//		testObj2.setLongitude(2.0);
//		testObj2.setPriceRange(10.0);
//		
//		
//		dbdriver.insertRecipe(1, testObj1);
//		dbdriver.insertRestaurant(1, testObj2);
		//JSONArray newArray = dbdriver.getSessions();
		dbdriver.AddRecipeToList(12345, lists.favorites);
		//System.out.println(newArray.toString());
	}

}
