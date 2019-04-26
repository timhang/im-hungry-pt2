package API;

import static org.junit.Assert.assertEquals;

import java.io.IOException;

import org.json.JSONArray;
import org.junit.Test;

import API.DatabaseDriver.lists;

public class ReorderListTest {

	
	
	@Test
	public void testOrder() throws IOException {
		ReorderList testObj = new ReorderList();
		String input = "[{\"id\":\"559251\",\"type\":\"recipe\",\"newIndex\":0},{\"id\":\"222869\",\"type\":\"recipe\",\"newIndex\":1},{\"id\":\"16836104\",\"type\":\"restaurant\",\"newIndex\":2},{\"id\":\"16819485\",\"type\":\"restaurant\",\"newIndex\":3},{\"id\":\"16839737\",\"type\":\"restaurant\",\"newIndex\":4}]";
		JSONArray jsonArr = new JSONArray(input);
		try {
			testObj.reorder("fav", jsonArr);
			String json = testObj.getList("fav");
			JSONArray jsonArr1 = new JSONArray(json);
			
			
			assertEquals("Mismatch on fav list", jsonArr.length(), 5);
			assertEquals("First item not match", jsonArr1.getJSONObject(0).getInt("id"),559251);
			assertEquals("Second item not match", jsonArr1.getJSONObject(1).getInt("id"),222869);
			assertEquals("Third item not match", jsonArr1.getJSONObject(2).getInt("id"),16836104);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			testObj.reorder("toExplore", jsonArr);
			String json = testObj.getList("toExplore");
			JSONArray jsonArr1 = new JSONArray(json);
			
			
			assertEquals("Mismatch on fav list", jsonArr.length(), 5);
			assertEquals("First item not match", jsonArr1.getJSONObject(0).getInt("id"),559251);
			assertEquals("Second item not match", jsonArr1.getJSONObject(1).getInt("id"),222869);
			assertEquals("Third item not match", jsonArr1.getJSONObject(2).getInt("id"),16836104);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			testObj.reorder("doNotShow", jsonArr);
			String json = testObj.getList("doNotShow");
			JSONArray jsonArr1 = new JSONArray(json);
			
			
			assertEquals("Mismatch on fav list", jsonArr.length(), 5);
			assertEquals("First item not match", jsonArr1.getJSONObject(0).getInt("id"),559251);
			assertEquals("Second item not match", jsonArr1.getJSONObject(1).getInt("id"),222869);
			assertEquals("Third item not match", jsonArr1.getJSONObject(2).getInt("id"),16836104);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			testObj.reorder(null, jsonArr);
			testObj.reorder("", jsonArr);
			testObj.reorder(null, null);
			testObj.reorder("doNowShow", null);
//			testObj.reorder("toExplore", null);
//			testObj.reorder("", null);
//			testObj.reorder(null, null);
//			
//			testObj.reorder(null, jsonArr);
//			JSONArray tempArr = new JSONArray();
//			testObj.reorder(null, tempArr);
//			testObj.reorder("fav", tempArr);
//			testObj.reorder("toExplore", tempArr);
//			testObj.reorder("doNotShow", tempArr);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Test
	public void testReorderList() throws IOException {
		// Existing class
		ReorderList testObj = new ReorderList();

		// mock a server request
//		HttpServletRequest request1 = mock(HttpServletRequest.class);
//		request1.setAttribute("list", "fav");
//		HttpServletRequest request2 = mock(HttpServletRequest.class);
//		request1.setAttribute("list", "toExplore");
//		HttpServletRequest request3 = mock(HttpServletRequest.class);
//		request1.setAttribute("list", "doNotShow");
//
//		// mock a server response
//		HttpServletResponse response = mock(HttpServletResponse.class);
//		StringWriter stringWriter = new StringWriter();
//		PrintWriter writer = new PrintWriter(stringWriter);
//		when(response.getWriter()).thenReturn(writer);
		try {
			// assertEquals("QuickAccess List Returned", false,
			// testObj.getQuickAccess().isEmpty());
			String json = testObj.getList("fav");
			JSONArray jsonArr = new JSONArray(json);
			assertEquals("Mismatch on fav list", jsonArr.length(), 4);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			String json = testObj.getList("toExplore");
			JSONArray jsonArr = new JSONArray(json);
			assertEquals("Mismatch on to explore list", jsonArr.length(), 4);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			String json = testObj.getList("doNotShow");
			JSONArray jsonArr = new JSONArray(json);
			assertEquals("Mismatch on do not show list", jsonArr.length(), 4);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			testObj.getList(null);
			testObj.getList("");
			testObj.getList("asd");
			testObj.getList("0");
			testObj.getList("fav");
			testObj.getList("aa090");
			testObj.getList("doNotShow");
			testObj.getList("toExplore");
			testObj.getList(null);
			String json = new String();
			testObj.getList(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
