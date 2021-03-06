<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Explore</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="favorites.css" />

<style>
body {
	background-color: #FBD786;

}
</style>

</head>
<body>
	<!-- this function populates to explore list data -->
	<%
		HashMap<Integer, Recipe> recipeMap = RecipeAPI.getRecipeMap();
		HashMap<Integer, Restaurant> restMap = RestAPI.getRestaurantMap();
		
		ArrayList<Integer> recipeInList = RecipeAPI.getToExplores();
		ArrayList<Integer> restInList = RestAPI.getToExplores();
	%>
	<div class="container-fluid">
		
		<div class="row" style = "padding: 60px 0px;">
		<div class="col-lg-1"></div>
			<!-- Column for list of restaurants and recipes -->
			<div class="col-lg-7">
			<h2 style = "font-weight: bold;" id="title">To Explore</h2>
				<div class="listTable">
					<table style="width: 100%">

						<%
							// Loop through all of the restauraunts and recipes and display based on true/false boolean
							for (int i = 0; i < restInList.size(); i++) {
								int restId = restInList.get(i);
								String name = restMap.get(restId).getName();
								String address = restMap.get(restId).getAddress();
								double rating = restMap.get(restId).getRating();
								String link = "restPage.jsp?restaurantId=" + restId;
								String travelTime = restMap.get(restId).getTravelTime();
								double priceRange = restMap.get(restId).getPriceRange();
						%>
						<tr>
							<td><div>
									<!-- Each element in list is a checkbox -->
									<div>
										<input type="checkbox" name="checkbox" class="checkbox"
											id="checkboxRest" style="visibility: hidden;"
											value=<%=restId%>>
									</div>
									<div style="font-weight: bold; font-size: 20px;">
										<a href=<%=link%>> <%=name%>
										</a>
									</div>
									<div style="float: left; width: 70%;">
										Address:
										<%=address%></div>
									<div style="float: right; text-align: right; width: 30%">
										$<%=priceRange%></div>
									<div>
										Rating:
										<%=rating%></div>
									<div>
										Driving Time:
										<%=travelTime%></div>
								</div></td>
						</tr>
						<%
							}
						%>

						<%
							// Loop through all of the restauraunts and recipes and display based on true/false boolean
							for (int i = 0; i < recipeInList.size(); i++) {
								int recipeId = recipeInList.get(i);
								String name = recipeMap.get(recipeId).getName();
								float starRating = recipeMap.get(recipeId).getStarRating();
								int prepTime = recipeMap.get(recipeId).getPrepTime();
								int cookTime = recipeMap.get(recipeId).getCookTime();
								String link = "recipePage.jsp?recipeId=" + recipeId;
						%>
						<tr>
							<td>
								<!-- Each element in list is a checkbox --> <input
								type="checkbox" name="checkbox" class="checkbox"
								id=checkboxRecipe style="visibility: hidden;"
								value=<%=recipeId%>>
								<div style="font-weight: bold; font-size: 20px;">
									<a href=<%=link%>> <%=name%>
									
									</a>
									<br>
									</div>
									Rating:
									<%=starRating%><br>
									<div style="float: left; width: 30%;">
										Prep time:
										<%=prepTime%>
										mins
									</div>
									<div style="float: right; width: 70%;">
										Cook time:
										<%=cookTime%>
										mins
									</div>
								

							</td>
						</tr>
						<%
							}
						%>

					</table>
				</div>
			</div>
			<div class="col-lg-1"></div>
			<!-- Column for dropwdown and buttons -->
			<div class="col-lg-3">
			<br>
				<select id="mySelect">
					<option></option>
					<option value="favorites.jsp">Favorites</option>
					<option value="toExplore.jsp">To Explore</option>
					<option value="doNotShow.jsp">Do Not Show</option>
				</select><br> <br>

				<button type="button" onclick="manageList()"><div id="ButtonText">Manage List</div></button>
				<br> <br>
				<button onclick="returnToResults()"><div id="ButtonText">Return to Results Page</div></button>
				<br> <br>
				<button onclick="returnToSearch()"><div id="ButtonText">Return to Search Page</div></button>
				<br> <br>
			</div>
		</div>

		<!-- Row for the edit button -->
		<div class="row text-center">
			<input type="button" value="Edit" class="styled-button-2"
				id="editButton"> <input type="button" value="Delete"
				class="styled-button-2" id="deleteButton"
				style="visibility: hidden;"> <select id="moveDropdown"
				style="visibility: hidden;">
				<option></option>
				<option value="favorites.jsp">Favorites</option>
				<option value="toExplore.jsp">To Explore</option>
				<option value="doNotShow.jsp">Do Not Show</option>
			</select><br> <br> <input type="button" value="Move"
				class="styled-button-2" id="moveButton" style="visibility: hidden;">


		</div>

	</div>

	<script>
		// Page Redirection
		function returnToSearch() {
			window.location.href = 'searchPage.html';
		}
		function returnToResults() {
			window.location.href = 'resultsPage.jsp';
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
		// Button toggle (hide/show)
		var editButton = document.getElementById("editButton");
		var deleteButton = document.getElementById("deleteButton");
		var moveDropdown = document.getElementById("moveDropdown");
		var moveButton = document.getElementById("moveButton");
		var restCheck = document.getElementById("checkboxRest");
		var recipeCheck = document.getElementById("checkboxRecipe");
		var checkBoxes = document.getElementsByClassName("checkbox");

		editButton.onclick = function() {
			if (editButton.value === "Edit") {
				editButton.value = "Done";
			} else {
				editButton.value = "Edit";
			}
			if (deleteButton.style.visibility === "hidden") {
				deleteButton.style.visibility = "visible";
			} else {
				deleteButton.style.visibility = "hidden";
			}
			if (moveDropdown.style.visibility === "hidden") {
				moveDropdown.style.visibility = "visible";
			} else {
				moveDropdown.style.visibility = "hidden";
			}
			if (moveButton.style.visibility === "hidden") {
				moveButton.style.visibility = "visible";
			} else {
				moveButton.style.visibility = "hidden";
			}
			for (i = 0; i < checkBoxes.length; i++) {
				console.log(checkBoxes[i].id);
				console.log(checkBoxes[i].value);
				console.log(checkBoxes[i].checked);
				if (checkBoxes[i].style.visibility === "hidden") {
					checkBoxes[i].style.visibility = "visible";
				} else {
					checkBoxes[i].style.visibility = "hidden";
				}
			}
		}

		deleteButton.onclick = function() {
			var xhttp = new XMLHttpRequest();
			var linkRest = "1";
			var linkRecipe = "2";
			var checked = false;
			for (i = 0; i < checkBoxes.length; i++) {
				if (checkBoxes[i].checked === true) {
					checked = true;
					if (checkBoxes[i].id === "checkboxRest") {
						linkRest = linkRest + "," + checkBoxes[i].value;
					}
					if (checkBoxes[i].id === "checkboxRecipe") {
						linkRecipe = linkRecipe + "," + checkBoxes[i].value;
					}
				}
			}
			console.log(linkRest);
			console.log(linkRecipe);
			xhttp.open("GET", "DeleteItem?restIds=" + linkRest + "&recipeIds="
					+ linkRecipe + "&list=exp", true);
			xhttp.onreadystatechange = function() {
				//window.location.reload(true);

			}
			xhttp.send();
			if (checked === true) {
				location.reload();
				//window.location.href = "deleteItem.jsp?restIds=" + linkRest + "&recipeIds=" + linkRecipe + "&list=fav";
			}
		}

		moveButton.onclick = function() {
			if (moveDropdown.selectedIndex != "0"
					&& moveDropdown.selectedIndex != "2") {

				var xhttp = new XMLHttpRequest();
				var linkRest = "1";
				var linkRecipe = "2";
				var checked = false;
				for (i = 0; i < checkBoxes.length; i++) {
					if (checkBoxes[i].checked === true) {
						checked = true;
						if (checkBoxes[i].id === "checkboxRest") {
							linkRest = linkRest + "," + checkBoxes[i].value;
						}
						if (checkBoxes[i].id === "checkboxRecipe") {
							linkRecipe = linkRecipe + "," + checkBoxes[i].value;
						}
					}
				}
				console.log(linkRest);
				console.log(linkRecipe);
				xhttp.open("GET", "MoveItem?restIds=" + linkRest
						+ "&recipeIds=" + linkRecipe + "&list=exp&to="
						+ moveDropdown.selectedIndex, true);
				xhttp.onreadystatechange = function() {
					//window.location.reload(true);

				}
				xhttp.send();
				if (checked === true) {
					location.reload();
					//window.location.href = "deleteItem.jsp?restIds=" + linkRest + "&recipeIds=" + linkRecipe + "&list=fav";
				}
			}
		}
	</script>

</body>
</html>