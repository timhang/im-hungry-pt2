Feature: Searchpage testing

Background:

	Given I am on searchPage

# Scenario: S1 - Search for 1 with blank text

	When I enter "Tomato" in the search box
	When I enter "18" in the integer box
	And I press Im Hungry
	Then I should see "18" search results for "Tomato"


Scenario: S2 - Quickaccess

	When I click the "Return to Search Page" button
	Then I should be taken back to "localhost:8080/ImHungry/searchPage.html"
	Then the Quickaccess should display "------ Quick Access ------"
    When I select "Tomato (18)" from Quickaccess
    Then I should see "18" search results for "Tomato"






