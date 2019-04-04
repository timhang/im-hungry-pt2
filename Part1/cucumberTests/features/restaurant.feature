Feature: Restaurant page

Background:
	
	Given I am on searchPage
	And I enter "Tacos" in the search box
	And I enter "7" in the integer box
	And I press Im Hungry

Scenario: T1 - Return to results page

	And I click the link for "Revolutionario: North African Tacos"	
	When I click the "Back to Results" button
	Then I should be taken back to "localhost:8080/ImHungry/resultsPage.jsp"

Scenario: T2 - Background color

	And I click the link for "Revolutionario: North African Tacos"
	Then my background color should be "rgba(0, 0, 0, 0)"

