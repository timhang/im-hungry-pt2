Feature: RQ8 Grocery list

    Background:
        Given I am on searchPage
    
    Scenario: S0 - Add ingredientes to RL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry

        When I click recipe "1"
        When I click the button with value "Add To Grocery List"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "2"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "3"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "4"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "5"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "6"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "7"
        When I click the "Add To Grocery List" button
        Then I should see the ingredients in the recipe list
    


        


        
