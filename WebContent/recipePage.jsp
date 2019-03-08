<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="restPage.css" />

</head>
<body>
	<!-- this function populates recipe data -->
	<% 
		int recipeId = Integer.valueOf(request.getParameter("recipeId"));
		Recipe currRecipe = RecipeAPI.getRecipeMap().get(recipeId);
		String name = currRecipe.getName();
		String imageUrl = currRecipe.getImage();
		int prepTime = 	currRecipe.getPrepTime();
		int cookTime = 	currRecipe.getCookTime();
		ArrayList<String> ingredients = currRecipe.getIngredients();
		ArrayList<String> instructions = currRecipe.getInstructions();
		
	
	%>
	<!-- Information of Recipe -->
	<div class="container-fluid">
		<h1 id="title"><%= name %></h1>
		<br>
		<div class="row">
			<div class="col-lg-8">
				<br> <img src=<%= imageUrl %>><br>
				<p>
					Prep time:
					<%= prepTime %>
				</p>
				<br>
				<p>
					Cook time:
					<%= cookTime %>
				</p>
				<br>
				<p>Ingredients:</p>
				<br>

				<!-- Row for ingredients and instructions -->
				<div class="row">
					<!-- Two columns of ingredients -->
					<div class="col-lg-2">
						<ul>
							<%	
								//First half of the ingredients list
						    	for(int i = 0; i < ingredients.size()/2; i++) {
						    	
						    %>
							<li><%= ingredients.get(i) %></li>
							<%
		    				}
							%>
						</ul>
					</div>
					<div class="col-lg-2">
						<ul>
							<%
								//Second half of the ingredients list
						    	for(int i = ingredients.size()/2; i < ingredients.size(); i++) {
						    	
						    %>
							<li><%= ingredients.get(i) %></li>
							<%
		    					}
							%>
						</ul>
					</div>
					<div class="col-lg-8"></div>
				</div>


				<!-- List of Instructions -->
				<p>Instructions:</p>
				<ol type="1">
					<%	
							//Instructions
						    for(int i = 0; i < instructions.size(); i++) {	
						%>
					<li><%= instructions.get(i) %></li>
					<%
						 	}
						%>
				</ol>

			</div>
			<!-- Redirection buttons -->
			<div class="col-lg-4">
				<div id="togglePrint">
					<button onclick="printableView()">Printable View</button>
					<br>
					<br>
					<button onclick="backToResults()">Back to Results</button>
					<br>
					<br>
					<div class="dropdown">
						<select id="listSelect">
							<option></option>
							<option value="favorites">Favorites</option>
							<option value="toExplore">To Explore</option>
							<option value="doNotShow">Do Not Show</option>
						</select>
					</div>
					<br>
					<br>
					<button
						onclick="addToList(document.getElementById('listSelect').selectedIndex)">Add
						to List</button>
					<br>
				</div>
			</div>
		</div>
	</div>


	<script>
			// Page Redirection
			function backToResults() {
				window.location.href = 'resultsPage.jsp';
			}			
			// Printable View function displays and hides buttons on page
			function printableView() {
				var x = document.getElementById("togglePrint");
				 if (x.style.display === "none") {
				   x.style.display = "block";
				 } else {
				   x.style.display = "none";
				 }
				 window.print();
				 
				 if (x.style.display === "none") {
					   x.style.display = "block";
					 } else {
					   x.style.display = "none";
					 }
			}
			
			function addToList(selectedIndex){
				if(selectedIndex != "0"){
					var xhttp = new XMLHttpRequest();
					var url_string = window.location.href;
			        var url = new URL(url_string);
			        var id = parseFloat(url.searchParams.get("recipeId"));
					if(selectedIndex == "1"){
						xhttp.open("GET", "addToList.jsp?type=recipe&id="+id+"&list=fav", false);
					}	
					else if(selectedIndex == "2"){
						xhttp.open("GET", "addToList.jsp?type=recipe&id="+id+"&list=exp", false);
					}
					else if(selectedIndex == "3"){
						xhttp.open("GET", "addToList.jsp?type=recipe&id="+id+"&list=dns", false);
					}
					xhttp.send();

				}
			}
			
		</script>

</body>
</html>