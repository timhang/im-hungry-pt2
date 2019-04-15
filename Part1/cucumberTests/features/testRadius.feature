Feature: RQ8 Radius feature

    Background:
        Given I am on searchPage
    
    Scenario: S0 - check that radius exists
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry
        Then each restaurant must have "Address" element