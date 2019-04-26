Feature: Radius Tests

    Background:
        Given I am on searchPage

	Scenario: S0 - 1 radius
        When I enter "Pizza" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S2 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S3 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S4 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S5 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S6 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        


        
