package API;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteItem
 * This is the servlet that deletes selected items from list
 */
@WebServlet("/DeleteItem")
public class DeleteItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void delete(String restIdsString, String recipeIdsString, String list) {
		
		//Split the ids separated by ,
		System.out.println("RestIds = " + restIdsString);
		System.out.println("RecipeIds = " + recipeIdsString);
		String[] restIdsSplit = restIdsString.split(",");
		String[] recipeIdsSplit = recipeIdsString.split(",");
		
		//Since the restIds always start with 1, so only when size is more than 1 we have actual ids to process
		if (restIdsSplit.length > 1) {
			//Looping through all ids exluding 1
			for (int i = 1; i < restIdsSplit.length; i++) {
				int restId = Integer.valueOf(restIdsSplit[i]);
				System.out.println("restId = " + restId);
				Restaurant currRest = RestAPI.getRestaurantMap().get(restId);
				if (list.equals("fav")) { //remove from favorites list
					currRest.setFavorite(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from favorites list");
				} else if (list.equals("exp")) { //remove from to explore list
					currRest.setToExplore(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from to explore list");
				} else if (list.equals("dns")) { //remove from do not show
					currRest.setDoNotShow(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from do not show list");
				}
			}
		}
		
		//Since the recipeIds always start with 2, so only when size is more than 1 we have actual ids to process
		if (recipeIdsSplit.length > 1) {
			//Looping through all ids exluding 2
			for (int i = 1; i < recipeIdsSplit.length; i++) {
				int recipeId = Integer.valueOf(recipeIdsSplit[i]);
				System.out.println("recipeId = " + recipeId);
				Recipe currRecipe = RecipeAPI.getRecipeMap().get(recipeId);
				if (list.equals("fav")) { //remove from favorites list
					currRecipe.setFavorite(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from favorites list");
				} else if (list.equals("exp")) { //remove from to explore list
					RecipeAPI.getRecipeMap().get(recipeId).setToExplore(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from to explore list");
				} else if (list.equals("dns")) { //remove from do not show
					RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from do not show list");
				}
			}
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//restIdsString is the get request sent from list management page telling us 
		//what restaurants with the sent Ids we need to remove from list
				
		String restIdsString = request.getParameter("restIds");
		
		//recipeIdsString is the get request sent from list management page telling us 
		//what recipes with the sent Ids we need to remove from list
		String recipeIdsString = request.getParameter("recipeIds");
		
		//list is the get request sent from list management telling us which list to 
		//delete the items from
		String list = request.getParameter("list");
		delete(restIdsString, recipeIdsString, list);

	}

}
