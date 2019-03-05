<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Restaurant Page</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 	<link rel="stylesheet" type="text/css" href="restPage.css" />
	 	
	</head>
	<body>
	<% 
		int restaurantId = Integer.valueOf(request.getParameter("restaurantId"));
		Restaurant currRest = RestAPI.getRestaurantMap().get(restaurantId);
		String name = currRest.getName();
		String address = currRest.getAddress();
		String phoneNumber = currRest.getPhoneNumber();
		String URL = currRest.getURL();
	
	%>
		<div class="container-fluid">
		 <h1 id="title"><%= name %></h1><br>
		  <div class="row">
		    <div class="col-lg-8">
		    	<br>
		    	<p>
		    		<%= address %>
				</p><br>
		    	<p>
		    		<%= phoneNumber %> 
		    	</p><br>
		    	<a href= <%= URL %> ><%= URL %> </a>
		    	<br>

		    
		    </div>
		    <div class="col-lg-4">
		    	<button onclick="printableView()">Printable View</button><br><br>
		    	<button onclick="backToResults()">Back to Results</button><br><br>
				<div class="dropdown">
					<select>
					  <option></option>
					  <option value="favorites">Favorites</option>
					  <option value="toExplore">To Explore</option>
					  <option value="doNotShow">Do Not Show</option>
					</select>
					</div><br><br>
				<button onclick="addToList()">Add to List</button><br>
		    	
		    </div>
		  </div>
		</div>
	
		<script>		 
			function backToResults() {
				window.location.href = 'resultsPage.jsp';
			}
			
		</script>
	
	</body>
</html>