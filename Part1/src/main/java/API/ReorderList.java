package API;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Servlet implementation class ReorderList
 */
@WebServlet("/ReorderList")
public class ReorderList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReorderList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String listName = request.getParameter("list");
		JSONArray newArray = new JSONArray();
		String name;
		if(listName.equals("favorites")) {
			name = "favorites";
		} else if (listName.equals("toExplore")) {
			name = "toExplore";
		} else if (listName.equals("doNotShow")) {
			name = "doNotShow";
		}
			
		
		"id": 21,
		  "type": "recipe",
		  "name": "pizza",
		  "starRating": "5",
		  "prepTime": "3 min",
		  "cookTime": "3h",
		  "link": "inai",
		

		// JSONObject;
		// int count = rs.getInt("count");
		String searchTerm;
		int numResults;
		
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("id", 1234);
		jsonObj.put("type", "recipe");
		
		jsonObj.put("starRating", "5");
		
		newArray.put(jsonObj);
		return newArray;

	}

}
