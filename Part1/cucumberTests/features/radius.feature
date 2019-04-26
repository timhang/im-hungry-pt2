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
        
    Scenario: S7 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S8 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S9 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S10 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        

        
