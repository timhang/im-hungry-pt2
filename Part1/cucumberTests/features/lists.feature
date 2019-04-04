Feature: List management testing

Background:
	
	Given I am on searchPage
	And I enter "Tacos" in the search box
	And I enter "7" in the integer box
	And I press Im Hungry

Scenario: L1 - Favorites initially empty

	And I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	Then list should be empty

Scenario: L2 - Explore initially empty

	And I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	Then list should be empty

Scenario: L3 - Explore initially empty

	And I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	Then list should be empty

Scenario: L4 - Added to Favorites

	And I click the link for "Revolutionario: North African Tacos"
	And I click the dropdown in the page
	And I select "Favorites" from the "listSelect"
	And I click the "Add to List" button
	And I click the "Back to Results" button
	And I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	Then page should contain "Revolutionario: North African Tacos"

Scenario: L4.1 - Go to page from list management

	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	And I click the link for "Revolutionario: North African Tacos"


Scenario: L5 - Remove from Favorites

	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	And I click the button with value "Edit"
	And I uncheck the checkbox
	And I click the button with value "Delete"
	Then list should be empty

Scenario: L6 - Added to Explore

	And I click the link for "Revolutionario: North African Tacos"
	And I click the dropdown in the page
	And I select "Explore" from the "listSelect"
	And I click the "Add to List" button
	And I click the "Back to Results" button
	And I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	Then page should contain "Revolutionario: North African Tacos"

Scenario: L7 - Remove from Explore

	When I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	And I click the button with value "Edit"
	And I uncheck the checkbox
	And I click the button with value "Delete"
	Then list should be empty

Scenario: L8 - Added to Do Not Show

	And I click the link for "Revolutionario: North African Tacos"
	And I click the dropdown in the page
	And I select "Do Not Show" from the "listSelect"
	And I click the "Add to List" button
	And I click the "Back to Results" button
	And I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	Then page should contain "Revolutionario: North African Tacos"

Scenario: L8.1 - Not on display

	Then page should not contain "Revolutionario: North African Tacos"

Scenario: L9 - Remove from Do Not Show

	When I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	And I click the button with value "Edit"
	And I uncheck the checkbox
	And I click the button with value "Delete"
	Then list should be empty

Scenario: L10 - Back to Search from Favorites

 	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	And I click the "Return to Search Page" button
	Then I should be taken back to "localhost:8080/ImHungry/searchPage.html"

Scenario: L11 - Back to Search from Explore

 	When I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	And I click the "Return to Search Page" button
	Then I should be taken back to "localhost:8080/ImHungry/searchPage.html"

Scenario: L12 - Back to Search from Do Not Show

 	When I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	And I click the "Return to Search Page" button
	Then I should be taken back to "localhost:8080/ImHungry/searchPage.html"

Scenario: L13 - Back to results from Favorites

 	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	And I click the "Return to Results Page" button
	Then I should be taken back to "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: L14 - Back to results from Explore

 	When I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	And I click the "Return to Results Page" button
	Then I should be taken back to "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: L15 - Back to results from Do Not Show

 	When I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	And I click the "Return to Results Page" button
	Then I should be taken back to "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: L16 - Only navigates if a list selected in dropdown

 	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	And I click the "Manage List" button
	Then my url should still be "localhost:8080/ImHungry/favorites.jsp"




