package API;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class ImageAPITest {
	
	@Test
	public void testSetSearchTerm() {
		ImageAPI testObj = new ImageAPI();
		testObj.setSearchTerm("Sushi");
		boolean test = ( "Sushi".equals(testObj.getSearchTerm()));
		assertTrue(test);
	}

	@Test
	public void testGetImageArray() {
		
		ImageAPI testObj = new ImageAPI();
		//Default set to null
		assertEquals("Default to be null", null, testObj.getImageArray());
		//Not default case
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
	public void testGetState() {
		ImageAPI testObj = new ImageAPI();
		testObj.setState(false);
		assertEquals("State is wrong", testObj.getState(), false);
	}

	@Test
	public void testCall_me() {
		ImageAPI testObj = new ImageAPI();
		//return type should be an array list of size 10
		try {
			assertEquals("Checking the size of return images", testObj.call_me("burger").size(), 10);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
