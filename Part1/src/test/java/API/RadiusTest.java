//package API;
//
//import static org.junit.Assert.*;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//
//import org.junit.Test;
//
//public class RadiusTest {
//
//	@Test
//	public void test() throws NumberFormatException, Exception {
//		HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
//		ArrayList<Integer> beforeRadius = RestAPI.resultsPageList("pizza", "5");
//		allRestaurants = RestAPI.getRestaurantMap();
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "2");
//			assertEquals("Number Mismatch", afterRadius.size(), 4);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				
//				assertEquals("Not within radius", (allRestaurants.get(afterRadius.get(i)).getDistance()<=2), true);
//				assertEquals("Not within radius", (allRestaurants.get(afterRadius.get(i)).getDistance()>2), false);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "1");
//			assertEquals("Number Mismatch", afterRadius.size(), 3);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				Boolean bool = (allRestaurants.get(afterRadius.get(i)).getDistance()<=2);
//				assertEquals("Not within radius", bool, true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "0");
//			assertEquals("Number Mismatch", afterRadius.size(), 0);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "3");
//			assertEquals("Number Mismatch", afterRadius.size(), 5);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				Boolean bool = (allRestaurants.get(afterRadius.get(i)).getDistance()<=3);
//				assertEquals("Not within radius", bool, true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "20");
//			assertEquals("Number Mismatch", afterRadius.size(), 5);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				Boolean bool = (allRestaurants.get(afterRadius.get(i)).getDistance()<=20);
//				assertEquals("Not within radius", bool, true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "1220");
//			assertEquals("Number Mismatch", afterRadius.size(), 5);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				Boolean bool = (allRestaurants.get(afterRadius.get(i)).getDistance()<=1220);
//				assertEquals("Not within radius", bool, true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		try {
//			ArrayList<Integer> afterRadius = RestAPI.afterRadius(beforeRadius, "20");
//			assertEquals("Number Mismatch", afterRadius.size(), 5);
//			for(int i = 0; i < afterRadius.size(); i++) {
//				Boolean bool = (allRestaurants.get(afterRadius.get(i)).getDistance()<=20);
//				assertEquals("Not within radius", bool, true);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
//
//}
