<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Results Page</title>
		<link rel="stylesheet" type="text/css" href="resultsPage.css" />
	</head>
	
	<body>
		<h1 id="title">Results For "<span id="searchText"></span>"</h1>
		<script type='text/javascript'>
			document.getElementById('searchText').innerHTML = sessionStorage.getItem('searchText');
		</script>
		
		<div align="center">
			<table style="width:100%">
				<tr>
					<th>Restauraunt</th>
					<th>Recipe</th>
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
			</table>
		
		</div>
		
		
			<button onclick="manageList()">Manage List</button>
			<button onclick="returnToSearch()">Return to Search Page</button>
	
	
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