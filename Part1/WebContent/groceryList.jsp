<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grocery List</title>
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

	<div class="container-fluid">

		<div class="row" style="padding: 60px 0px;">

			<div class="col-lg-1"></div>
			<div class="col-lg-6">
				<div class="card"
					style="font-weight: bold; padding: 0px 12px 12px 12px;">
					<div id="InsideCard">
						<h2 style="font-weight: bold;" id="title">Grocery List</h2>
						<h3 id="message">Removed item from grocery list.</h3>
					</div>
					<!-- Dynamically generated in script tag  -->
					<ul id="ingredients">
						<%
							ArrayList<String> groceryList = new ArrayList<String>(); 
							groceryList = DatabaseDriver.GetGroceryList();
							if(!groceryList.isEmpty() && groceryList!=null){
							for (int i = 0; i < groceryList.size(); i++) {
						%>
						<div class="row">
							<div class="col-lg-6">
								<li><%=groceryList.get(i) %></li>
								<br>
							</div>
							<div class="col-lg-6">
								<button onclick="removeGrocery(this.value)" value="<%=groceryList.get(i)%>" class="ButtonText"
									id="ingredient<%=i%>">Remove</button>
							</div>
						</div>
						<%
							}
							}
						%>
					</ul>
				</div>
			</div>
			<div class="col-lg-2"></div>
			<!-- Redirection buttons -->
			<div class="col-lg-3">
				<div id="togglePrint">
					<br>
					<button onclick="printableView()">
						<div class="ButtonText">Printable View</div>
					</button>
					<br> <br>
					<div>
					<select id="listSelect">
						<option>------------ Select List ------------</option>
						<option value="lists.html?q=fav">Favorites</option>
						<option value="lists.html?q=toExplore">To Explore</option>
						<option value="lists.html?q=doNotShow">Do Not Show</option>
					</select>
				</div>
				<br>
				<button type="button" onclick="manageList()">
					<div class="ButtonText">Manage List</div>
				</button>
				<br> <br>
				<button onclick="returnToSearch()">
					<div class="ButtonText">Return to Search Page</div>
				</button>
				<br> <br>
					<button onclick="backToResults()">
						<div class="ButtonText">Back to Results</div>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>



<script>

	$("#message").hide();

//Page Redirection
function removeGrocery(ingredient) {
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", "RemoveFromGroceryList?itemName="+ingredient, false);

	xhttp.send();

	// alert("Removed item from grocery list.");
	$("#message").show("slow");
	
	setTimeout(function () { $("#message").hide("slow"); }, 2000);
	
	setTimeout(function () { location.reload(); }, 2010);

	
}

function returnToSearch() {
	window.location.href = 'searchPage.html';
}
function manageList() {
	var link = document.getElementById("mySelect").selectedIndex;
	if (link == "1") {
		window.location.href = 'lists.html?q=fav';
	} else if (link == "2") {
		window.location.href = 'lists.html?q=toExplore';
	} else if (link == "3") {
		window.location.href = 'lists.html?q=doNotShow';
	}
}

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

$(function(){

    // get ingredient list from backend
    $.post("Ingredients", 
    {
        "mode": "get"
    })
    done(function(response){
        // append each element in the response
        response.data.forEach(element => {
            $("#ingredients").append(`<li>${element}</li>`);
        });
    })
});

</script>
</html>