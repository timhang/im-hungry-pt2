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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoveItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String restIdsString = request.getParameter("restIds");
		String recipeIdsString = request.getParameter("recipeIds");
		String list = request.getParameter("list");
		String toList = request.getParameter("to");
		if(toList.equals("1")) {
			toList = "fav";
		} else if(toList.equals("2")) {
			toList = "exp";
		} else if(toList.equals("3")) {
			toList = "dns";
		}
		System.out.println("RestIds = "+ restIdsString);
		System.out.println("RecipeIds = "+ recipeIdsString);
		String[] restIdsSplit = restIdsString.split(",");
		String[] recipeIdsSplit = recipeIdsString.split(",");
		if(restIdsSplit.length > 1) {
			for(int i = 1; i<restIdsSplit.length; i++) {
				int restId = Integer.valueOf(restIdsSplit[i]);
				System.out.println("restId = " + restId);
				Restaurant currRest = RestAPI.getRestaurantMap().get(restId);
				if(list.equals("fav")) {
					currRest.setFavorite(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from favorites list");
					
					if (toList.equals("exp")) {
						currRest.setToExplore(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to explore list");
					} else if (toList.equals("dns")) {
						currRest.setDoNotShow(true);
						System.out.println("Restaurant " + currRest.getName() + " added to do not show list");
					}
					
				} else if (list.equals("exp")) {
					currRest.setToExplore(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from to explore list");
					
					if (toList.equals("fav")) {
						currRest.setFavorite(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to favorites list");
					} else if (toList.equals("dns")) {
						currRest.setDoNotShow(true);
						System.out.println("Restaurant " + currRest.getName() + " added to do not show list");
					}
					
				} else if (list.equals("dns")) {
					currRest.setDoNotShow(false);
					System.out.println("Restaurant " + currRest.getName() + " removed from do not show list");
					
					if (toList.equals("fav")) {
						currRest.setFavorite(true);
						System.out.println("Restaurant " + currRest.getName() + " added to favorites list");
					} else if (toList.equals("exp")) {
						currRest.setToExplore(true);
						System.out.println("Restaurant " + currRest.getName() + " added to to explore list");
					}
					
				}
			}
		}
		
		if(recipeIdsSplit.length > 1) {
			for(int i = 1; i<recipeIdsSplit.length; i++) {
				int recipeId = Integer.valueOf(recipeIdsSplit[i]);
				System.out.println("recipeId = " + recipeId);
				Recipe currRecipe = RecipeAPI.getRecipeMap().get(recipeId);
				if(list.equals("fav")) {
					currRecipe.setFavorite(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from favorites list");
					
					if (toList.equals("exp")) {
						currRecipe.setToExplore(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to explore list");
					} else if (toList.equals("dns")) {
						RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to do not show list");
					}
					
				} else if (list.equals("exp")) {
					currRecipe.setToExplore(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from to explore list");
					
					if (toList.equals("fav")) {
						currRecipe.setFavorite(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to favorites list");
					} else if (toList.equals("dns")) {
						RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to do not show list");
					}
					
				} else if (list.equals("dns")) {
					currRecipe.setDoNotShow(false);
					System.out.println("Recipe " + currRecipe.getName() + " removed from do not show list");
					
					if (toList.equals("fav")) {
						currRecipe.setFavorite(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to favorites list");
					} else if (toList.equals("exp")) {
						currRecipe.setToExplore(true);
						System.out.println("Recipe " + currRecipe.getName() + " added to explore list");
					}
					
				}
			}
		}	
	}

}
