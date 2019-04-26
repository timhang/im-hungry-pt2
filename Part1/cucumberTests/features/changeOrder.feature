Feature: Change order of elements

    Background:
        Given I am on favorites page
    
    # Scenario: S0 - Adding to favorites
    
    #     Given I am on searchPage
    #     And I enter "Tacos" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry

    #     And I click the link for "Revolutionario: North African Tacos"
    #     And I click the dropdown in the page
    #     And I select "Favorites" from the "listSelect"
    #     And I click the "Add to List" button
    #     And I click the "Back to Results" button

    #     And I click the link for "Smoky pork & black bean tacos"
    #     And I click the dropdown in the page
    #     And I select "Favorites" from the "listSelect"
    #     And I click the "Add to List" button
    #     And I click the "Back to Results" button

    #     And I click the link for "Chichen Itza Restaurant"
    #     And I click the dropdown in the page
    #     And I select "Favorites" from the "listSelect"
    #     And I click the "Add to List" button
    #     And I click the "Back to Results" button

    #     And I click the dropdown
    #     And I select "Favorites"
    #     And I click the "Manage List" button
    #     Then page should contain "Revolutionario: North African Tacos"
    #     Then page should contain "Smoky pork & black bean tacos"
    #     Then page should contain "Chichen Itza Restaurant"
    
    Scenario: S1 - Change order elements 1, 2
        When I am on favorites page
        And move item "0" down "1" position
        Then item "0" should be in position "1"
        Then item "1" should be in position "0"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"


    
    Scenario: S2 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "0" down "1" position
        Then item "0" should be in position "1"
        Then item "1" should be in position "0"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"

    

    # Scenario: S3 - Change order elements 1, 2
        
        
    #     And move item "0" down "1" position
    #     Then item "0" should be in position "2"
    #     Then item "1" should be in position "0"
    #     Then item "2" should be in position "1"
    #     Then item "3" should be in position "3"

    
    # Scenario: S5 - Change order elements 1, 2
    #     When I am on favorites page
    #     And refresh
    #     And move item "1" down "1" position
    #     Then item "0" should be in position "0"
    #     Then item "1" should be in position "2"
    #     Then item "2" should be in position "1"
    #     Then item "3" should be in position "3"

    

    Scenario: S6 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "1" down "2" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "3"
        Then item "2" should be in position "1"
        Then item "3" should be in position "2"

    

    Scenario: S7 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "2" down "1" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "1"
        Then item "2" should be in position "3"
        Then item "3" should be in position "2"

    
