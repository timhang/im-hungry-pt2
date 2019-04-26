package API;

import static org.junit.Assert.*;

import org.junit.Test;

public class AddToGroceryListTest {

	@Test
	public void test() throws Exception {
		
		
		AddToGroceryList testObj = new AddToGroceryList();
		RemoveFromGroceryList testObj1 = new RemoveFromGroceryList();
		try {
			testObj1.removeFromGroceryList("tooth");
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
			testObj1.removeFromGroceryList("is");
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("is");
			
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("is");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			testObj1.removeFromGroceryList("good");
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("good");
			
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("good");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			testObj1.removeFromGroceryList("for");
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("for");
			
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("for");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			testObj1.removeFromGroceryList("you");
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("you");
			
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("you");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			testObj1.removeFromGroceryList("sii");
			int count = DatabaseDriver.GetGroceryList().size();
			testObj.addToGroceryList("sii");
			
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count+1);
			count++;
			testObj1.removeFromGroceryList("sii");
			assertEquals("length mismatch", DatabaseDriver.GetGroceryList().size(), count-1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
