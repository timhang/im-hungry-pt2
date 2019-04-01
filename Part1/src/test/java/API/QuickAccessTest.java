package API;

import static org.junit.Assert.*;

import org.junit.Test;

public class QuickAccessTest {

	@Test
	public void testGetQuickAccess() {
		//fail("Not yet implemented");
		QuickAccess testObj = new QuickAccess();
		try {
			assertEquals("QuickAccess List Returned", false, testObj.getQuickAccess().isEmpty());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

}
