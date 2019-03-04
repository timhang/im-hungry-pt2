<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
		<div class="container-fluid">
		 <h1 id="title">Blaze Pizza</h1>
		  <div class="row">
		    <div class="col-lg-8" style="background-color:lavender;">
		    	<p>
		    		3335 S Figueroa St, Los Angeles, CA 90007 
				</p></br>
		    	<p>
		    		(213) 755 3223 
		    	</p></br>
		    	<a href="www.blazepizza.com">www.blazepizza.com</a>
		    	</br>

		    
		    </div>
		    <div class="col-lg-4" style="background-color:lavenderblush;">
		    	<button onclick="printableView()">Printable View</button></br>
		    	<button onclick="backToResults()">Back to Results</button></br>
				<div class="dropdown">
					<select>
					  <option></option>
					  <option value="favorites">Favorites</option>
					  <option value="toExplore">To Explore</option>
					  <option value="doNotShow">Do Not Show</option>
					</select>
					</div></br>
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