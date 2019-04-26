Feature: Quick access testing

Background:

	Given I am on searchPage
    

    ########## REPRESENTATIVE CASES ###########


    Scenario: QA# A new search from the Search Page should not appear on the QA list until we make another searchin other words, when we leave the results page
        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button
        And I enter "Pizza" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "Pizza5"


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
        Then Quickaccess index for "apple2" should be "0"
        Then Quickaccess index for "Avocado3" should be "1"
        
        And I click Quickaccess index "0"
        Then I should see "2" search results for "apple"
        Then Quickaccess index for "soup3" should be "0"
        Then Quickaccess index for "Avocado3" should be "1"

        And I click Quickaccess index "0"
        Then I should see "3" search results for "soup"
        Then Quickaccess index for "apple2" should be "0"
        Then Quickaccess index for "Avocado3" should be "1"

        And I click Quickaccess index "1"
        Then I should see "3" search results for "Avocado"
        Then Quickaccess index for "soup3" should be "0"
        Then Quickaccess index for "apple2" should be "1"
        

        And I click Quickaccess index "1"
        Then I should see "2" search results for "apple"
        Then Quickaccess index for "Avocado3" should be "0"
        Then Quickaccess index for "soup3" should be "1"

        And I click Quickaccess index "1"
        Then I should see "3" search results for "soup"
        Then Quickaccess index for "apple2" should be "0"
        Then Quickaccess index for "Avocado3" should be "1"

    

    Scenario: Pizza5 results and Pizza1 result should both appear as different searches in QA list

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

        Then I should see Quickaccess item "Pizza1"
        Then I should see Quickaccess item "Pizza2"
        Then I should see Quickaccess item "Pizza3"


    Scenario: No duplicate searches in the QA listi.e. Pizza5 and Pizza5 

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

        Then I should see Quickaccess item "Pizza1" only once



        
    ################# SERIALIZED TESTING ################




    Scenario: QA0 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "aroma" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "aroma5"

    Scenario: QA1 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "bagel" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "bagel5"

    Scenario: QA2 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "batter" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "batter5"

    Scenario: QA3 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "beans" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "beans5"

    Scenario: QA4 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "beer" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "beer5"

    Scenario: QA5 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "biscuit" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "biscuit5"

    Scenario: QA6 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "bread" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "bread5"

    Scenario: QA7 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "broth" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "broth5"

    Scenario: QA8 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "burger" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "burger5"

    Scenario: QA9 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "butter" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "butter5"

    Scenario: QA10 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cake" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cake5"

    Scenario: QA11 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "candy" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "candy5"

    Scenario: QA12 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "caramel" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "caramel5"

    Scenario: QA13 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "caviar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "caviar5"

    Scenario: QA14 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cheese" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cheese5"

    Scenario: QA15 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "chili" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "chili5"

    Scenario: QA16 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "chocolate" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "chocolate5"

    Scenario: QA17 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cider" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cider5"

    Scenario: QA18 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cobbler" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cobbler5"

    Scenario: QA19 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cocoa" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cocoa5"

    Scenario: QA20 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "coffee" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "coffee5"

    Scenario: QA21 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cookie" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cookie5"

    Scenario: QA22 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cream" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cream5"

    Scenario: QA23 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "croissant" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "croissant5"

    Scenario: QA24 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "crumble" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "crumble5"

    Scenario: QA25 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "cuisine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "cuisine5"

    Scenario: QA26 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "curd" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "curd5"

    Scenario: QA27 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "dessert" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "dessert5"

    Scenario: QA28 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "dish" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "dish5"

    Scenario: QA29 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "drink" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "drink5"

    Scenario: QA30 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "eggs" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "eggs5"

    Scenario: QA31 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "entree" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "entree5"

    Scenario: QA32 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "filet" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "filet5"

    Scenario: QA33 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "fish" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "fish5"

    Scenario: QA34 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "flour" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "flour5"

    Scenario: QA35 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "foie gras" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "foie gras5"

    Scenario: QA36 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "food" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "food5"

    Scenario: QA37 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "glaze" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "glaze5"

    Scenario: QA38 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "grill" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "grill5"

    Scenario: QA39 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "hamburger" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "hamburger5"

    Scenario: QA40 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "ice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "ice5"

    Scenario: QA41 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "juice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "juice5"

    Scenario: QA42 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "ketchup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "ketchup5"

    Scenario: QA43 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "kitchen" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "kitchen5"

    Scenario: QA44 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "lard" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "lard5"

    Scenario: QA45 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "liquor" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "liquor5"

    Scenario: QA46 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "margarine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "margarine5"

    Scenario: QA47 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "marinade" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "marinade5"

    Scenario: QA48 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mayo" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "mayo5"

    Scenario: QA49 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mayonnaise" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "mayonnaise5"

    Scenario: QA50 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "meat" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "meat5"

    Scenario: QA51 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "milk" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "milk5"

    Scenario: QA52 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mousse" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "mousse5"

    Scenario: QA53 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "muffin" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "muffin5"

    Scenario: QA54 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "mushroom" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "mushroom5"

    Scenario: QA55 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "noodle" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "noodle5"

    Scenario: QA56 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "nut" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "nut5"

    Scenario: QA57 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "oil" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "oil5"

    Scenario: QA58 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "olive" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "olive5"

    Scenario: QA59 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "omelette" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "omelette5"

    Scenario: QA60 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pan" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pan5"

    Scenario: QA61 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pasta" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pasta5"

    Scenario: QA62 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "paste" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "paste5"

    Scenario: QA63 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pastry" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pastry5"

    Scenario: QA64 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pie" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pie5"

    Scenario: QA65 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pizza" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pizza5"

    Scenario: QA66 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "plate" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "plate5"

    Scenario: QA67 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pot" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pot5"

    Scenario: QA68 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "poutine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "poutine5"

    Scenario: QA69 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "pudding" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "pudding5"

    Scenario: QA70 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "raclette" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "raclette5"

    Scenario: QA71 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "recipe" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "recipe5"

    Scenario: QA72 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "rice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "rice5"

    Scenario: QA73 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "salad" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "salad5"

    Scenario: QA74 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "salsa" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "salsa5"

    Scenario: QA75 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "sandwich" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "sandwich5"

    Scenario: QA76 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "sauce" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "sauce5"

    Scenario: QA77 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "seasoning" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "seasoning5"

    Scenario: QA78 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "skillet" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "skillet5"

    Scenario: QA79 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soda" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "soda5"

    Scenario: QA80 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "soup5"

    Scenario: QA81 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "soy" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "soy5"

    Scenario: QA82 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "spice" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "spice5"

    Scenario: QA83 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "steak" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "steak5"

    Scenario: QA84 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "stew" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "stew5"

    Scenario: QA85 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "syrup" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "syrup5"

    Scenario: QA86 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "tartar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "tartar5"

    Scenario: QA87 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "taste" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "taste5"

    Scenario: QA88 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "tea" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "tea5"

    Scenario: QA89 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "toast" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "toast5"

    Scenario: QA90 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "vinegar" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "vinegar5"

    Scenario: QA91 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "waffle" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "waffle5"

    Scenario: QA92 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "water" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "water5"

    Scenario: QA93 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wheat" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "wheat5"

    Scenario: QA94 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wine" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "wine5"

    Scenario: QA95 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "wok" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "wok5"

    Scenario: QA96 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "yeast" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "yeast5"

    Scenario: QA97 Quick Access queue properly updating

        When I enter "Tomato" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        
        And I click the "Return to Search Page" button

        And I enter "yogurt" in the search box
        When I enter "5" in the integer box
        And I press Im Hungry

        Then Quickaccess index for "Tomato16" should be "0"
        Then Quickaccess should not have "yogurt5"
