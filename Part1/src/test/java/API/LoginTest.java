//package API;
//
//import static org.junit.Assert.*;
//
//import org.junit.Test;
//
//public class LoginTest {
//
//	@Test
//	public void test() {
//		Login testObj = new Login();
//		
//		DatabaseDriver.createUser("Barack", "password");
//		DatabaseDriver.createUser("Obama", "pass1234");
//		DatabaseDriver.createUser("rootUser", "password");
//		
//		try {
//			String a = testObj.checkLogin("Barack", "password");
//			String b = testObj.checkLogin("Obama", "passfasd");
//			String c = testObj.checkLogin("Obama", "pass1234");
//			String d = testObj.checkLogin("Oasdfbama", "asdffasd");
//			
//			assertEquals("Login failed", a, "0");
//			assertEquals("Login succeeded", b, "1");
//			assertEquals("Login failed", c, "0");
//			assertEquals("Login succeeded", d, "2");
//			
//		} catch (Exception e){
//			e.printStackTrace();
//		}
//		try {
//			String e = testObj.checkLogin(null, "pass1234");
//			String f = testObj.checkLogin("", "asdffasd");
//			String g = testObj.checkLogin(null, null);
//			String h = testObj.checkLogin(null, "");
//			String i = testObj.checkLogin("", "");
//			String j = testObj.checkLogin("", null);
//		} catch (Exception e){
//			e.printStackTrace();
//		}
//		
//
//	}
//
//}
