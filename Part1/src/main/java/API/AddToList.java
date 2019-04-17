package API;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import API.DatabaseDriver.lists;

/**
 * Servlet implementation class AddToList
 */
@WebServlet("/AddToList")
public class AddToList extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void add(String type, int idInt, String listName) throws Exception {
		
		if (type.equals("recipe")) {
			System.out.println("true");
		} else {
			System.out.println("false");
		}
		if (type.equals("recipe")) {
			Recipe recipe = RecipeAPI.getRecipeMap().get(idInt);
			System.out.println(recipe.getName());
			if (listName.equals("fav")) {
				recipe.setFavorite(true);
				DatabaseDriver.AddRecipeToList(idInt, lists.favorites);
				System.out.println("Added to Favorite List");
			} else if (listName.equals("exp")) {
				recipe.setToExplore(true);
				DatabaseDriver.AddRecipeToList(idInt, lists.toExplore);

				System.out.println("Added to To Explore List");
			} else if (listName.equals("dns")) {
				recipe.setDoNotShow(true);
				DatabaseDriver.AddRecipeToList(idInt, lists.doNotShow);

				System.out.println("Added to Do No Show List");
			}
		} else if (type.equals("restaurant")) {
			Restaurant restaurant = RestAPI.getRestaurantMap().get(idInt);
			System.out.println(restaurant.getName());
			if (listName.equals("fav")) {
				restaurant.setFavorite(true);
				DatabaseDriver.AddRestaurantToList(idInt, lists.favorites);
				System.out.println("Added to Favorite List");
			} else if (listName.equals("exp")) {
				restaurant.setToExplore(true);
				DatabaseDriver.AddRestaurantToList(idInt, lists.toExplore);
				System.out.println("Added to To Explore List");
			} else if (listName.equals("dns")) {
				restaurant.setDoNotShow(true);
				DatabaseDriver.AddRestaurantToList(idInt, lists.doNotShow);
				System.out.println("Added to Do No Show List");
			}
		}
	}
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		int idInt = Integer.valueOf(id);
		String listName = request.getParameter("list");

		System.out.println(id + "::" + listName + "::idInt " + idInt + "::type " + type);
		
		try {
			add(type, idInt, listName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
