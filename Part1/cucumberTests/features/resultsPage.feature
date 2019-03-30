Feature: Results Page Testing

Background:
	
	Given I am on searchPage
	And I enter "Tacos" in the search box
	And I enter "7" in the integer box
	And I press Im Hungry

Scenario: R1 - Background color check

	Then my background color should be "rgba(245, 245, 245, 1)"

Scenario: R2 - Back to search page

	When I click the "Return to Search Page" button
	Then I should be taken back to "localhost:8080/ImHungry/searchPage.html"

Scenario: R3 - No list selected and click manage list

	When I click the "Manage List" button
	Then my url should still be "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: R4 - Manage Favorites List

	When I click the dropdown
	And I select "Favorites"
	And I click the "Manage List" button
	Then I should be taken to "localhost:8080/ImHungry/favorites.jsp"

Scenario: R4 - Manage Explore List

	When I click the dropdown
	And I select "Explore"
	And I click the "Manage List" button
	Then I should be taken to "localhost:8080/ImHungry/explore.jsp"

Scenario: R5 - Manage Do Not Show List

	When I click the dropdown
	And I select "Do Not Show"
	And I click the "Manage List" button
	Then I should be taken to "localhost:8080/ImHungry/doNotShow.jsp"

Scenario: R6 - Check page title

	Then my page title should be "Results Page"


