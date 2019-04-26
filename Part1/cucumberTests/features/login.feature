Feature: Log in

    Background:

        Given I am on login page

    Scenario: L1 - Empty fields
        And I press "submit" 
        Then I should see "Error: Login Failed." in the page

    Scenario: L2 - Empty email
        And I enter "ironman" in the "password" field
        And I press "submit" 
        Then I should see "Error: Login Failed." in the page
    
    Scenario: L3 - Empty password
        And I enter "ironman" in the "email" field
        And I press "submit"
        Then I should see "Error: Login Failed." in the page
    
    Scenario: L4 - Invalid email (not an email)
        And I enter "ironman" in the "email" field
        And I enter "ironman12321" in the "password" field
        And I press "submit"
        Then I should see "Error: Login Failed." in the page
    
    Scenario: L5 - Unregistered email
        And I enter "ironman@usc.edu" in the "email" field
        And I enter "ironmanasdf" in the "password" field
        And I press "submit"
        Then I should see "Error: Login Failed." in the page
    
    Scenario: L6 - Wrong password
        And I enter "Barack" in the "email" field
        And I enter "password" in the "password" field
        And I press "submit"
        Then I should be in "searchPage.html"
    
    Scenario: L7 - Successful login
        And I enter "Obama" in the "email" field
        And I enter "pass1234" in the "password" field
        And I press "submit"
        Then I should be in "searchPage.html"
    

    