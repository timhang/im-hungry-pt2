Feature: Change order of elements

    Background:
        Given I am on favorites page
    


    

    Scenario: S3 - Change order elements 1, 2
        
        
        And move item "0" down "2" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "1"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"

    
    Scenario: S5 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "1" down "1" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "1"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"

    

    Scenario: S6 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "1" down "2" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "1"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"

    

    Scenario: S7 - Change order elements 1, 2
        When I am on favorites page
        And refresh
        And move item "2" down "1" position
        Then item "0" should be in position "0"
        Then item "1" should be in position "1"
        Then item "2" should be in position "2"
        Then item "3" should be in position "3"

    
