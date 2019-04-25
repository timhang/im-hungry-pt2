package API;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import API.DatabaseDriver.lists;

/**
 * Servlet implementation class ReorderList
 */
@WebServlet("/ReorderList")
public class ReorderList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @throws Exception 
	 * @see HttpServlet#HttpServlet()
	 */
	public String getList(String listName) throws Exception {
		lists list = lists.favorites;
		if(listName == null || listName.equals("")) {
			return null;
		} else if(listName.equals("fav")) {
			list = lists.favorites;
			System.out.println("inside favorites");
		} else if (listName.equals("toExplore")) {
			System.out.println("inside toExplore");
			list = lists.toExplore;
		} else if (listName.equals("doNotShow")) {
			list = lists.doNotShow;
			System.out.println("inside doNotShow");
		} else {
			return null;
		}
		
		JSONArray newArray = new JSONArray();
		newArray = DatabaseDriver.GetList(list);
		String json = newArray.toString();
		return json;
	}
	
	public void reorder(String listName, JSONArray newList) throws Exception {
		lists list = lists.favorites;
		if(listName == null || listName.equals("")) {
			return;
		} else if(listName.equals("fav")) {
			list = lists.favorites;
			System.out.println("inside favorites");
		} else if (listName.equals("toExplore")) {
			System.out.println("inside toExplore");
			list = lists.toExplore;
		} else if (listName.equals("doNotShow")) {
			list = lists.doNotShow;
			System.out.println("inside doNotShow");
		} else {
			return;
		}
		for(int i = 0; i<newList.length(); i++) {
			JSONObject tempObject = newList.getJSONObject(i);
			int id = Integer.parseInt(tempObject.getString("id"));
			String type = tempObject.getString("type");
			int newIndex = tempObject.getInt("newIndex");
			DatabaseDriver.updateListIndices(list, id, newIndex, type);
		}
		
		//DatabaseDriver.updateListIndices(list, );
		
	}
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String listName = request.getParameter("list");
		System.out.println(listName);
		if(request.getParameter("mode")!=null) {
			//Update
			System.out.println("Mode: "+request.getParameter("mode"));
			JSONArray newList = new JSONArray(request.getParameter("data"));
			//String jsonString = newList.put(request.getParameter("data")).toString();
			//newList = new JSONArray();
			//JSONObject newObject = new JSONObject(request.getParameter("data"));
			//newList.put(request.getParameter("data"));

			
			
//			System.out.println("Inside Update1: "+request.getParameter("data"));
//			System.out.println("Inside Update2: "+newList.toString());
			try {
				reorder(listName, newList);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else {
		
		
		
		

		
			String json = null;
			try {
				json = getList(listName);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(json);
		}
		

		// JSONObject;
		// int count = rs.getInt("count");

		
//		JSONObject jsonObj1 = new JSONObject();
//		jsonObj1.put("id", 1234);
//		jsonObj1.put("type", "recipe");
//		jsonObj1.put("name", name);
//		jsonObj1.put("starRating", "5");
//		jsonObj1.put("prepTime", "24");
//		jsonObj1.put("cookTime", "5");
//		jsonObj1.put("link", "inai");
//		
//		JSONObject jsonObj2 = new JSONObject();
//		jsonObj2.put("id", 1235);
//		jsonObj2.put("type", "restaurant");
//		jsonObj2.put("name", name);
//		jsonObj2.put("starRating", "4");
//		jsonObj2.put("prepTime", "25");
//		jsonObj2.put("cookTime", "5");
//		jsonObj2.put("link", "inai");
//		
//		newArray.put(jsonObj1);
//		newArray.put(jsonObj2);
		
		
		

	}

}
