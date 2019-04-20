//package API;
//
//import java.io.IOException;
//
//import org.junit.Test;
//
//public class ReorderListTest {
//
//	@Test
//	public void testReorderList() throws IOException {
//		// Existing class
//		ReorderList testObj = new ReorderList();
//
//		// mock a server request
////		HttpServletRequest request1 = mock(HttpServletRequest.class);
////		request1.setAttribute("list", "fav");
////		HttpServletRequest request2 = mock(HttpServletRequest.class);
////		request1.setAttribute("list", "toExplore");
////		HttpServletRequest request3 = mock(HttpServletRequest.class);
////		request1.setAttribute("list", "doNotShow");
////
////		// mock a server response
////		HttpServletResponse response = mock(HttpServletResponse.class);
////		StringWriter stringWriter = new StringWriter();
////		PrintWriter writer = new PrintWriter(stringWriter);
////		when(response.getWriter()).thenReturn(writer);
//		try {
//			// assertEquals("QuickAccess List Returned", false,
//			// testObj.getQuickAccess().isEmpty());
//
//			testObj.reorder("fav");
//			testObj.reorder("toExplore");
//			testObj.reorder("doNotShow");
//			testObj.reorder(null);
//			testObj.reorder("");
//			testObj.reorder("asd");
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//
//}
