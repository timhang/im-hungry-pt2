package API;

import static org.junit.Assert.*;

import org.junit.Test;

public class RestAPITest {

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
