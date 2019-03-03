<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Results Page</title>
		<link rel="stylesheet" href="css/boostrap.min.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="resultsPage.css" />
	</head>
	
	<body>
		
		<div id = "top">
			
		</div>
		<div class="boxed">
			Photo collage
		</div>
		
		<div id = "rightSide">
			<div>
			<div class="dropdown">
				<select>
				  <option></option>
				  <option value="favorites">Favorites</option>
				  <option value="toExplore">To Explore</option>
				  <option value="doNotShow">Do Not Show</option>
				</select>
			</div>
			</div>
			<div>
			<button onclick="manageList()">Manage List</button>
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
		
		<div class="resultsTable" align="center">
			<table style="width:100%">
				<tr>
					<th style="font-size: 30px;">Restauraunt</th>
					<th style="font-size: 30px;">Recipe</th>
				</tr>
				<tr>
				    <td>Blaze Pizza</td>
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
				window.location.href = 'searchPage.html';
			}
		</script>
	</body>
</html>