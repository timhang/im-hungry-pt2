package API;

import static org.junit.Assert.*;
import org.junit.Test;

public class ChangeOrderTest {
	@Test
	public void setup() {
		
		// add items to favorites
		addItem(3);
		addItem(5);
		addItem(9);
		
		// get items
		JSON json = getFavoriteItems();
		
		assertEquals(json, {3, 5, 9});
		
	}
	
	@Test
	public void changeOrder() {
		newIndex(5, 0);
		JSON json = getFavoriteItems();
		
		assertEquals(json, {5,0,9});
	}
}