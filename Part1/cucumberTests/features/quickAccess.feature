Feature: Quick access testing

Background:

	Given I am on searchPage

Scenario: S0a - Search for 1 with blank text

	When I enter "Tomato" in the search box
	When I enter "17" in the integer box
	And I press Im Hungry
	Then I should see search results for "Tomato"


Scenario: S0b - Quickaccess
    When I select "Tomato (17)" from Quickaccess
    Then I should see search results for "Tomato"


    Scenario: S1a - Search for food

        When I enter "aroma" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "aroma"

    Scenario: S1b - Ensure item appears on Quickaccess

        When I select "aroma (17)" from Quickaccess
        Then I should see search results for "aroma"
    


    
