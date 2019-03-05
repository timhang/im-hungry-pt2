<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Results Page</title>
		<link rel="stylesheet" href="css/boostrap.min.css" />
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
		
		<div id = "top">
			
		</div>
		<div class = boxed>
		<%
		if(request.getParameter("searchText") != ImageAPI.getSearchTerm()){
			ImageAPI.setState(false);
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
		<div id = "rightSide">
			<div>
				<div class="dropdown">
					<select id="mySelect">
					  <option></option>
					  <option value="favorites.jsp">Favorites</option>
					  <option value="toExplore.jsp">To Explore</option>
					  <option value="doNotShow.jsp">Do Not Show</option>
					</select>
				</div>
			</div>
			<div>
				<button type="button" onclick="manageList()">Manage List</button>
			</div>
			<div>
				<button onclick="returnToSearch()">Return to Search Page</button>
			</div>
		</div>
		<div></div>
		
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
				
		    	
				HashMap<Integer, Restaurant> allRestaurants = RestAPI.call_me("Pizza", 5);
				ArrayList<Integer> restIDs = RestAPI.getRestIDs();
				
		    	System.out.println(allRestaurants.size());
		    	
		    	for (int i = 0; i < restIDs.size(); i++) {
					out.println("<tr>");
					out.println("<td><a href= restPage.jsp>Blaze Pizza</a></td>");
					out.println("<td><div>");
					out.println("Name: " + allRestaurants.get(restIDs.get(i)).getName()+"</br>");
					out.println("Distance: Need to Calculate </br>");
					out.println("Address: " + allRestaurants.get(restIDs.get(i)).getAddress()+"</br>");
					out.println("Stars: " + allRestaurants.get(restIDs.get(i)).getRating()+"</br>");
					out.println("</tr>");
				}
		       %>
		       
	       </table>
		</div>
		
		<%-- <div class = "resultsTable" align = "center">
			<table style="width:100%">
				<tr>
					<th style="font-size: 30px;">Restaurant</th>
					<th style="font-size: 30px;">Recipe</th>
				</tr>
				<%
				
		    	
				HashMap<Integer, Recipe> allRecipes = RecipeAPI.call_me("burger",5);
				
				
				ArrayList<Integer> recipeIds = RecipeAPI.getRecipeId();
				
		    	System.out.println(allRecipes.size());
		    	
		    	for (int i = 0; i < recipeIds.size(); i++) {
					out.println("<tr>");
					out.println("<td><a href= restPage.jsp>Blaze Pizza</a></td>");
					out.println("<td><div>");
					out.println("Name: " + allRecipes.get(recipeIds.get(i)).getName()+"</br>");
					out.println("Stars: " + allRecipes.get(recipeIds.get(i)).getStarRating()+"</br>");
					out.println("Prep time: " + allRecipes.get(recipeIds.get(i)).getPrepTime() + " Cook time: " + allRecipes.get(recipeIds.get(i)).getCookTime()+"</br>");
					out.println("</div></td>");
					out.println("</tr>");
				}
		       %>
	       </table>
		</div> --%>
		
		<div class="resultsTable" align="center">
			<table style="width:100%">
				<tr>
					<th style="font-size: 30px;">Restauraunt</th>
					<th style="font-size: 30px;">Recipe</th>
				</tr>
				<tr>
				    <td><a href="restPage.jsp">Blaze Pizza</a></td>
				    <td>Margherita Pizza</td>
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