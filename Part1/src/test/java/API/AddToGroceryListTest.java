package API;

import static org.junit.Assert.*;

import org.junit.Test;

public class AddToGroceryListTest {

	@Test
	public void test() throws Exception {
		
		
		AddToGroceryList testObj = new AddToGroceryList();
		RemoveFromGroceryList testObj1 = new RemoveFromGroceryList();
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("tooth");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "tooth");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("tooth");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj1.removeFromGroceryList("brush");
			testObj.addToGroceryList("brush");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "brush");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("brush");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("is");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "is");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("is");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("good");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "good");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("good");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("for");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "for");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("for");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("you");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "you");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("you");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("sii");
			String newItem = DatabaseDriver.GetGroceryList().get(DatabaseDriver.GetGroceryList().size()-1);
			assertEquals("item mismatch", newItem, "sii");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("sii");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
