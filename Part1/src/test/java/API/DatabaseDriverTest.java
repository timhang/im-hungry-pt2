package API;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.Test;

public class DatabaseDriverTest {

	@Test
	public void test() {
		DatabaseDriver dbdriver = new DatabaseDriver();
		Recipe testObj1 = new Recipe(10102);
		testObj1.setStarRating(3.85f);
		testObj1.setName("pizza");
		testObj1.setImage("imgURL");
		testObj1.setPrepTime(10);
		testObj1.setCookTime(20);
		ArrayList<String> arr1 = new ArrayList<String>();
		arr1.add("magicIngredients");
		testObj1.setIngredients(arr1);
		ArrayList<String> arr2 = new ArrayList<String>();
		arr2.add("magicInstructions");
		testObj1.setInstructions(arr2);
		testObj1.setDoNotShow(true);
		testObj1.setFavorite(true);
		
//		public void testRecipeConstructor() {
//
//			Recipe testObj1 = new Recipe(1);
//			assertEquals("Mismatch on id", testObj1.getId(), 1);
//		}
//
//		@Test
//		public void testSetName() {
//			Recipe testObj2 = new Recipe(2);
//			testObj2.setName("Delta");
//			assertEquals("Mismatch on recipe name", testObj2.getName(), "Delta");
//		}
//
//		@Test
//		public void testSetImage() {
//			Recipe testObj3 = new Recipe(3);
//			testObj3.setImage("Img");
//			assertEquals("Mismatch on recipe image", testObj3.getImage(), "Img");
//		}
//
//		@Test
//		public void testSetPrepCookTime() {
//			Recipe testObj4 = new Recipe(4);
//			testObj4.setPrepTime(10);
//			testObj4.setCookTime(20);
//			assertEquals("Mismatch on recipe cook time", testObj4.getCookTime(), 20);
//			assertEquals("Mismatch on recipe prep time", testObj4.getPrepTime(), 10);
//		}
//
//		@Test
//		public void testSetStarRating() {
//			Recipe testObj5 = new Recipe(5);
//			testObj5.setStarRating(2.0f);
//			Assert.assertEquals("Mismatch on recipe star rating", testObj5.getStarRating(), 2.0f, 0.0f);
//		}
//
//		@Test
//		public void testSetIngredients() {
//			Recipe testObj6 = new Recipe(6);
//			ArrayList<String> arr = new ArrayList<String>();
//			arr.add("magic ingredients");
//			testObj6.setIngredients(arr);
//			assertEquals("Mismatch on recipe ingredients", testObj6.getIngredients(), arr);
//		}
//
//		@Test
//		public void testSetInstructions() {
//			Recipe testObj7 = new Recipe(7);
//			ArrayList<String> arr = new ArrayList<String>();
//			arr.add("magic instruction");
//			testObj7.setInstructions(arr);
//			assertEquals("Mismatch on recipe instruction", testObj7.getInstructions(), arr);
//		}
//
//		@Test
//		public void testSetDoNotShowFavorite() {
//			Recipe testObj8 = new Recipe(8);
//			testObj8.setDoNotShow(true);
//			testObj8.setFavorite(false);
//			assertEquals("Mismatch on recipe do not show", testObj8.getDoNotShow(), true);
//			assertEquals("Mismatch on recipe favorite", testObj8.getFavorite(), false);
//		}
		
		
		dbdriver.insertRecipe(1, testObj1);
	}

}
