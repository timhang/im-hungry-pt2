package API;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class ImageAPITest {

	@Test
	public void testGetSetSearchTerm() {
		ImageAPI testObj = new ImageAPI();
		testObj.setSearchTerm("Sushi");
		boolean test = ("Sushi".equals(testObj.getSearchTerm()));
		assertTrue(test);
	}

	@Test
	public void testGetImageArray() {
		ImageAPI testObj = new ImageAPI();
		// Not default case
		ArrayList<String> arr = new ArrayList<String>();
		try {
			arr = testObj.call_me("Sushi");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("Mismatch on ImageArray", arr, testObj.getImageArray());
	}

	@Test
	public void testGetSetState() {
		ImageAPI testObj = new ImageAPI();
		testObj.setState(false);
		assertEquals("State is wrong", testObj.getState(), false);
	}

	@Test
	public void testGetImagesToDisplay() {
		ImageAPI testObj = new ImageAPI();
		String searchTermZero = "";
		String searchTermTwo = "pizza";

		ArrayList<String> arr = new ArrayList<String>();
		try {
			assertEquals("Checking the size of return images from display", 10,
					testObj.getImagesToDisplay(searchTermTwo).size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		ImageAPI.setSearchTerm("pizza");
		try {
			assertEquals("Checking the size of return images from display, repearted search term", 10,
					testObj.getImagesToDisplay(searchTermTwo).size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			assertEquals("Checking the size of return images from display", 10,
					testObj.getImagesToDisplay(null).size());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Test
	public void testCall_me() {
		ImageAPI testObj = new ImageAPI();
		// return type should be an array list of size 10
		try {
			assertEquals("Checking the size of return images", testObj.call_me("burger").size(), 10);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
