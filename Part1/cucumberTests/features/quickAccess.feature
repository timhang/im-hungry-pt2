Feature: Quick access testing

Background:

	Given I am on searchPage
    

    ########## REPRESENTATIVE CASES ###########


    Scenario: QA# A new search from the Search Page should not appear on the QA list until we make another search (in other words, when we leave the results page)
        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button
        And I enter "Pizza" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "Pizza (5)"


    Scenario: Clicking on an item from the QA list should put that item at the top of the QA list

        When I enter "Avocado" in the search box
        When I enter "3" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        When I enter "apple" in the search box
        When I enter "2" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button

        When I enter "soup" in the search box
        When I enter "3" in the integer box
        And I press Im Hungry

        Then I should see "3" search results for "soup"
        Then Quickaccess index for "apple (2)" should be "0"
        Then Quickaccess index for "Avocado (3)" should be "1"
        
        And I click Quickaccess index "0"
        Then I should see "2" search results for "apple"
        Then Quickaccess index for "soup (3)" should be "0"
        Then Quickaccess index for "Avocado (3)" should be "1"

        And I click Quickaccess index "0"
        Then I should see "3" search results for "soup"
        Then Quickaccess index for "apple (2)" should be "0"
        Then Quickaccess index for "Avocado (3)" should be "1"

        And I click Quickaccess index "1"
        Then I should see "3" search results for "Avocado"
        Then Quickaccess index for "soup (3)" should be "0"
        Then Quickaccess index for "apple (2)" should be "1"
        

        And I click Quickaccess index "1"
        Then I should see "2" search results for "apple"
        Then Quickaccess index for "Avocado (3)" should be "0"
        Then Quickaccess index for "soup (3)" should be "1"

        And I click Quickaccess index "1"
        Then I should see "3" search results for "soup"
        Then Quickaccess index for "apple (2)" should be "0"
        Then Quickaccess index for "Avocado (3)" should be "1"

    

    Scenario: Pizza (5 results) and Pizza (1 result) should both appear as different searches in QA list

        When I enter "Pizza" in the search box
        When I enter "1" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button
        
        When I enter "Pizza" in the search box
        When I enter "2" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button
        
        When I enter "Pizza" in the search box
        When I enter "3" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button

        When I enter "Pizza" in the search box
        When I enter "4" in the integer box
        And I press Im Hungry

        Then I should see Quickaccess item "Pizza (1)"
        Then I should see Quickaccess item "Pizza (2)"
        Then I should see Quickaccess item "Pizza (3)"


    Scenario: No duplicate searches in the QA list (i.e. Pizza (5) and Pizza (5) )

        When I enter "Pizza" in the search box
        When I enter "1" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button

        When I enter "Pizza" in the search box
        When I enter "1" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button

        When I enter "Pizza" in the search box
        When I enter "1" in the integer box
        And I press Im Hungry

        And I click the "Return to Search Page" button

        When I enter "Pizza" in the search box
        When I enter "1" in the integer box
        And I press Im Hungry

        Then I should see Quickaccess item "Pizza (1)" only once



        
    ################# SERIALIZED TESTING ################




    Scenario: QA0 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "aroma" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "aroma (5)"

    Scenario: QA1 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "bagel" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "bagel (5)"

    Scenario: QA2 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "batter" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "batter (5)"

    Scenario: QA3 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "beans" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "beans (5)"

    Scenario: QA4 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "beer" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "beer (5)"

    Scenario: QA5 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "biscuit" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "biscuit (5)"

    Scenario: QA6 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "bread" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "bread (5)"

    Scenario: QA7 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "broth" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "broth (5)"

    Scenario: QA8 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "burger" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "burger (5)"

    Scenario: QA9 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "butter" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "butter (5)"

    Scenario: QA10 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cake" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cake (5)"

    Scenario: QA11 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "candy" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "candy (5)"

    Scenario: QA12 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "caramel" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "caramel (5)"

    Scenario: QA13 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "caviar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "caviar (5)"

    Scenario: QA14 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cheese" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cheese (5)"

    Scenario: QA15 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "chili" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "chili (5)"

    Scenario: QA16 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "chocolate" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "chocolate (5)"

    Scenario: QA17 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cider" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cider (5)"

    Scenario: QA18 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cobbler" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cobbler (5)"

    Scenario: QA19 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cocoa" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cocoa (5)"

    Scenario: QA20 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "coffee" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "coffee (5)"

    Scenario: QA21 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cookie" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cookie (5)"

    Scenario: QA22 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cream" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cream (5)"

    Scenario: QA23 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "croissant" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "croissant (5)"

    Scenario: QA24 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "crumble" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "crumble (5)"

    Scenario: QA25 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cuisine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "cuisine (5)"

    Scenario: QA26 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "curd" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "curd (5)"

    Scenario: QA27 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "dessert" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "dessert (5)"

    Scenario: QA28 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "dish" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "dish (5)"

    Scenario: QA29 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "drink" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "drink (5)"

    Scenario: QA30 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "eggs" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "eggs (5)"

    Scenario: QA31 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "entree" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "entree (5)"

    Scenario: QA32 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "filet" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "filet (5)"

    Scenario: QA33 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "fish" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "fish (5)"

    Scenario: QA34 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "flour" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "flour (5)"

    Scenario: QA35 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "foie gras" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "foie gras (5)"

    Scenario: QA36 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "food" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "food (5)"

    Scenario: QA37 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "glaze" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "glaze (5)"

    Scenario: QA38 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "grill" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "grill (5)"

    Scenario: QA39 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "hamburger" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "hamburger (5)"

    Scenario: QA40 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "ice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "ice (5)"

    Scenario: QA41 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "juice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "juice (5)"

    Scenario: QA42 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "ketchup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "ketchup (5)"

    Scenario: QA43 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "kitchen" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "kitchen (5)"

    Scenario: QA44 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "lard" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "lard (5)"

    Scenario: QA45 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "liquor" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "liquor (5)"

    Scenario: QA46 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "margarine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "margarine (5)"

    Scenario: QA47 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "marinade" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "marinade (5)"

    Scenario: QA48 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mayo" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "mayo (5)"

    Scenario: QA49 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mayonnaise" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "mayonnaise (5)"

    Scenario: QA50 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "meat" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "meat (5)"

    Scenario: QA51 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "milk" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "milk (5)"

    Scenario: QA52 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mousse" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "mousse (5)"

    Scenario: QA53 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "muffin" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "muffin (5)"

    Scenario: QA54 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mushroom" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "mushroom (5)"

    Scenario: QA55 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "noodle" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "noodle (5)"

    Scenario: QA56 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "nut" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "nut (5)"

    Scenario: QA57 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "oil" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "oil (5)"

    Scenario: QA58 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "olive" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "olive (5)"

    Scenario: QA59 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "omelette" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "omelette (5)"

    Scenario: QA60 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pan" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pan (5)"

    Scenario: QA61 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pasta" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pasta (5)"

    Scenario: QA62 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "paste" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "paste (5)"

    Scenario: QA63 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pastry" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pastry (5)"

    Scenario: QA64 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pie" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pie (5)"

    Scenario: QA65 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pizza" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pizza (5)"

    Scenario: QA66 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "plate" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "plate (5)"

    Scenario: QA67 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pot" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pot (5)"

    Scenario: QA68 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "poutine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "poutine (5)"

    Scenario: QA69 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pudding" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "pudding (5)"

    Scenario: QA70 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "raclette" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "raclette (5)"

    Scenario: QA71 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "recipe" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "recipe (5)"

    Scenario: QA72 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "rice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "rice (5)"

    Scenario: QA73 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "salad" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "salad (5)"

    Scenario: QA74 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "salsa" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "salsa (5)"

    Scenario: QA75 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "sandwich" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "sandwich (5)"

    Scenario: QA76 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "sauce" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "sauce (5)"

    Scenario: QA77 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "seasoning" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "seasoning (5)"

    Scenario: QA78 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "skillet" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "skillet (5)"

    Scenario: QA79 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soda" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "soda (5)"

    Scenario: QA80 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "soup (5)"

    Scenario: QA81 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soy" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "soy (5)"

    Scenario: QA82 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "spice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "spice (5)"

    Scenario: QA83 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "steak" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "steak (5)"

    Scenario: QA84 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "stew" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "stew (5)"

    Scenario: QA85 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "syrup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "syrup (5)"

    Scenario: QA86 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "tartar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "tartar (5)"

    Scenario: QA87 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "taste" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "taste (5)"

    Scenario: QA88 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "tea" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "tea (5)"

    Scenario: QA89 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "toast" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "toast (5)"

    Scenario: QA90 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "vinegar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "vinegar (5)"

    Scenario: QA91 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "waffle" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "waffle (5)"

    Scenario: QA92 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "water" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "water (5)"

    Scenario: QA93 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wheat" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "wheat (5)"

    Scenario: QA94 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "wine (5)"

    Scenario: QA95 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wok" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "wok (5)"

    Scenario: QA96 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "yeast" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "yeast (5)"

    Scenario: QA97 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "yogurt" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato (16)" should be "0"
        Then Quickaccess should not have "yogurt (5)"
