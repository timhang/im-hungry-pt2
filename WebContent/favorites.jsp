<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Favorites</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 	<link rel="stylesheet" type="text/css" href="favorites.css" />
	 	
	</head>
	<body>
	<%
		ArrayList<Integer> recipeIds = RecipeAPI.getRecipeId();
		ArrayList<Integer> restIds = RestAPI.getRestIDs();
		HashMap<Integer, Recipe> recipeMap = RecipeAPI.getRecipeMap();
		HashMap<Integer, Restaurant> restMap = RestAPI.getRestaurantMap();
		ArrayList<Integer> recipeInList = new ArrayList<Integer>();
		ArrayList<Integer> restInList = new ArrayList<Integer>();
		for(int i = 0 ; i < recipeIds.size(); i++){
			if(recipeMap.get(recipeIds.get(i)).getFavorite() == true){
				recipeInList.add(recipeIds.get(i));
			}
		}
		for(int i = 0 ; i < restIds.size(); i++){
			if(restMap.get(restIds.get(i)).getFavorite() == true){
				restInList.add(restIds.get(i));
			}
		}
		System.out.println("Recipes in List: " + recipeInList.size());
		System.out.println("Restaurants in List: " + restInList.size());
	%>
		<div class="container-fluid">
		 <h1 id="title">Favorites</h1>
		  <div class="row">
		  	<!-- Column for list of restaurants and recipes -->
		    <div class="col-lg-8">
		    	<div class="listTable">
			    	<table style="width:100%">
			    		<tbody>
				    	
				    		<%
							
							// Loop through all of the restauraunts and display based on true/false boolean
							  for (int i = 0; i < restInList.size(); i++) {
								  String name = restMap.get(restIds.get(i)).getName();
								  String address = restMap.get(restIds.get(i)).getAddress();
								  double rating = restMap.get(restIds.get(i)).getRating();
								  String link = "restPage.jsp?restaurantId="+ restIds.get(i);
								  int travelTime = restMap.get(restIds.get(i)).getTravelTime();
								  double priceRange = restMap.get(restIds.get(i)).getPriceRange();
								  int id = restIds.get(i);
							%>
								<tr><td>
									<input type="checkbox" name="checkbox" class="checkbox" id=checkbox1 style="visibility:hidden;">
									<div>
										<div><a href = <%= link %> >
								    		<%= name %>
										</a></div>
										<div style="float:left;width:50%;">Address: <%= address %></div>
										<div style = "float:right;text-align:right;width:50%">$<%= priceRange %></div>
										<div>Rating: <%= rating %></div>
										<div>Minutes: <%= travelTime %></div>
									</div>
								</td></tr>
							<%
							  }
							%>
				    	
				    	
							<%
							
							// Loop through all of the recipes and display based on true/false boolean
							  for (int i = 0; i < recipeInList.size(); i++) {
								  String name = recipeMap.get(recipeIds.get(i)).getName();
								  float starRating = recipeMap.get(recipeIds.get(i)).getStarRating();
								  int prepTime = recipeMap.get(recipeIds.get(i)).getPrepTime();
								  int cookTime = recipeMap.get(recipeIds.get(i)).getCookTime();
								  String link = "recipePage.jsp?recipeId="+ recipeIds.get(i);
							%>
								<tr><td>
									<input type="checkbox" name="checkbox" class="checkbox" id=checkbox2 style="visibility:hidden;">
									<div>
										<a href = <%= link %> >
								    		<%= name %>
										</a><br>
										Stars: <%= starRating %><br>
										Prep time: <%= prepTime %> mins    Cook time: <%= cookTime %> mins
									</div>
								</td></tr>
							<%
							  }
							%>
						</tbody>
			       </table>
		       </div>
		    </div>
		    <!-- Column for dropwdown and buttons -->
		    <div class="col-lg-4">
					<select id="mySelect">
					  <option></option>
					  <option value="favorites.jsp">Favorites</option>
					  <option value="toExplore.jsp">To Explore</option>
					  <option value="doNotShow.jsp">Do Not Show</option>
					</select><br><br>
		
				<button type="button" onclick="manageList()">Manage List</button><br><br>
				<button onclick="returnToResults()">Return to Results Page</button><br><br>
				<button onclick="returnToSearch()">Return to Search Page</button><br>
			</div>
		  </div>
		  <!-- Row for the edit button -->
		  <div class="row text-center">
		  	<input type="button" value="Edit" class="styled-button-2" id="editButton">
			<input type="button" value="Delete" class="styled-button-2" id="deleteButton" style="visibility:hidden;">
			<select id="addDropdown" style="visibility:hidden;">
			  <option></option>
			  <option value="favorites.jsp">Favorites</option>
			  <option value="toExplore.jsp">To Explore</option>
			  <option value="doNotShow.jsp">Do Not Show</option>
			</select><br><br>
			<input type="button" value="Add" class="styled-button-2" id="addButton" style="visibility:hidden;">
			
		  
		  </div>
		</div>
	
		<script>		 
			function returnToSearch() {
				window.location.href = 'searchPage.html';
			}
			function returnToResults() {
				window.location.href = 'resultsPage.jsp';
			}
			function manageList() {
				var link = document.getElementById("mySelect").selectedIndex;
				if(link == "1"){
					window.location.href = 'favorites.jsp';
				}	
				else if(link == "2"){
					window.location.href = 'toExplore.jsp';
				}
				else if(link == "3"){
					window.location.href = 'doNotShow.jsp';
				}
			}
		</script>
		<script>
			var editButton = document.getElementById("editButton");
			var deleteButton = document.getElementById("deleteButton");
			var addDropdown = document.getElementById("addDropdown");
			var addButton = document.getElementById("addButton");
			var restCheck = document.getElementById("checkbox1");
			var recipeCheck = document.getElementById("checkbox2");

	
			editButton.onclick = function() {
				if (editButton.value ==="Edit") {
					editButton.value = "Done";
				}
			    else {
			    	editButton.value = "Edit";
			    }
				 if (deleteButton.style.visibility === "hidden") {
					   deleteButton.style.visibility = "visible";
					 } else {
					   deleteButton.style.visibility = "hidden";
				}
				 if (addDropdown.style.visibility === "hidden") {
					 addDropdown.style.visibility = "visible";
					 } else {
						 addDropdown.style.visibility = "hidden";
				}
				 if (addButton.style.visibility === "hidden") {
					 addButton.style.visibility = "visible";
					 } else {
						 addButton.style.visibility = "hidden";
				}
				 if (restCheck.style.visibility === "hidden") {
					 restCheck.style.visibility = "visible";
					 } else {
						 restCheck.style.visibility = "hidden";
				}	
				 if (recipeCheck.style.visibility === "hidden") {
					 recipeCheck.style.visibility = "visible";
					 } else {
						 recipeCheck.style.visibility = "hidden";
				}	
			}
		</script>
	
	</body>
</html>