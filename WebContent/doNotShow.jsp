<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Do Not Show</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 	<link rel="stylesheet" type="text/css" href="favorites.css" />
	 	
	</head>
	<body>
		<div class="container-fluid">
		 <h1 id="title">Do Not Show</h1>
		  <div class="row">
		    <div class="col-lg-8">
		    	<div class="listTable">
			    	<table style="width:100%">
						<%
						// Loop through all of the restauraunts and recipes and display based on true/false boolean
						  for (int i = 0; i < 3; i++) {
							// Restauraunt 
							out.println("<tr>");
							out.println("<td><div>");
							// TODO Turn the name into <a> tags again that lead to the restauraunt page
							out.println("Name: " + "<br>");
							out.println("Distance: <br>");
							out.println("Address: <br>");
							out.println("Stars: <br>");
							out.println("</div></td>");
							out.println("</tr>");
							
							// Recipe
							out.println("<tr>");
							out.println("<td><div>");
							// TODO Turn the name into <a> tags again that lead to the RECIPE page
							out.println("Name: <br>");
							out.println("Stars: <br>");
							out.println("Prep time: " + " Cook time: <br>");
							out.println("</div></td>");
							out.println("</tr>");
							
						}
				       %>
			       </table>
		       </div>
		    </div>
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
	
	</body>
</html>