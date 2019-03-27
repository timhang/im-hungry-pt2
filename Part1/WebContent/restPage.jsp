<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="restPage.css" />

</head>
<body>
	<!-- this function populates restaurant data -->
	<%
		int restaurantId = Integer.valueOf(request.getParameter("restaurantId"));
		Restaurant currRest = RestAPI.getRestaurantMap().get(restaurantId);
		String name = currRest.getName();
		String address = currRest.getAddress();
		String phoneNumber = currRest.getPhoneNumber();
		if (phoneNumber == null) {
			phoneNumber = "Phone Number Unavailable";
		}
		String URL = currRest.getURL();
		String map = "googleMap.html";
		double lat = currRest.getLatitude();
		double lng = currRest.getLongitude();
		map = map + "?lat=" + Double.toString(lat) + "&lng=" + Double.toString(lng);
	%>
	<!-- Information of Restaurant -->
	<div class="container-fluid">
		
		<div class="row">
			
				<div class="col-lg-8">
				<div class="card">
					<h1 id="title"><%=name%></h1>
					<br>
					<br> <a href=<%=map%>> <%=address%>
					</a><br> <br>
					<p>
						<%=phoneNumber%>
					</p>
					<br> <a href=<%=URL%>><%=URL%> </a> <br>
				</div>
				</div>
			
			<!-- Redirection Buttons -->
			<div class="col-lg-4">
				<div id="togglePrint">
					<button onclick="printableView()">Printable View</button>
					<br> <br>
					<button onclick="backToResults()">Back to Results</button>
					<br> <br>
					<div class="dropdown">
						<select id="listSelect">
							<option></option>
							<option value="favorites">Favorites</option>
							<option value="toExplore">To Explore</option>
							<option value="doNotShow">Do Not Show</option>
						</select>
					</div>
					<br> <br>
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

		function addToList(selectedIndex) {
			if (selectedIndex != "0") {
				var xhttp = new XMLHttpRequest();
				var url_string = window.location.href;
				var url = new URL(url_string);
				var id = parseFloat(url.searchParams.get("restaurantId"));
				if (selectedIndex == "1") {
					xhttp.open("GET", "addToList.jsp?type=restaurant&id=" + id
							+ "&list=fav", false);
				} else if (selectedIndex == "2") {
					xhttp.open("GET", "addToList.jsp?type=restaurant&id=" + id
							+ "&list=exp", false);
				} else if (selectedIndex == "3") {
					xhttp.open("GET", "addToList.jsp?type=restaurant&id=" + id
							+ "&list=dns", false);
				}
				xhttp.send();
				/* if(xhttp.responseText.trim().length()>0){
					return false;
				}
				return true; */
			}
		}
	</script>

</body>
</html>