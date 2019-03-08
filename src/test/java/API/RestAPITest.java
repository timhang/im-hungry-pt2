package API;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Test;

public class RestAPITest {

	@Test
	public void testGetSetRestaurantMap() {
		RestAPI testObj1 = new RestAPI();
		HashMap<Integer, Restaurant> myHash = new HashMap<Integer, Restaurant>();
		testObj1.setRestaurantMap(myHash);
		assertEquals("Mismatch on restaurant map", testObj1.getRestaurantMap(), myHash);
	}

	@Test
	public void testGetSetState() {
		RestAPI restAPI = new RestAPI();
		restAPI.setState(true);
		assertEquals("Mismatch of restaurant state", restAPI.getState(), true);
	}


	@Test
	public void testGetSetRestIDs() {
		RestAPI testObj2 = new RestAPI();
		ArrayList<Integer> arr = new ArrayList<Integer>();
		arr.add(1);
		testObj2.setRestIDs(arr);
		testObj2.setCurrentRestIds(arr);
		assertEquals("Mismatch on restaurant restaurant id", testObj2.getRestIDs(), arr);
		assertEquals("Mismatch on current restaurant restaurant id", testObj2.getCurrentRestIds(), arr);
	}

	@Test
	public void testListInclusions() {
		RestAPI restAPI = new RestAPI();
		ArrayList<Integer> currentRestIds = new ArrayList<Integer>();
		currentRestIds.add(1);
		currentRestIds.add(2);
		currentRestIds.add(3);
		currentRestIds.add(4);
	
		HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
		Restaurant restaurantOne = new Restaurant(1);
		Restaurant restaurantTwo = new Restaurant(2);
		Restaurant restaurantThree = new Restaurant(3);
		Restaurant restaurantFour = new Restaurant(4);
		
		restaurantOne.setFavorite(true);
		restaurantTwo.setFavorite(true);
		restaurantOne.setDoNotShow(true);
		restaurantTwo.setDoNotShow(false);
		
		restaurantThree.setFavorite(false);
		restaurantFour.setFavorite(false);
		restaurantThree.setDoNotShow(true);
		restaurantFour.setDoNotShow(false);
		
		allRestaurants.put(1, restaurantOne);
		allRestaurants.put(2, restaurantTwo);
		allRestaurants.put(3, restaurantThree);
		allRestaurants.put(4, restaurantFour);
		
		restAPI.setCurrentRestIds(currentRestIds);
		restAPI.setRestaurantMap(allRestaurants);
		
		assertEquals("Mismatch on list inclusion - empty", 0, restAPI.listInclusions(0).size());
		assertEquals("Mismatch on list inclusion - non empty", 2, restAPI.listInclusions(4).size());
	}

	@Test
	public void testResultsPageList() throws NumberFormatException, Exception {
		
		RestAPI restAPI = new RestAPI();
		
		try {
			restAPI.call_me("burger", 5);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//input parameters: string query, string number
		
		//test case one: null null
		
		try {
			assertEquals("Mismatch on results page list - null tests", 5, restAPI.resultsPageList(null, null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 3, restAPI.resultsPageList("burger", "3").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 7, restAPI.resultsPageList("burger", "7").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 7, restAPI.resultsPageList(null, null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 7, restAPI.resultsPageList("sushi", "7").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 5, restAPI.resultsPageList("burger", "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 5, restAPI.resultsPageList("burger", "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(1)).setFavorite(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(1)).setToExplore(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(2)).setToExplore(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(2)).setFavorite(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(3)).setDoNotShow(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(3)).setFavorite(true);
		restAPI.getRestaurantMap().get(restAPI.resultsPageList("burger", "5").get(3)).setToExplore(true);
		
		try {
			assertEquals("Mismatch on results page list - null tests", 3, restAPI.getFavorites().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 2, restAPI.getToExplores().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 1, restAPI.getDoNotShows().size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 4, restAPI.resultsPageList(null, "5").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 4, restAPI.resultsPageList("burger", null).size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			assertEquals("Mismatch on results page list - null tests", 9, restAPI.resultsPageList("burger", "10").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			assertEquals("Mismatch on results page list - null tests", 1, restAPI.resultsPageList("burger", "1").size());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

	@Test
	public void testGetThreeLists() {
		//test two cases; true and false scenarios
//		ArrayList<Integer> restIDs = new ArrayList<Integer>();
//		restIDs.add(1);
//		restIDs.add(2);
//		HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
//		Restaurant restOne = new Restaurant(1);
//		Restaurant restTwo = new Restaurant(2);
//		restOne.setFavorite(true);
//		restTwo.setFavorite(false);
//		restOne.setDoNotShow(true);
//		restTwo.setDoNotShow(false);
//		restOne.setToExplore(true);
//		restTwo.setToExplore(false);
//		RestAPI restAPI = new RestAPI();
//		restAPI.setRestIDs(restIDs);
//		restAPI.setRestaurantMap(allRestaurants);
//		allRestaurants.put(1, restOne);
//		allRestaurants.put(2, restTwo);
//		assertEquals("Mismatch on get favorites result", restAPI.getFavorites().size(), 1);
//		assertEquals("Mismatch on get Do Not Show result", restAPI.getDoNotShows().size(), 1);
//		assertEquals("Mismatch on get To Explore result", restAPI.getToExplores().size(), 1);
	}

//	@Test
//	public void testReRank() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testCall_me() {
		RestAPI restAPI = new RestAPI();
		try {
			assertEquals("Checking the size of return restaurant", restAPI.call_me("burger", 5).size(), 5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
