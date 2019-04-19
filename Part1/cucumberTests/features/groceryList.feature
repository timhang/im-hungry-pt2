Feature: RQ8 Grocery list

    Background:
        Given I am on searchPage
    
    Scenario: S0 - Add ingredientes to RL
        And I enter "Pizza" in the search box
        And I enter "7" in the integer box
        And I press Im Hungry

        When I click recipe "1"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "2"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "3"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "4"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "5"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "6"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list

        When I press "backBtn"
        Then I should see search results for "Pizza"

        When I click recipe "7"
        And I press "AddToRL"
        Then I should see the ingredients in the recipe list
    

    # Scenario: S1 - Add ingredientes to RL
    #     And I enter "aroma" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "aroma"
        

    # Scenario: S2 - Add ingredientes to RL
    #     And I enter "bagel" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bagel"
        

    # Scenario: S3 - Add ingredientes to RL
    #     And I enter "batter" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "batter"
        

    # Scenario: S4 - Add ingredientes to RL
    #     And I enter "beans" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beans"
        

    # Scenario: S5 - Add ingredientes to RL
    #     And I enter "beer" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "beer"
        

    # Scenario: S6 - Add ingredientes to RL
    #     And I enter "biscuit" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "biscuit"
        

    # Scenario: S7 - Add ingredientes to RL
    #     And I enter "bread" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "bread"
        

    # Scenario: S8 - Add ingredientes to RL
    #     And I enter "broth" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "broth"
        

    # Scenario: S9 - Add ingredientes to RL
    #     And I enter "burger" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "burger"
        

    # Scenario: S10 - Add ingredientes to RL
    #     And I enter "butter" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "butter"
        

    # Scenario: S11 - Add ingredientes to RL
    #     And I enter "cake" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cake"
        

    # Scenario: S12 - Add ingredientes to RL
    #     And I enter "candy" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "candy"
        

    # Scenario: S13 - Add ingredientes to RL
    #     And I enter "caramel" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caramel"
        

    # Scenario: S14 - Add ingredientes to RL
    #     And I enter "caviar" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "caviar"
        

    # Scenario: S15 - Add ingredientes to RL
    #     And I enter "cheese" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cheese"
        

    # Scenario: S16 - Add ingredientes to RL
    #     And I enter "chili" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chili"
        

    # Scenario: S17 - Add ingredientes to RL
    #     And I enter "chocolate" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "chocolate"
        

    # Scenario: S18 - Add ingredientes to RL
    #     And I enter "cider" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cider"
        

    # Scenario: S19 - Add ingredientes to RL
    #     And I enter "cobbler" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cobbler"
        

    # Scenario: S20 - Add ingredientes to RL
    #     And I enter "cocoa" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cocoa"
        

    # Scenario: S21 - Add ingredientes to RL
    #     And I enter "coffee" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "coffee"
        

    # Scenario: S22 - Add ingredientes to RL
    #     And I enter "cookie" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cookie"
        

    # Scenario: S23 - Add ingredientes to RL
    #     And I enter "cream" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cream"
        

    # Scenario: S24 - Add ingredientes to RL
    #     And I enter "croissant" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "croissant"
        

    # Scenario: S25 - Add ingredientes to RL
    #     And I enter "crumble" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "crumble"
        

    # Scenario: S26 - Add ingredientes to RL
    #     And I enter "cuisine" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "cuisine"
        

    # Scenario: S27 - Add ingredientes to RL
    #     And I enter "curd" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "curd"
        

    # Scenario: S28 - Add ingredientes to RL
    #     And I enter "dessert" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dessert"
        

    # Scenario: S29 - Add ingredientes to RL
    #     And I enter "dish" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "dish"
        

    # Scenario: S30 - Add ingredientes to RL
    #     And I enter "drink" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "drink"
        

    # Scenario: S31 - Add ingredientes to RL
    #     And I enter "eggs" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "eggs"
        

    # Scenario: S32 - Add ingredientes to RL
    #     And I enter "entree" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "entree"
        

    # Scenario: S33 - Add ingredientes to RL
    #     And I enter "filet" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "filet"
        

    # Scenario: S34 - Add ingredientes to RL
    #     And I enter "fish" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "fish"
        

    # Scenario: S35 - Add ingredientes to RL
    #     And I enter "flour" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "flour"
        

    # Scenario: S36 - Add ingredientes to RL
    #     And I enter "foie gras" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "foie gras"
        

    # Scenario: S37 - Add ingredientes to RL
    #     And I enter "food" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "food"
        

    # Scenario: S38 - Add ingredientes to RL
    #     And I enter "glaze" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "glaze"
        

    # Scenario: S39 - Add ingredientes to RL
    #     And I enter "grill" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "grill"
        

    # Scenario: S40 - Add ingredientes to RL
    #     And I enter "hamburger" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "hamburger"
        

    # Scenario: S41 - Add ingredientes to RL
    #     And I enter "ice" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ice"
        

    # Scenario: S42 - Add ingredientes to RL
    #     And I enter "juice" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "juice"
        

    # Scenario: S43 - Add ingredientes to RL
    #     And I enter "ketchup" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "ketchup"
        

    # Scenario: S44 - Add ingredientes to RL
    #     And I enter "kitchen" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "kitchen"
        

    # Scenario: S45 - Add ingredientes to RL
    #     And I enter "lard" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "lard"
        

    # Scenario: S46 - Add ingredientes to RL
    #     And I enter "liquor" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "liquor"
        

    # Scenario: S47 - Add ingredientes to RL
    #     And I enter "margarine" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "margarine"
        

    # Scenario: S48 - Add ingredientes to RL
    #     And I enter "marinade" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "marinade"
        

    # Scenario: S49 - Add ingredientes to RL
    #     And I enter "mayo" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayo"
        

    # Scenario: S50 - Add ingredientes to RL
    #     And I enter "mayonnaise" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mayonnaise"
        

    # Scenario: S51 - Add ingredientes to RL
    #     And I enter "meat" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "meat"
        

    # Scenario: S52 - Add ingredientes to RL
    #     And I enter "milk" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "milk"
        

    # Scenario: S53 - Add ingredientes to RL
    #     And I enter "mousse" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mousse"
        

    # Scenario: S54 - Add ingredientes to RL
    #     And I enter "muffin" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "muffin"
        

    # Scenario: S55 - Add ingredientes to RL
    #     And I enter "mushroom" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "mushroom"
        

    # Scenario: S56 - Add ingredientes to RL
    #     And I enter "noodle" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "noodle"
        

    # Scenario: S57 - Add ingredientes to RL
    #     And I enter "nut" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "nut"
        

    # Scenario: S58 - Add ingredientes to RL
    #     And I enter "oil" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "oil"
        

    # Scenario: S59 - Add ingredientes to RL
    #     And I enter "olive" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "olive"
        

    # Scenario: S60 - Add ingredientes to RL
    #     And I enter "omelette" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "omelette"
        

    # Scenario: S61 - Add ingredientes to RL
    #     And I enter "pan" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pan"
        

    # Scenario: S62 - Add ingredientes to RL
    #     And I enter "pasta" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pasta"
        

    # Scenario: S63 - Add ingredientes to RL
    #     And I enter "paste" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "paste"
        

    # Scenario: S64 - Add ingredientes to RL
    #     And I enter "pastry" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pastry"
        

    # Scenario: S65 - Add ingredientes to RL
    #     And I enter "pie" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pie"
        

    # Scenario: S66 - Add ingredientes to RL
    #     And I enter "pizza" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pizza"
        

    # Scenario: S67 - Add ingredientes to RL
    #     And I enter "plate" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "plate"
        

    # Scenario: S68 - Add ingredientes to RL
    #     And I enter "pot" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pot"
        

    # Scenario: S69 - Add ingredientes to RL
    #     And I enter "poutine" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "poutine"
        

    # Scenario: S70 - Add ingredientes to RL
    #     And I enter "pudding" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "pudding"
        

    # Scenario: S71 - Add ingredientes to RL
    #     And I enter "raclette" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "raclette"
        

    # Scenario: S72 - Add ingredientes to RL
    #     And I enter "recipe" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "recipe"
        

    # Scenario: S73 - Add ingredientes to RL
    #     And I enter "rice" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "rice"
        

    # Scenario: S74 - Add ingredientes to RL
    #     And I enter "salad" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salad"
        

    # Scenario: S75 - Add ingredientes to RL
    #     And I enter "salsa" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "salsa"
        

    # Scenario: S76 - Add ingredientes to RL
    #     And I enter "sandwich" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sandwich"
        

    # Scenario: S77 - Add ingredientes to RL
    #     And I enter "sauce" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "sauce"
        

    # Scenario: S78 - Add ingredientes to RL
    #     And I enter "seasoning" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "seasoning"
        

    # Scenario: S79 - Add ingredientes to RL
    #     And I enter "skillet" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "skillet"
        

    # Scenario: S80 - Add ingredientes to RL
    #     And I enter "soda" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soda"
        

    # Scenario: S81 - Add ingredientes to RL
    #     And I enter "soup" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soup"
        

    # Scenario: S82 - Add ingredientes to RL
    #     And I enter "soy" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "soy"
        

    # Scenario: S83 - Add ingredientes to RL
    #     And I enter "spice" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "spice"
        

    # Scenario: S84 - Add ingredientes to RL
    #     And I enter "steak" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "steak"
        

    # Scenario: S85 - Add ingredientes to RL
    #     And I enter "stew" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "stew"
        

    # Scenario: S86 - Add ingredientes to RL
    #     And I enter "syrup" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "syrup"
        

    # Scenario: S87 - Add ingredientes to RL
    #     And I enter "tartar" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tartar"
        

    # Scenario: S88 - Add ingredientes to RL
    #     And I enter "taste" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "taste"
        

    # Scenario: S89 - Add ingredientes to RL
    #     And I enter "tea" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "tea"
        

    # Scenario: S90 - Add ingredientes to RL
    #     And I enter "toast" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "toast"
        

    # Scenario: S91 - Add ingredientes to RL
    #     And I enter "vinegar" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "vinegar"
        

    # Scenario: S92 - Add ingredientes to RL
    #     And I enter "waffle" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "waffle"
        

    # Scenario: S93 - Add ingredientes to RL
    #     And I enter "water" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "water"
        

    # Scenario: S94 - Add ingredientes to RL
    #     And I enter "wheat" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wheat"
        

    # Scenario: S95 - Add ingredientes to RL
    #     And I enter "wine" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wine"
        

    # Scenario: S96 - Add ingredientes to RL
    #     And I enter "wok" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "wok"
        

    # Scenario: S97 - Add ingredientes to RL
    #     And I enter "yeast" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yeast"
        

    # Scenario: S98 - Add ingredientes to RL
    #     And I enter "yogurt" in the search box
    #     And I enter "7" in the integer box
    #     And I press Im Hungry
        
    #     When I click recipe "1"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "2"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "3"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "4"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "5"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "6"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
    #     When I click recipe "7"
    #     And I press "AddToRL"
    #     Then I should see the ingredients in the recipe list

    #     When I press "backBtn"
    #     Then I should see search results for "yogurt"
        
