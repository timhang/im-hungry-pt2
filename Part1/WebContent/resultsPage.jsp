<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.*, java.util.*, org.json.*, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="js/html2canvas.min.js"></script>
<script src="js/html2canvas.js"></script>

<script src="js/dom-to-image.min.js"></script>
<script src="js/dom-to-image.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resultsPage.css" />
<!-- Image styling for photo collage -->
<style>
#insideImg {
	max-width: 150px;
	height: auto;
}

.image {
	display: inline-block;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<!-- Row for photo collage and buttons -->
		<div class="row">
			<br>
			<!-- Photo collage column -->
			<div class="col-lg-1"></div>

			<div id="collage" class="col-lg-8 text-center" value='<%=request.getParameter("searchText")%>' >

				<%ArrayList<String> imgArr = ImageAPI.getImagesToDisplay(request.getParameter("searchText"));%>
				<!-- First row of images -->
				<div class='row'>
					<div class='col-lg-12'>
						<%
							for (int i = 0; i < imgArr.size() / 2; i++) {
								out.println("<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg src = "
										+ imgArr.get(i) + "></div>");
							}
						%>
					</div>
				</div>
				<!-- Second row of images -->
				<div class='row'>
					<%
						for (int i = imgArr.size() / 2; i < imgArr.size(); i++) {
							out.println("<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg src = "
									+ imgArr.get(i) + "></div>");
						}
					%>
				</div>

			</div>

			<!-- Button column -->
			<div class="col-lg-3 vcenter">
				<br>
				<div>
					<select id="mySelect">
						<option>------------------- Select List -------------------</option>
						<option value="lists.html?q=fav">Favorites</option>
						<option value="lists.html?q=toExplore">To Explore</option>
						<option value="lists.html?q=doNotShow">Do Not Show</option>
					</select>
				</div>
				<br>
				<button type="button" onclick="manageList()">
					<div id="ButtonText">Manage List</div>
				</button>
				<br> <br>
				<button onclick="returnToSearch()">
					<div id="ButtonText">Return to Search Page</div>
				</button>
				<br> <br>
				<button onclick="groceryList()">
					<div id="GroceryList" class="ButtonText">Grocery List</div>
				</button>
			</div>
		</div>
		<!-- Row for Restaurant and Recipe table -->
		<br> <br>
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<br>
					<h1 id="title">
						Results For "<span id="searchText"></span>"
					</h1>
					<script type='text/javascript'>
						document.getElementById('searchText').innerHTML = sessionStorage
								.getItem('searchText');
					</script>
					<div class="resultsTable" align="center">
					<table  style="width: 95%">
							<tr>
								<th style="font-size: 30px;">Restaurant</th>
								<th style="font-size: 30px;">Recipe</th>
							</tr>

							<%
								int pageNumber;
								if(request.getParameter("pageNumber")==null){
									pageNumber = 1;
								} else {
									pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
								}

								int startIndex = (pageNumber)*5 -5;
								int endIndex = startIndex+5;
								ArrayList<Integer> recipeIds = RecipeAPI.resultsPageList(request.getParameter("searchText"),
										request.getParameter("numberType"));
								ArrayList<Integer> restIDs = RestAPI.resultsPageList(request.getParameter("searchText"),
										request.getParameter("numberType"));

								HashMap<Integer, Recipe> allRecipes = RecipeAPI.getRecipeMap();
								HashMap<Integer, Restaurant> allRestaurants = RestAPI.getRestaurantMap();

								int size = Math.max(restIDs.size(), recipeIds.size());
								for (int i = startIndex; i < endIndex; i++) {
								//for (int i = 0; i < size; i++) {
									if (i < restIDs.size()) {
										int restId = restIDs.get(i);
										String name = allRestaurants.get(restId).getName();
										String address = allRestaurants.get(restId).getAddress();
										double priceRange = allRestaurants.get(restId).getPriceRange();
										double rating = allRestaurants.get(restId).getRating();
										String travelTime = allRestaurants.get(restId).getTravelTime();
										String link = "restPage.jsp?restaurantId=" + restId;
							%>

							<tr>
								<td class='clickable-row restaurant' data-href=<%=link%>><div>
										<div style="font-weight: bold; font-size: 17px;">
											<%=name%>
										</div>
										<div style="float: left; width: 70%;">
											Address:
											<%=address%></div>
										<div style="float: right; text-align: right; width: 30%;">
											$<%=priceRange%></div>
										<div>
											Rating:
											<%=rating%>
										</div>
										<div>
											Driving Time:
											<%=travelTime%></div>
										<div class="radius">
											Radius:
											</div>
									</div></td>
								<%
									} else {
								%>

							<tr>
								<td><div></div></td>
								<%
									}

										if (i < recipeIds.size()) {
											int recipeId = recipeIds.get(i);
											String name = allRecipes.get(recipeId).getName();
											float rating = allRecipes.get(recipeId).getStarRating();
											int prepTime = allRecipes.get(recipeId).getPrepTime();
											int cookTime = allRecipes.get(recipeId).getCookTime();
											String link = "recipePage.jsp?recipeId=" + recipeId;
								%>
								<td class='clickable-row recipe' data-href=<%=link%>><div>
										<div style="font-weight: bold; font-size: 17px;">
											<%=name%>
										</div>
										<div>
											Rating:
											<%=rating%></div>
										<div style="float: left; width: 50%;">
											Prep time:
											<%=prepTime%>
											mins
										</div>
										<div style="float: right; width: 50%">
											Cook time:
											<%=cookTime%>
											mins
										</div>
									</div></td>
							</tr>
							<%
								} else {
							%>
							<td><div></div></td>
							</tr>
							<%
								}

								}
							%>

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>



<div id=pageNumberDiv>
										<div id=prevButton onclick="paginatePrev(currPageGlobal)"> previous </div>
										<div id=innerPageNumberDiv></div>
										<div id=nextButton onclick="paginateNext(currPageGlobal)"> next </div>
									 </div>



									 <script>
	 									var numPages = <%=(int)Math.ceil((double)size / 5)%>;

	 									<% int numPagesJava = (int)Math.ceil((double)size / 5); %>


	 									if( numPages < 6){	/* <!-- less than 5 pages, print all pages --> */
											<%
											for(int i = 0; i < (int) Math.ceil((double)size / 5); i++) {
											%>
												$('#innerPageNumberDiv').append('<div onclick="paginate(<%=i+1%>)" class="pageNumbersClass" id="pageNumber<%=i+1%>"><%=i+1%> </div>');

											<%
												if(i+1 == pageNumber){
											%>

														$('#pageNumber<%=pageNumber%>').css({
														    'font-weight': 'bold',
														    'text-decoration': 'underline',
														});

											<%
												}
											  }
											%>
	 									}

										else if (<%=pageNumber%> < 4){	<!-- print first 5 -->

											<%
											for(int i = 0; i < 5; i++) {
											%>
												$('#innerPageNumberDiv').append('<div onclick="paginate(<%=i+1%>)" class="pageNumbersClass" id="pageNumber<%=i+1%>"><%=i+1%> </div>');

											<%
												if(i+1 == pageNumber){
											%>

														$('#pageNumber<%=pageNumber%>').css({
														    'font-weight': 'bold',
														    'text-decoration': 'underline',
														});

											<%
												}
											  }
											%>
										}
										//<!-- print last 5 -->
										else if (<%=pageNumber%> > numPages-3) { 

											<% for(int i = numPagesJava-5; i < numPagesJava; i++) {  %>
												$('#innerPageNumberDiv').append('<div onclick="paginate(<%=i+1%>)" class="pageNumbersClass" id="pageNumber<%=i+1%>"><%=i+1%> </div>');

											<%  	if(i+1 == pageNumber){  %>

														$('#pageNumber<%=pageNumber%>').css({
														    'font-weight': 'bold',
														    'text-decoration': 'underline',
														});

											<%
													}
											    }
											%>
										}
										// <!-- -2 -1 pageNumber +1 +2 -->
										else {	

										<%
										for(int i = pageNumber-3; i < pageNumber+2; i++) {
											%>
												$('#innerPageNumberDiv').append('<div onclick="paginate(<%=i+1%>)" class="pageNumbersClass" id="pageNumber<%=i+1%>"><%=i+1%> </div>');

											<%
												if(i+1 == pageNumber){
											%>

														$('#pageNumber<%=pageNumber%>').css({
														    'font-weight': 'bold',
														    'text-decoration': 'underline',
														});

											<%
												}
											  }
											%>
										}
 									</script>







								<div id=quickAccessWrapper>
									<h2 id=quickAccessText> Quick Access</h2>
								</div>

								<script type="text/javascript">
									var xhttp = new XMLHttpRequest();
									xhttp.open("GET", "QuickAccess", false);	//What should QUICKACCESS be?
									xhttp.send();
									var obj = JSON.parse(xhttp.responseText);

									//console.log("obj:" + obj);

									for(let i = 0; i < obj.length; i++){
										var quickAccessDiv = document.createElement("DIV");
										quickAccessDiv.setAttribute("id", obj[i].searchTerm);
										quickAccessDiv.setAttribute("class", "searchTermClass");
										quickAccessDiv.addEventListener('click', function(){
											quickAccessReloadPage(obj[i].searchTerm, obj[i].integer);
										})

										var textDiv = document.createElement("h1");
										textDiv.setAttribute("class", "searchTermText");
										textDiv.textContent = obj[i].searchTerm + " (" + obj[i].integer + ")";
										textDiv.style.left = 20

										var myDiv = document.createElement("div");
										myDiv.innerHTML = '<br/>';

										quickAccessDiv.appendChild(myDiv);
										quickAccessDiv.appendChild(textDiv);
										document.getElementById("quickAccessWrapper").appendChild(quickAccessDiv);
									}



									function quickAccessReloadPage (searchTerm, integer) {	//make POST request that passes the searchTerm and integer
										console.log("clicked on " + searchTerm + " " + integer);

										$.ajax({
										    type: "POST",
										    url: "resultsPage.jsp",
										    data: searchTerm, integer,
										    success: function() {
										        console.log("POST searchTerm: " + searchTerm);
										        console.log("POST integer: " + integer);


										        sessionStorage.setItem('searchText', searchTerm);
												sessionStorage.setItem('intNum', integer);

												window.location.href = 'resultsPage.jsp?searchText='+searchTerm+'&numberType='+integer+'&pageNumber='+1;
										        //window.location.reload();

										    }
										});


									}
									</script>

								<script>var currPageGlobal = <%=pageNumber%></script>


								<script>
									function paginate(selectedPage){
										if(selectedPage != "0"){
											var url_string = window.location.href;
									        var url = new URL(url_string);
									        var searchText = sessionStorage.getItem('searchText');
									        var numberType = sessionStorage.getItem('intNum');
									        var pageNumber = selectedPage;
									        currPageGlobal = selectedPage;

											window.location.href = 'resultsPage.jsp?searchText='+searchText+'&numberType='+numberType+'&pageNumber='+pageNumber;
										}
									}
								</script>


								<script>
									function paginatePrev(currPage){
																	console.log("got into paginatePrev. currPage = " + currPage);
										if(currPage > 1){
											var url_string = window.location.href;
									        var url = new URL(url_string);
									        var searchText = sessionStorage.getItem('searchText');
									        var numberType = sessionStorage.getItem('intNum');
									        var pageNumber = currPage-1;
									        currPageGlobal = pageNumber;
																	console.log("pageNumber: " + pageNumber + " currPageGlobal: " + currPageGlobal);
											window.location.href = 'resultsPage.jsp?searchText='+searchText+'&numberType='+numberType+'&pageNumber='+pageNumber;
										}
										else {
											alert("You are already on the first page. Cannot go previous.")
										}
									}
								</script>

								<script>
									function paginateNext(currPage){
																console.log("got into paginateNext. currPageGlobal = " + currPageGlobal);
										if(currPage < <%=(int) Math.ceil((double)size / 5)%>){
											var url_string = window.location.href;
									        var url = new URL(url_string);
									        var searchText = sessionStorage.getItem('searchText');
									        var numberType = sessionStorage.getItem('intNum');
									        var pageNumber = currPage+1;
									        currPageGlobal = pageNumber;
																	console.log("pageNumber: " + pageNumber + " currPageGlobal: " + currPageGlobal);

											window.location.href = 'resultsPage.jsp?searchText='+searchText+'&numberType='+numberType+'&pageNumber='+pageNumber;
										}
										else {
											alert("You are already on the last page. Cannot go forward.")
										}
									}

								</script>





	
	<script type="text/javascript">

		function createCollage(searchTerm) {

			var html = "<div class='col-lg-8 text-center'>";
			html += "<div class='row'> <div class='col-lg-12'>";

			var xhttp = new XMLHttpRequest();
			xhttp.open("GET", "ImageAPIEndpoint?searchTerm="+searchTerm, false);
			xhttp.send();
			var images = xhttp.responseText;
			images = images.replace("[", "");
			images = images.replace("]", "");
			images = images.split(",");

			for(let i = 0; i < images.length / 2; i++){
				html += "<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg height=30 width=30 src = "+ images[i] + "></div>";
			}

			html += "</div></div>";
			html += "<div class='row'> <div class='col-lg-12'>";

			for(let i = images.length / 2; i < images.length; i++){
				html += "<div style = display:inline-block id = img" + (i + 1) + "><img id = insideImg height=30 width=30 src = "+ images[i] + "></div>";
			}

			html += "</div></div>";
			html += "</div>";
			var newNode = document.createElement('div');
			newNode.innerHTML = html;
			return newNode;
		} 
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "QuickAccess", false);
		xhttp.send();
		var obj = JSON.parse(xhttp.responseText);
		for(let i = 0; i < obj.length; i++){
			var node = createCollage(obj[i].searchTerm);
			document.getElementById(obj[i].searchTerm).prepend(node)
		}

	</script>

	<script>
		// Page redirection for buttons
		function groceryList() {
			window.location.href = 'groceryList.jsp';
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

		jQuery(document).ready(function($) {
			$(".clickable-row").click(function() {
				window.location = $(this).data("href");
			});
		});
	</script>
	<script>
		/* this is the function that generates 10 random angles to rotate teh pictures */
		$("#insideImg:nth-of-type(n+1)").css("max-width",
				window.innerWidth / 9 + "px");
		var number = Math.floor((Math.random() * 90) - 45);
		$("#img1:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img2:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img3:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img4:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img5:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img6:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img7:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img8:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img9:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
		$("#img10:nth-of-type(n+1)").css("transform",
				"rotate(" + Math.floor((Math.random() * 90) - 45) + "deg)");
	</script>
</body>
</html>
