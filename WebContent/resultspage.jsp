<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results Page</title>
</head>
<body>
	<h1>Results For...</h1>
	<div class="row">
	<div class="col-sm-2 text-left">
		<h2>Restaurant</h2>
	</div>
	<div class="col-sm-2 text-right">
		<h2>Recipe</h2>
	</div>
	<button onclick="myFunction()">Return to Search Page</button>
	</div>

<script>
function myFunction() {
	window.location.href = 'http://localhost:8080/ImHungry/SearchPage.html';
	}
</script>
</body>
</html>