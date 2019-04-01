Feature: Searchpage testing

Background:

	Given I am on searchPage

Scenario: S1 - Background color check

	Then my background color should be "rgba(255, 255, 255, 1)"

Scenario: S2 - Search for 7 Burgers

	When I enter "Burger" in the search box
	And I enter "7" in the integer box
	And I press Im Hungry
	Then I should see "7" search results for "Burger"

Scenario: S3 - Search for Pizzas, no text input

	When I enter "Pizza" in the search box
	And I press Im Hungry
	Then I should see "5" search results for "Pizza"

Scenario: S4 - Search for 0 with blank text

	When I enter "0" in the integer box
	And I press Im Hungry
	Then my url should still be "localhost:8080/ImHungry/searchPage.html"

Scenario: S5 - Default page

	When I navigate to "localhost:8080/ImHungry"
	Then my page title should be "Search Page"








