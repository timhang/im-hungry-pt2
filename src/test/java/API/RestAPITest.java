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
		assertEquals("Mismatch on restaurant recipe id", testObj2.getRestIDs(), arr);
	}

	@Test
	public void testGetThreeLists() {
		//test two cases; true and false scenarios
		ArrayList<Integer> restIDs = new ArrayList<Integer>();
		restIDs.add(1);
		restIDs.add(2);
		HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
		Restaurant restOne = new Restaurant(1);
		Restaurant restTwo = new Restaurant(2);
		restOne.setFavorite(true);
		restTwo.setFavorite(false);
		restOne.setDoNotShow(true);
		restTwo.setDoNotShow(false);
		restOne.setToExplore(true);
		restTwo.setToExplore(false);
		RestAPI restAPI = new RestAPI();
		restAPI.setRestIDs(restIDs);
		restAPI.setRestaurantMap(allRestaurants);
		allRestaurants.put(1, restOne);
		allRestaurants.put(2, restTwo);
		assertEquals("Mismatch on get favorites result", restAPI.getFavorites().size(), 1);
		assertEquals("Mismatch on get Do Not Show result", restAPI.getDoNotShows().size(), 1);
		assertEquals("Mismatch on get To Explore result", restAPI.getToExplores().size(), 1);
	}

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

