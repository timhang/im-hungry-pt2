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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type='text/javascript'>
		verifyLogin();
		function verifyLogin() {

			// construct json
			var json = {
				"username" : sessionStorage.getItem("username"),
				"password" : sessionStorage.getItem("password"),
			};

			console.log(json);

			// inform backend
			//$.post("Login", json);
			var isLogged = false;
			$.ajax({
				async : false,
				type : "POST",
				url : "Login",
				data : json,
				success : function(resp) {
					isLogged = (resp == "0");
					console.log(isLogged);
					if (isLogged == false) {
						document.location.href = 'login.html';
					}

				}
			});

			return isLogged;
		}
	</script>
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

		<div class="row" style = "padding: 60px 0px;">

			<div class="col-lg-1"></div>
			<div class="col-lg-6">
			<div class="card" style = "font-weight: bold; padding: 0px 12px 12px 12px;">
				<div id = "InsideCard">
			<h2 style = "font-weight: bold;" id="title"><%= name %></h2>
			<br>
				<br> <img src=<%= imageUrl %>><br>
				</div></div>
				<br>
				<br>
				<div id = "RecipeContent">
				<div class="card">
				<div id = "InsideCard">
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
				<p style = "font-weight: bold;">Ingredients:</p>
				<br>

				<!-- Row for ingredients and instructions -->
				<div class="row">
					<!-- Two columns of ingredients -->
					<div class="col-lg-6">
						<h3 id="message" style="color: red; font-style: bold">Added item to grocery list.</h3>
						<ul id="ingredients">
							<%
								//First half of the ingredients list
							if(ingredients!=null){
						    	for(int i = 0; i < ingredients.size()/2; i++) {
						    		String ingredient = ingredients.get(i);

						    %>
						    <!-- Each ingredient has an Add To Grocery List button next to it that calls AddToGrocery() -->
							<li><%= ingredient %><br/>
								<button onclick="AddToGrocery(this.value)" class="ButtonText" value="<%= ingredient %>" id="ingredient<%= i %>">Add To Grocery List</button>
							</li>
							<%
		    					}
							}
							%>
						</ul>
					</div>
					<div class="col-lg-6">
						<ul>
							<%
							if(ingredients!=null){
								//Second half of the ingredients list
						    	for(int i = ingredients.size()/2; i < ingredients.size(); i++) {

						    %>
							<li><%= ingredients.get(i) %><br/>
								<button onclick="AddToGrocery(this.value)" class="ButtonText" value="<%= ingredients.get(i) %>" id="ingredient<%= i %>">Add To Grocery List</button>
							</li>
							<%
		    					}
							}
							%>
						</ul>
					</div>
				</div>
				</div>
				</div>
				<br>
				<br>

				<div class = "card">
				<div id = "InsideCard">
				<!-- List of Instructions -->
				<p style = "font-weight: bold;">Instructions:</p>
				<ol type="1">
					<%
						if(instructions!=null){	
							//Instructions
						    for(int i = 0; i < instructions.size(); i++) {
						%>
					<li><%= instructions.get(i) %></li><br>
					<%
						 	}
						}
						%>
				</ol>
				</div>
				</div>
				</div>

			</div>

			<div class="col-lg-2"></div>
			<!-- Redirection buttons -->
			<div class="col-lg-3">
				<div id="togglePrint">
				<br>
					<button onclick="printableView()"><div class="ButtonText">Printable View</div></button>
					<br>
					<br>
					<button onclick="backToResults()"><div class="ButtonText" id="backBtn">Back to Results</div></button>
					<br>
					<br>
					<div class="dropdown">
						<select id="listSelect">
							<option>------ Select List ------</option>
							<option value="favorites">Favorites</option>
							<option value="toExplore">To Explore</option>
							<option value="doNotShow">Do Not Show</option>
						</select>
					</div>

					<br>
					<button
						onclick="addToList(document.getElementById('listSelect').selectedIndex)"><div class="ButtonText">Add
						to List</div></button>
					<br>
					<br>
					<button onclick="groceryList()"><div class="ButtonText" id="AddToRL">Grocery List</div></button>
				</div>
			</div>
		</div>
	</div>


	<script>
			$("#message").hide();

			// Page Redirection
			function groceryList() {
				window.location.href = 'groceryList.jsp';
			}
			function AddToGrocery(ingredient) {
				var xhttp = new XMLHttpRequest();
				xhttp.open("GET", "AddToGroceryList?itemName="+ingredient, false);

				xhttp.send();
				// alert("Added item to grocery list.");
				$("#message").show("slow");
				setTimeout(function() {$("#message").hide("slow");}, 2000);
			}

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
						xhttp.open("GET", "AddToList?type=recipe&id="+id+"&list=fav", false);
					}
					else if(selectedIndex == "2"){
						xhttp.open("GET", "AddToList?type=recipe&id="+id+"&list=exp", false);
					}
					else if(selectedIndex == "3"){
						xhttp.open("GET", "AddToList?type=recipe&id="+id+"&list=dns", false);
					}
					xhttp.send();
					if(selectedIndex == "1"){
						//alert("Added item to favorites list!");
					}
					else if(selectedIndex == "2"){
						//alert("Added item to to explore list!");
					}
					else if(selectedIndex == "3"){
						//alert("Added item to do not show list!");
					}

				}
			}

			$("#AddToRL").click(function(){

				// array to send
				let array = [];

				// extract ingredients
				$("#ingredients li").each(function (i, e) {
					array.push( $(this).text() );
				});

				// sending ingredients to backend
				$.post("Ingredients", {
					"data": array
				})
				.done(function(response) {
					//alert(`Data sent! ${response}`);
				})
			});

		</script>

</body>
</html>
