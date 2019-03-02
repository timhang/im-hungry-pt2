<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Results Page</title>
		<link rel="stylesheet" href="css/boostrap.min.css" />
		<link rel="stylesheet" type="text/css" href="resultsPage.css" />
	</head>
	
	<body>
		
		<div class="boxed">
			Photo collage
		</div>
		<div class="dropdown">
			<select>
			  <option></option>
			  <option value="favorites">Favorites</option>
			  <option value="toExplore">To Explore</option>
			  <option value="doNotShow">Do Not Show</option>
			</select>
		</div></br>
		<button onclick="manageList()">Manage List</button></br>
		<button onclick="returnToSearch()">Return to Search Page</button>
	
		
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