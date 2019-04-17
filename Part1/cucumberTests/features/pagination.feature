Feature: Pagination of results

    Background:
        Given I am on searchPage

    Scenario: S1 - First page exists

        When I enter "pizza" in the search box
        And I enter "11" in the integer box
        And I press Im Hungry
        Then I should see "3" pages for "pizza"
    
    Scenario: S1 - Next Page element exists

        When I enter "pizza" in the search box
        And I enter "11" in the integer box
        And I press Im Hungry

    Scenario: S2 - Next Page element works

        When I enter "pizza" in the search box
        And I enter "11" in the integer box
        And I press Im Hungry
        And I press "pageNumber2"
        And I press "pageNumber1"
        And I press "pageNumber3"

    
