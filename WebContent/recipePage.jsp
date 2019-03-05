<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Recipe Page</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	 	<link rel="stylesheet" type="text/css" href="restPage.css" />
	 	
	</head>
	<body>
		<div class="container-fluid">
		 <h1 id="title">Kickin' Turkey Burger with Caramelized Onions and Spicy Sweet Mayo</h1></br>
		  <div class="row">
		    <div class="col-lg-8">
		    	</br>
		    	<img src="smiley.gif"></br>
		    	<p>
		    		Prep time:
				</p></br>
		    	<p>
		    		Cook time: 
		    	</p></br>
		    	<p>
		    		Ingredients:
		    	</p></br>
		    	<div class="row">
				    <div class="col-lg-2">
				    	<ul>
						  <li>Coffee</li>
						  <li>Tea</li>
						  <li>Milk</li>
						</ul>
				    </div>
				    <div class="col-lg-2">
				    	<ul>
						  <li>Coffee</li>
						  <li>Tea</li>
						  <li>Milk</li>
						</ul>
				    </div>
				    <div class="col-lg-8">
				    	
				    </div>
				</div>
				<p>Instructions: </p>
					<ol type="1">
						<li>first</li>
						<li>second</li>
						<li>third</li>
					</ol>
				
		    </div>
		    <div class="col-lg-4">
		    	<button onclick="printableView()">Printable View</button></br></br>
		    	<button onclick="backToResults()">Back to Results</button></br></br>
				<div class="dropdown">
					<select>
					  <option></option>
					  <option value="favorites">Favorites</option>
					  <option value="toExplore">To Explore</option>
					  <option value="doNotShow">Do Not Show</option>
					</select>
					</div></br></br>
				<button onclick="addToList()">Add to List</button></br>
		    	
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