//package API;
//
//import static org.mockito.Mockito.mock;
//import static org.mockito.Mockito.when;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.io.StringWriter;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.junit.Test;
//
//public class QuickAccessTest {
//
//	@Test
//	public void testGetQuickAccess() throws IOException {
//		//fail("Not yet implemented");
//		
//		// Existing class
//		QuickAccess testObj = new QuickAccess();
//		
//		// mock a server request 
//        HttpServletRequest request = mock(HttpServletRequest.class);      
//        request.setAttribute("a", testObj);
//        
//        // mock a server response
//        HttpServletResponse response = mock(HttpServletResponse.class); 
//        StringWriter stringWriter = new StringWriter();
//        PrintWriter writer = new PrintWriter(stringWriter);
//        when(response.getWriter()).thenReturn(writer);
//		try {
//			//assertEquals("QuickAccess List Returned", false, testObj.getQuickAccess().isEmpty());
//
//			testObj.service(request,response);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//
//	
//
//}
