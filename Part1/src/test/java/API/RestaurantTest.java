package API;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;

public class RestaurantTest {

	@Test
	public void testRestaurant() {
		Restaurant testObj1 = new Restaurant(1);
		assertEquals("Mismatch on id", testObj1.getID(), 1);
	}

	@Test
	public void testSetName() {
		Restaurant testObj2 = new Restaurant(2);
		testObj2.setName("Top Restaurant");
		assertEquals("Mismatch on rest name", testObj2.getName(), "Top Restaurant");
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testSetAddress() {
		Restaurant testObj3 = new Restaurant(3);
		testObj3.setAddress("1234");
		testObj3.setDistance(5);
		assertEquals("Mismatch on address", testObj3.getAddress(), "1234");
		assertEquals("Mismatch on address",(testObj3.getDistance()), 5);
	}

	@Test
	public void testSetPhoneNumberURLRating() {
		Restaurant testObj4 = new Restaurant(4);
		testObj4.setPhoneNumber("4321");
		testObj4.setURL("4399.com");
		testObj4.setRating(5.0);

		assertEquals("Mismatch on phone number", 14, testObj4.getPhoneNumber().length());
		assertEquals("Mismatch on phone url", testObj4.getURL(), "4399.com");
		Assert.assertEquals("Mismatch on recipe star rating", testObj4.getRating(), 5.0, 0.0);
	}

	@Test
	public void testSetLatitudeLongitude() {
		Restaurant testObj5 = new Restaurant(5);
		testObj5.setLatitude(1.0);
		testObj5.setLongitude(2.0);
		Assert.assertEquals("Mismatch on latitude", testObj5.getLatitude(), 1.0, 0.0);
		Assert.assertEquals("Mismatch on longitude", testObj5.getLongitude(), 2.0, 0.0);
	}
}
	

