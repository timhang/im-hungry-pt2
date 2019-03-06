<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Results Page</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="resultsPage.css" />
		<style>
  			#img1{
				width: 150px;
				height: 150px;
				}
				.image{
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
		    <div class="col-lg-8">
		    	
				<%
				if(request.getParameter("searchText") != ImageAPI.getSearchTerm() && request.getParameter("numberType")!=null){
					ImageAPI.setState(false);
					RestAPI.setState(false);
					RecipeAPI.setState(false);
					System.out.println("inside set state 1");
				}
				ArrayList<String> imgArr;
				if(ImageAPI.getState() == false){
			    	imgArr = ImageAPI.call_me(request.getParameter("searchText"));
			    	System.out.println(request.getParameter("numberType"));
			    	ImageAPI.setState(true);
				} else {
					imgArr = ImageAPI.getImageArray();
				}
				
				for (int i = 0; i < imgArr.size(); i++) {
					
					out.println("<img src = "+ imgArr.get(i)+" id = img1>");
		    		
				}
		       %>
			    
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
				</div><br>
				<button type="button" onclick="manageList()">Manage List</button><br><br>
				<button onclick="returnToSearch()">Return to Search Page</button>
		    </div>
		  </div>
		  <!-- Row for Restaurant and Recipe table -->
		  <div class="row">
		    <div class="col-lg-12">
		    	<h1 id="title">Results For "<span id="searchText"></span>"</h1>
				<script type='text/javascript'>
					document.getElementById('searchText').innerHTML = sessionStorage.getItem('searchText');
				</script>
				<div class = "resultsTable" align = "center">
			<table style="width:100%">
				<tr>
					<th style="font-size: 30px;">Restaurant</th>
					<th style="font-size: 30px;">Recipe</th>
				</tr>
				<%
				ArrayList<Integer> restIDs = new ArrayList<Integer>();
				ArrayList<Integer> recipeIds = new ArrayList<Integer>();
				HashMap<Integer, Restaurant> allRestaurants = new HashMap<Integer, Restaurant>();
				HashMap<Integer, Recipe> allRecipes = new HashMap<Integer, Recipe>();
				if(RestAPI.getState() == false || RecipeAPI.getState() == false){
				
					allRestaurants = RestAPI.call_me(request.getParameter("searchText"), Integer.valueOf(request.getParameter("numberType")));
					restIDs = RestAPI.getRestIDs();
				
					allRecipes = RecipeAPI.call_me(request.getParameter("searchText"), Integer.valueOf(request.getParameter("numberType")));
					recipeIds = RecipeAPI.getRecipeId();
					RestAPI.setState(true);
					RecipeAPI.setState(true);
				} else {
					allRestaurants = RestAPI.getRestaurantMap();
					allRecipes = RecipeAPI.getRecipeMap();
					restIDs = RestAPI.getRestIDs();
					recipeIds = RecipeAPI.getRecipeId();
				}
				
		    	for (int i = 0; i < restIDs.size(); i++) {
					out.println("<tr>");
					out.println("<td><div>");
					out.println("Name: " + "<a href=restPage.jsp?restaurantId="+ restIDs.get(i)+ ">" + allRestaurants.get(restIDs.get(i)).getName()+ "</a><br>");
					out.println("Distance: Need to Calculate <br>");
					out.println("Address: " + allRestaurants.get(restIDs.get(i)).getAddress()+"<br>");
					out.println("Stars: " + allRestaurants.get(restIDs.get(i)).getRating()+"<br>");
					out.println("</div></td>");
					
					out.println("<td><div>");
					out.println("Name: " + "<a href=recipePage.jsp?recipeId=" +recipeIds.get(i) + ">" + allRecipes.get(recipeIds.get(i)).getName()+"</a><br>");
					out.println("Stars: " + allRecipes.get(recipeIds.get(i)).getStarRating()+"<br>");
					out.println("Prep time: " + allRecipes.get(recipeIds.get(i)).getPrepTime() + " mins    Cook time: " + allRecipes.get(recipeIds.get(i)).getCookTime()+" mins<br>");
					out.println("</div></td>");
					out.println("</tr>");
				}
		       %>
		       
	       </table>
		</div>
				
				<!-- <div class="resultsTable" align="center">
					<table style="width:100%">
						<tr>
							<th style="font-size: 30px;">Restauraunt</th>
							<th style="font-size: 30px;">Recipe</th>
						</tr>
						<tr>
						    <td><a href="restPage.jsp">Blaze Pizza</a></td>
						    <td><a href="recipePage.jsp">Margherita Pizza</a></td>
						</tr>
						<tr>
						    <td>Bon Shabu</td>
						    <td>Hotpot</td>
						</tr>
						<tr>
						    <td>Meat Love</td>
						    <td>Korean Barbeque</td>
						</tr>
						<tr>
						    <td>Filler</td>
						    <td>Filler</td>
						</tr>
						<tr>
						    <td>Filler</td>
						    <td>Filler</td>
						</tr>
						<tr>
						    <td>Filler</td>
						    <td>Filler</td>
						</tr>
						<tr>
						    <td>Filler</td>
						    <td>Filler</td>
						</tr>
						<tr>
						    <td>Filler</td>
						    <td>Filler</td>
						</tr>
					</table>
				
				</div> -->
		    </div>
		  </div>
		</div>
	
		<script>		 
			function returnToSearch() {
				window.location.href = 'searchPage.html';
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
	</body>
</html>