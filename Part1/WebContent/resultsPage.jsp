<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resultsPage.css" />
<!-- Image styling for photo collage -->
<style>
#insideImg {
	max-width: 150px;
	height: auto;
}

.image {
	display: inline-block;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<!-- Row for photo collage and buttons -->
		<div class="row">
			<br>
			<!-- Photo collage column -->
			<div class="col-lg-8 text-center">

				<%
					ArrayList<String> imgArr = ImageAPI.getImagesToDisplay(request.getParameter("searchText"));
				%>
				<!-- First row of images -->
				<div class='row'>
					<div class='col-lg-12'>
						<%
							for (int i = 0; i < imgArr.size() / 2; i++) {
								out.println("<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg src = "
										+ imgArr.get(i) + "></div>");
							}
						%>
					</div>
				</div>
				<!-- Second row of images -->
				<div class='row'>
					<%
						for (int i = imgArr.size() / 2; i < imgArr.size(); i++) {
							out.println("<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg src = "
									+ imgArr.get(i) + "></div>");
						}
					%>
				</div>

			</div>
			<!-- Button column -->
			<div class="col-lg-4">
				<div>
					<select id="mySelect">
						<option></option>
						<option value="favorites.jsp">Favorites</option>
						<option value="toExplore.jsp">To Explore</option>
						<option value="doNotShow.jsp">Do Not Show</option>
					</select>
				</div>
				<br>
				<button type="button" onclick="manageList()">Manage List</button>
				<br>
				<br>
				<button onclick="returnToSearch()">Return to Search Page</button>
			</div>
		</div>
		<!-- Row for Restaurant and Recipe table -->
		<div class="row">
			<div class="col-lg-12">
				<h1 id="title">
					Results For "<span id="searchText"></span>"
				</h1>
				<script type='text/javascript'>
					document.getElementById('searchText').innerHTML = sessionStorage
							.getItem('searchText');
				</script>
				<div class="resultsTable" align="center">
					<table style="width: 100%">
						<tr>
							<th style="font-size: 30px;">Restaurant</th>
							<th style="font-size: 30px;">Recipe</th>
						</tr>
						<%
							ArrayList<Integer> restIDs = RestAPI.resultsPageList(request.getParameter("searchText"),
									request.getParameter("numberType"));
							ArrayList<Integer> recipeIds = RecipeAPI.resultsPageList(request.getParameter("searchText"),
									request.getParameter("numberType"));
							HashMap<Integer, Restaurant> allRestaurants = RestAPI.getRestaurantMap();
							HashMap<Integer, Recipe> allRecipes = RecipeAPI.getRecipeMap();

							int size = Math.max(restIDs.size(), recipeIds.size());

							for (int i = 0; i < size; i++) {
								if (i < restIDs.size()) {
									int restId = restIDs.get(i);
									String name = allRestaurants.get(restId).getName();
									String address = allRestaurants.get(restId).getAddress();
									double priceRange = allRestaurants.get(restId).getPriceRange();
									double rating = allRestaurants.get(restId).getRating();
									String travelTime = allRestaurants.get(restId).getTravelTime();
									String link = "restPage.jsp?restaurantId=" + restId;
						%>

						<tr>
							<td><div>
									<div>
										<a href=<%=link%>> <%=name%>
										</a>
									</div>
									<div style="float: left; width: 70%;">
										Address:
										<%=address%></div>
									<div style="float: right; text-align: right; width: 30%;">
										$<%=priceRange%></div>
									<div>
										Rating:
										<%=rating%>
									</div>
									<div>
										Driving Time:
										<%=travelTime%></div>
								</div></td>
							<%
								} else {
							%>
						
						<tr>
							<td><div></div></td>
							<%
								}

									if (i < recipeIds.size()) {
										int recipeId = recipeIds.get(i);
										String name = allRecipes.get(recipeId).getName();
										float rating = allRecipes.get(recipeId).getStarRating();
										int prepTime = allRecipes.get(recipeId).getPrepTime();
										int cookTime = allRecipes.get(recipeId).getCookTime();
										String link = "recipePage.jsp?recipeId=" + recipeId;
							%>
							<td><div>
									<div>
										<a href=<%=link%>> <%=name%></a>
									</div>
									<div>
										Rating:
										<%=rating%></div>
									<div style="float: left; width: 50%;">
										Prep time:
										<%=prepTime%>
										mins
									</div>
									<div style="float: right; width: 50%">
										Cook time:
										<%=cookTime%>
										mins
									</div>
								</div></td>
						</tr>
						<%
							} else {
						%>
						<td><div></div></td>
						</tr>
						<%
							}

							}
						%>

					</table>
				</div>

			</div>
		</div>
	</div>

	<script>
		// Page redirection for buttons
		function returnToSearch() {
			window.location.href = 'searchPage.html';
		}
		function manageList() {
			var link = document.getElementById("mySelect").selectedIndex;
			if (link == "1") {
				window.location.href = 'favorites.jsp';
			} else if (link == "2") {
				window.location.href = 'toExplore.jsp';
			} else if (link == "3") {
				window.location.href = 'doNotShow.jsp';
			}
		}
	</script>
	<script>
	
		/* this is the function that generates 10 random angles to rotate teh pictures */
		$("#insideImg:nth-of-type(n+1)").css("max-width",
				window.innerWidth / 9 + "px");
		var number = Math.floor((Math.random() * 90) - 45);
		console.log("Number" + number);
		$("#img1:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img2:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img3:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img4:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img5:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img6:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img7:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img8:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img9:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img10:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
	</script>
</body>
</html>