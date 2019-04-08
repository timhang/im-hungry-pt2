package API;

import static org.junit.Assert.*;
import org.junit.Test;

public class ChangeOrderTest {
	@Test
	public void setup() {
		
		// add items to favorites
		AddToList addToList = new AddToList();
		System.out.println("Thewse are the items we have");
		
		addToList.add("recipe", 3, "fav");
		addToList.add("restaurant", 5, "fav");

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