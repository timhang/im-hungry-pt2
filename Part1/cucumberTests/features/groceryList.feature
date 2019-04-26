Feature: RQ8 Grocery list

    Background:
        Given I am on searchPage
    
    Scenario: S1 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "1"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S2 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "2"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S3 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "3"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S4 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "4"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S5 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "5"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S6 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "1"
        And I click add to grocery list on ingredient "6"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S7 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "2"
        And I click add to grocery list on ingredient "1"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    Scenario: S8 - Adding a single ingredient to the GL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry


        When I click recipe "2"
        And I click add to grocery list on ingredient "2"
        Then I should see "Added item to grocery list." in the page

        When I press "AddToRL"
        Then I should see the ingredients in the recipe list


    # Scenario: S9 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "2"
    #     And I click add to grocery list on ingredient "3"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S10 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "2"
    #     And I click add to grocery list on ingredient "4"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S11 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "2"
    #     And I click add to grocery list on ingredient "5"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S12 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "2"
    #     And I click add to grocery list on ingredient "6"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S13 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "1"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S14 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "2"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S15 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "3"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S16 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "4"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S17 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "5"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S18 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "3"
    #     And I click add to grocery list on ingredient "6"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S19 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "1"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S20 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "2"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S21 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "3"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S22 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "4"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S23 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "5"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list


    # Scenario: S24 - Adding a single ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I click recipe "4"
    #     And I click add to grocery list on ingredient "6"
    #     Then I should see "Added item to grocery list." in the page

    #     When I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    # Scenario: S25 - Removing ingredient
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry

    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "0"
    #     Then I should not see the ingredient in the recipe list

    # Scenario: S26 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "15"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S27 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "14"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S28 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "13"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S29 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "12"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S30 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "11"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S31 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "10"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S32 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "9"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S33 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "8"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S34 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "7"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S35 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "6"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S36 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "5"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S37 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "4"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S38 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "3"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S39 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "2"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S40 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "1"
    #     Then I should not see the ingredient in the recipe list


    # Scenario: S41 - Remove ingredient to the GL
    #     And I enter "Pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry


    #     When I press "GroceryList"
    #     And I click add to grocery list on ingredient "0"
    #     Then I should not see the ingredient in the recipe list