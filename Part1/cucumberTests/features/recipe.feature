Feature: Recipe page testing

Background:
	
	Given I am on searchPage
	And I enter "Sushi" in the search box
	And I enter "7" in the integer box
	And I press Im Hungry
	And I click the link for "Cheese Doodle Sushi"

Scenario: P1 - Return to search page
	
	When I click the "Back to Results" button
	Then I should be taken back to "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: P2 - Background color

	Then my background color should be "rgba(245, 245, 245, 1)"
