Feature: RQ8 Grocery list

    Background:
        Given I am on searchPage
    
    Scenario: S1 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "1"
        # Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S2 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "2"
        # Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S3 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "3"
        # Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S4 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "4"
        # Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S5 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "5"
        # Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list