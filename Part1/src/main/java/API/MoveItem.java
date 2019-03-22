package API;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MoveItem
 */
@WebServlet("/MoveItem")
public class MoveItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void move(String restIdsString, String recipeIdsString, String list, String toList) {
		
		//1 means favorites, 2 means to explore, 3 means do not show
		if (toList.equals("1")) {
			toList = "fav";
		} else if (toList.equals("2")) {
			toList = "exp";
		} else if (toList.equals("3")) {
			toList = "dns";
		}
		System.out.println("RestIds = " + restIdsString);
		System.out.println("RecipeIds = " + recipeIdsString);
		String[] restIdsSplit = restIdsString.split(",");
		String[] recipeIdsSplit = recipeIdsString.split(",");
		if (restIdsSplit.length > 1) {
			for (int i = 1; i < restIdsSplit.length; i++) {
				int restId = Integer.valueOf(restIdsSplit[i]);
				System.out.println("restId = " + restId);
				Restaurant currRest = RestAPI.getRestaurantMap().get(restId);
				if (list.equals("fav")) {
					currRest.setFavorite(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from favorites list");

					if (toList.equals("exp")) { //move from favorites to to explore
						currRest.setToExplore(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to explore list");
					} else if (toList.equals("dns")) { //move from favorites to do not show
						currRest.setDoNotShow(true);
						System.out.println("Restaurant " + currRest.getName() + " added to do not show list");
					}

				} else if (list.equals("exp")) {
					currRest.setToExplore(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from to explore list");

					if (toList.equals("fav")) { //move from to explore to favorites
						currRest.setFavorite(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to favorites list");
					} else if (toList.equals("dns")) { //move from to explore to do not show
						currRest.setDoNotShow(true);
						System.out.println("Restaurant " + currRest.getName() + " added to do not show list");
					}

				} else if (list.equals("dns")) {
					currRest.setDoNotShow(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from do not show list");

					if (toList.equals("fav")) { //move from do not show to favorites
						currRest.setFavorite(true);
						System.out.println("Restaurant " + currRest.getName() + " added to favorites list");
					} else if (toList.equals("exp")) { //move from do not show to to explore
						currRest.setToExplore(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to explore list");
					}

				}
			}
		}

		if (recipeIdsSplit.length > 1) {
			for (int i = 1; i < recipeIdsSplit.length; i++) {
				int recipeId = Integer.valueOf(recipeIdsSplit[i]);
				System.out.println("recipeId = " + recipeId);
				Recipe currRecipe = RecipeAPI.getRecipeMap().get(recipeId);
				if (list.equals("fav")) {
					currRecipe.setFavorite(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from favorites list");

					if (toList.equals("exp")) { //move from favorites to to explore
						currRecipe.setToExplore(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to explore list");
					} else if (toList.equals("dns")) { //move from favorites to do not show
						RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to do not show list");
					}

				} else if (list.equals("exp")) { 
					currRecipe.setToExplore(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from to explore list");

					if (toList.equals("fav")) { //move from to explore to favorites
						currRecipe.setFavorite(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to favorites list");
					} else if (toList.equals("dns")) { //move from to explore to do not show
						RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to do not show list");
					}

				} else if (list.equals("dns")) {
					currRecipe.setDoNotShow(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from do not show list");

					if (toList.equals("fav")) { //move from do not show to favorites
						currRecipe.setFavorite(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to favorites list");
					} else if (toList.equals("exp")) { //move from do not show to to explore
						currRecipe.setToExplore(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to explore list");
					}

				}
			}
		}
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//restIdsString is the get request sent from list management page telling us 
		//what restaurants with the sent Ids we need to move from list
		
		String restIdsString = request.getParameter("restIds");
		
		//recipeIdsString is the get request sent from list management page telling us 
		//what recipes with the sent Ids we need to move from list
		String recipeIdsString = request.getParameter("recipeIds");
		
		//list is the get request sent from list management telling us which list to 
		//remove the items from
		String list = request.getParameter("list");
		
		//toList is the get request sent from list management page telling us which list to 
		//move the items into
		String toList = request.getParameter("to");
		move(restIdsString, recipeIdsString, list, toList);
	}

}
