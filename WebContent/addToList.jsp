<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adding Item to List</title>
</head>
<body>
<%
  //"addToList.jsp?type=recipe&id="+id+"&list=fav"
  String type = request.getParameter("type");
  String id = request.getParameter("id");
  int idInt = Integer.valueOf(id);
  String listName = request.getParameter("list");
  
  System.out.println(id + "::" + listName + "::idInt " + idInt + "::type " + type);
  if(type.equals("recipe")){
	  System.out.println("true");
  } else {
	  System.out.println("false");
  }
  if (type.equals("recipe")) {
	  Recipe recipe = RecipeAPI.getRecipeMap().get(idInt);
	  System.out.println(recipe.getName());
	  if(listName.equals("fav")){
		  recipe.setFavorite(true);
		  System.out.println("Added to Favorite List");
	  } else if (listName.equals("exp")){
		  recipe.setToExplore(true);
		  System.out.println("Added to To Explore List");
	  } else if (listName.equals("dns")){
		  recipe.setDoNotShow(true);
		  System.out.println("Added to Do No Show List");
	  }
  } else if (type.equals("restaurant")) {
	  Restaurant restaurant = RestAPI.getRestaurantMap().get(idInt);
	  System.out.println(restaurant.getName());
	  if(listName.equals("fav")){
		  restaurant.setFavorite(true);
		  System.out.println("Added to Favorite List");
	  } else if (listName.equals("exp")){
		  restaurant.setToExplore(true);
		  System.out.println("Added to To Explore List");
	  } else if (listName.equals("dns")){
		  restaurant.setDoNotShow(true);
		  System.out.println("Added to Do No Show List");
	  }
  }
  
%>


</body>
</html>