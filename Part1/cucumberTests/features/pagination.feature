Feature: Pagination of results

    Background:
        Given I am on searchPage

    Scenario: S1 - First page exists

        When I enter "pizza" in the search box
        And I enter "100" in the integer box
        And I press Im Hungry
        Then I should see "10" search results for "pizza"
        Then I should see "First Page" in the page
    
    Scenario: S1 - Next Page element exists

        When I enter "pizza" in the search box
        And I press Im Hungry
        Then I should see "nextPage" in the page

    Scenario: S2 - Next Page element works

        When I enter "pizza" in the search box
        And I press Im Hungry
        And I press "nextBtn"
        Then I should see "Page 2" in the page

    Scenario: S3 - Previous Page element exists

        When I enter "pizza" in the search box
        And I press Im Hungry
        Then I should see "previousPage" in the page

    Scenario: S2 - Next Page element works

        When I enter "pizza" in the search box
        And I press Im Hungry
        And I press "nextBtn"
        And I press "previousBtn"
        Then I should see "Page 1" in the page
