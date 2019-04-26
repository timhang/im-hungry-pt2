package API;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.junit.Test;

public class QuickAccessTest {

	@Test
	public void testGetQuickAccess() throws IOException {
		//fail("Not yet implemented");
		
		// Existing class
		QuickAccess testObj = new QuickAccess();
		
		// mock a server request 
        HttpServletRequest request = mock(HttpServletRequest.class);      
        request.setAttribute("a", testObj);
        
        // mock a server response
        HttpServletResponse response = mock(HttpServletResponse.class); 
        StringWriter stringWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(stringWriter);
        when(response.getWriter()).thenReturn(writer);
		try {
			//assertEquals("QuickAccess List Returned", false, testObj.getQuickAccess().isEmpty());

			testObj.service(request,response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testGetQuickAccessList() throws NumberFormatException, Exception {
		QuickAccess testObj = new QuickAccess();
		RecipeAPI.resultsPageList("pizza", "2");
		RestAPI.resultsPageList("pizza", "2");
		RecipeAPI.resultsPageList("pizza", "4");
		RestAPI.resultsPageList("pizza", "4");
		
		try {
			String result = testObj.getQuickAccess();
			JSONArray jsonArr = new JSONArray(result);
			assertEquals("Mismatch on search term", jsonArr.getJSONObject(0).getString("searchTerm"), "pizza");
			assertEquals("Mismatch on number results", jsonArr.getJSONObject(0).getString("integer"), "2");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RecipeAPI.resultsPageList("pizza", "5");
		RestAPI.resultsPageList("pizza", "5");
		try {
			String result = testObj.getQuickAccess();
			JSONArray jsonArr = new JSONArray(result);
			assertEquals("Mismatch on search term", jsonArr.getJSONObject(0).getString("searchTerm"), "pizza");
			assertEquals("Mismatch on number results", jsonArr.getJSONObject(0).getString("integer"), "4");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RecipeAPI.resultsPageList("burger", "2");
		RestAPI.resultsPageList("burger", "2");
		try {
			String result = testObj.getQuickAccess();
			JSONArray jsonArr = new JSONArray(result);
			assertEquals("Mismatch on search term", jsonArr.getJSONObject(0).getString("searchTerm"), "pizza");
			assertEquals("Mismatch on number results", jsonArr.getJSONObject(0).getString("integer"), "5");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RecipeAPI.resultsPageList("burger", "3");
		RestAPI.resultsPageList("burger", "3");
		try {
			String result = testObj.getQuickAccess();
			JSONArray jsonArr = new JSONArray(result);
			assertEquals("Mismatch on search term", jsonArr.getJSONObject(0).getString("searchTerm"), "burger");
			assertEquals("Mismatch on number results", jsonArr.getJSONObject(0).getString("integer"), "2");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RecipeAPI.resultsPageList("milk", "2");
		RestAPI.resultsPageList("milk", "2");
		try {
			String result = testObj.getQuickAccess();
			JSONArray jsonArr = new JSONArray(result);
			assertEquals("Mismatch on search term", jsonArr.getJSONObject(0).getString("searchTerm"), "burger");
			assertEquals("Mismatch on number results", jsonArr.getJSONObject(0).getString("integer"), "3");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

}
