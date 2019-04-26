package API;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.junit.Test;

public class PaginationTest {

	@Test
	public void test() throws NumberFormatException, Exception {
		ArrayList<Integer> list1 = RecipeAPI.resultsPageList("pizza", "2");
		ArrayList<Integer> list2 = RestAPI.resultsPageList("pizza", "2");
		try {
			int pageNumber = (list1.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int pageNumber = (list2.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		list1 = RecipeAPI.resultsPageList("pizza", "6");
		list2 = RestAPI.resultsPageList("pizza", "6");
		
		try {
			int pageNumber = (list1.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 2);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int pageNumber = (list2.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 2);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		list1 = RecipeAPI.resultsPageList("pizza", "11");
		list2 = RestAPI.resultsPageList("pizza", "11");
		
		try {
			int pageNumber = (list1.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 3);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int pageNumber = (list2.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 3);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		list1 = RecipeAPI.resultsPageList("pizza", "16");
		list2 = RestAPI.resultsPageList("pizza", "16");
		
		try {
			int pageNumber = (list1.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 4);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			int pageNumber = (list2.size()/5)+1;
			assertEquals("Mismatch on page number", pageNumber, 4);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
