<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Item</title>
</head>
<body>

<%
	String restIdsString = request.getParameter("restIds");
	String recipeIdsString = request.getParameter("recipeIds");
	String list = request.getParameter("list");
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
			} else if (list.equals("exp")) {
				currRest.setToExplore(false);
				System.out.println("Restaurant " + currRest.getName() + " removed from to explore list");
			} else if (list.equals("dns")) {
				currRest.setDoNotShow(false);
				System.out.println("Restaurant " + currRest.getName() + " removed from do not show list");
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
			} else if (list.equals("exp")) {
				RecipeAPI.getRecipeMap().get(recipeId).setToExplore(false);
				System.out.println("Recipe " + currRecipe.getName() + " removed from to explore list");
			} else if (list.equals("dns")) {
				RecipeAPI.getRecipeMap().get(recipeId).setDoNotShow(false);
				System.out.println("Recipe " + currRecipe.getName() + " removed from do not show list");
			}
		}
	}
	System.out.println("deleteItem.jsp called");
%>

</body>
</html>