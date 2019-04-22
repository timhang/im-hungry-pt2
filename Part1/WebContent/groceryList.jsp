<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
					</div>
					<!-- Dynamically generated in script tag  -->
					<ul id="ingredients">
						<%
							//Second half of the ingredients list
							for (int i = 0; i < 10; i++) {
						%>
						<div class="row">
							<div class="col-lg-6">
								<li>ingredient</li>
								<br />
							</div>
							<div class="col-lg-6">
								<button onclick="removeGrocery()" class="ButtonText"
									id="ingredient<%=i%>">Remove</button>
							</div>
						</div>
						<%
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
					<button onclick="backToResults()">
						<div class="ButtonText">Back to Results</div>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>



<script>

//Page Redirection
function removeGrocery() {
	
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