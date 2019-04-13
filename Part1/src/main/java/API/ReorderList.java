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
		String name = "empty";
		if(listName.equals("favorites")) {
			name = "favorites";
		} else if (listName.equals("toExplore")) {
			name = "toExplore";
		} else if (listName.equals("doNotShow")) {
			name = "doNotShow";
		}
			

		

		// JSONObject;
		// int count = rs.getInt("count");

		
		JSONObject jsonObj1 = new JSONObject();
		jsonObj1.put("id", 1234);
		jsonObj1.put("type", "recipe");
		jsonObj1.put("name", name);
		jsonObj1.put("starRating", "5");
		jsonObj1.put("prepTime", "24");
		jsonObj1.put("cookTime", "5");
		jsonObj1.put("link", "inai");
		
		JSONObject jsonObj2 = new JSONObject();
		jsonObj2.put("id", 1235);
		jsonObj2.put("type", "restaurant");
		jsonObj2.put("name", name);
		jsonObj2.put("starRating", "4");
		jsonObj2.put("prepTime", "25");
		jsonObj2.put("cookTime", "5");
		jsonObj2.put("link", "inai");
		
		newArray.put(jsonObj1);
		newArray.put(jsonObj2);
		String json = newArray.toString();
		
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);

	}

}
