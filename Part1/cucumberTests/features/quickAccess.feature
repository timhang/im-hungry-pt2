Feature: Quick access testing

Background:

	Given I am on searchPage

Scenario: S0a - Search for 1 with blank text

	When I enter "Tomato" in the search box
	When I enter "17" in the integer box
	And I press Im Hungry
	Then I should see search results for "Tomato"


Scenario: S0b - Quickaccess
    When I select "Tomato (17)" from Quickaccess
    Then I should see search results for "Tomato"


    Scenario: S1a - Search for food

        When I enter "aroma" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "aroma"

    Scenario: S1b - Ensure item appears on Quickaccess

        When I select "aroma (17)" from Quickaccess
        Then I should see search results for "aroma"
    

    Scenario: S2a - Search for food

        When I enter "bagel" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "bagel"

    Scenario: S2b - Ensure item appears on Quickaccess

        When I select "bagel (17)" from Quickaccess
        Then I should see search results for "bagel"
    

    Scenario: S3a - Search for food

        When I enter "batter" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "batter"

    Scenario: S3b - Ensure item appears on Quickaccess

        When I select "batter (17)" from Quickaccess
        Then I should see search results for "batter"
    

    Scenario: S4a - Search for food

        When I enter "beans" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "beans"

    Scenario: S4b - Ensure item appears on Quickaccess

        When I select "beans (17)" from Quickaccess
        Then I should see search results for "beans"
    

    Scenario: S5a - Search for food

        When I enter "beer" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "beer"

    Scenario: S5b - Ensure item appears on Quickaccess

        When I select "beer (17)" from Quickaccess
        Then I should see search results for "beer"
    

    Scenario: S6a - Search for food

        When I enter "biscuit" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "biscuit"

    Scenario: S6b - Ensure item appears on Quickaccess

        When I select "biscuit (17)" from Quickaccess
        Then I should see search results for "biscuit"
    

    Scenario: S7a - Search for food

        When I enter "bread" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "bread"

    Scenario: S7b - Ensure item appears on Quickaccess

        When I select "bread (17)" from Quickaccess
        Then I should see search results for "bread"
    

    Scenario: S8a - Search for food

        When I enter "broth" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "broth"

    Scenario: S8b - Ensure item appears on Quickaccess

        When I select "broth (17)" from Quickaccess
        Then I should see search results for "broth"
    

    Scenario: S9a - Search for food

        When I enter "burger" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "burger"

    Scenario: S9b - Ensure item appears on Quickaccess

        When I select "burger (17)" from Quickaccess
        Then I should see search results for "burger"
    

    Scenario: S10a - Search for food

        When I enter "butter" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "butter"

    Scenario: S10b - Ensure item appears on Quickaccess

        When I select "butter (17)" from Quickaccess
        Then I should see search results for "butter"
    

    Scenario: S11a - Search for food

        When I enter "cake" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cake"

    Scenario: S11b - Ensure item appears on Quickaccess

        When I select "cake (17)" from Quickaccess
        Then I should see search results for "cake"
    

    Scenario: S12a - Search for food

        When I enter "candy" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "candy"

    Scenario: S12b - Ensure item appears on Quickaccess

        When I select "candy (17)" from Quickaccess
        Then I should see search results for "candy"
    

    Scenario: S13a - Search for food

        When I enter "caramel" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "caramel"

    Scenario: S13b - Ensure item appears on Quickaccess

        When I select "caramel (17)" from Quickaccess
        Then I should see search results for "caramel"
    

    Scenario: S14a - Search for food

        When I enter "caviar" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "caviar"

    Scenario: S14b - Ensure item appears on Quickaccess

        When I select "caviar (17)" from Quickaccess
        Then I should see search results for "caviar"
    

    Scenario: S15a - Search for food

        When I enter "cheese" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cheese"

    Scenario: S15b - Ensure item appears on Quickaccess

        When I select "cheese (17)" from Quickaccess
        Then I should see search results for "cheese"
    

    Scenario: S16a - Search for food

        When I enter "chili" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "chili"

    Scenario: S16b - Ensure item appears on Quickaccess

        When I select "chili (17)" from Quickaccess
        Then I should see search results for "chili"
    

    Scenario: S17a - Search for food

        When I enter "chocolate" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "chocolate"

    Scenario: S17b - Ensure item appears on Quickaccess

        When I select "chocolate (17)" from Quickaccess
        Then I should see search results for "chocolate"
    

    Scenario: S18a - Search for food

        When I enter "cider" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cider"

    Scenario: S18b - Ensure item appears on Quickaccess

        When I select "cider (17)" from Quickaccess
        Then I should see search results for "cider"
    

    Scenario: S19a - Search for food

        When I enter "cobbler" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cobbler"

    Scenario: S19b - Ensure item appears on Quickaccess

        When I select "cobbler (17)" from Quickaccess
        Then I should see search results for "cobbler"
    

    Scenario: S20a - Search for food

        When I enter "cocoa" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cocoa"

    Scenario: S20b - Ensure item appears on Quickaccess

        When I select "cocoa (17)" from Quickaccess
        Then I should see search results for "cocoa"
    

    Scenario: S21a - Search for food

        When I enter "coffee" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "coffee"

    Scenario: S21b - Ensure item appears on Quickaccess

        When I select "coffee (17)" from Quickaccess
        Then I should see search results for "coffee"
    

    Scenario: S22a - Search for food

        When I enter "cookie" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cookie"

    Scenario: S22b - Ensure item appears on Quickaccess

        When I select "cookie (17)" from Quickaccess
        Then I should see search results for "cookie"
    

    Scenario: S23a - Search for food

        When I enter "cream" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cream"

    Scenario: S23b - Ensure item appears on Quickaccess

        When I select "cream (17)" from Quickaccess
        Then I should see search results for "cream"
    

    Scenario: S24a - Search for food

        When I enter "croissant" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "croissant"

    Scenario: S24b - Ensure item appears on Quickaccess

        When I select "croissant (17)" from Quickaccess
        Then I should see search results for "croissant"
    

    Scenario: S25a - Search for food

        When I enter "crumble" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "crumble"

    Scenario: S25b - Ensure item appears on Quickaccess

        When I select "crumble (17)" from Quickaccess
        Then I should see search results for "crumble"
    

    Scenario: S26a - Search for food

        When I enter "cuisine" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "cuisine"

    Scenario: S26b - Ensure item appears on Quickaccess

        When I select "cuisine (17)" from Quickaccess
        Then I should see search results for "cuisine"
    

    Scenario: S27a - Search for food

        When I enter "curd" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "curd"

    Scenario: S27b - Ensure item appears on Quickaccess

        When I select "curd (17)" from Quickaccess
        Then I should see search results for "curd"
    

    Scenario: S28a - Search for food

        When I enter "dessert" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "dessert"

    Scenario: S28b - Ensure item appears on Quickaccess

        When I select "dessert (17)" from Quickaccess
        Then I should see search results for "dessert"
    

    Scenario: S29a - Search for food

        When I enter "dish" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "dish"

    Scenario: S29b - Ensure item appears on Quickaccess

        When I select "dish (17)" from Quickaccess
        Then I should see search results for "dish"
    

    Scenario: S30a - Search for food

        When I enter "drink" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "drink"

    Scenario: S30b - Ensure item appears on Quickaccess

        When I select "drink (17)" from Quickaccess
        Then I should see search results for "drink"
    

    Scenario: S31a - Search for food

        When I enter "eggs" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "eggs"

    Scenario: S31b - Ensure item appears on Quickaccess

        When I select "eggs (17)" from Quickaccess
        Then I should see search results for "eggs"
    

    Scenario: S32a - Search for food

        When I enter "entree" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "entree"

    Scenario: S32b - Ensure item appears on Quickaccess

        When I select "entree (17)" from Quickaccess
        Then I should see search results for "entree"
    

    Scenario: S33a - Search for food

        When I enter "filet" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "filet"

    Scenario: S33b - Ensure item appears on Quickaccess

        When I select "filet (17)" from Quickaccess
        Then I should see search results for "filet"
    

    Scenario: S34a - Search for food

        When I enter "fish" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "fish"

    Scenario: S34b - Ensure item appears on Quickaccess

        When I select "fish (17)" from Quickaccess
        Then I should see search results for "fish"
    

    Scenario: S35a - Search for food

        When I enter "flour" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "flour"

    Scenario: S35b - Ensure item appears on Quickaccess

        When I select "flour (17)" from Quickaccess
        Then I should see search results for "flour"
    

    Scenario: S36a - Search for food

        When I enter "foie gras" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "foie gras"

    Scenario: S36b - Ensure item appears on Quickaccess

        When I select "foie gras (17)" from Quickaccess
        Then I should see search results for "foie gras"
    

    Scenario: S37a - Search for food

        When I enter "food" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "food"

    Scenario: S37b - Ensure item appears on Quickaccess

        When I select "food (17)" from Quickaccess
        Then I should see search results for "food"
    

    Scenario: S38a - Search for food

        When I enter "glaze" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "glaze"

    Scenario: S38b - Ensure item appears on Quickaccess

        When I select "glaze (17)" from Quickaccess
        Then I should see search results for "glaze"
    

    Scenario: S39a - Search for food

        When I enter "grill" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "grill"

    Scenario: S39b - Ensure item appears on Quickaccess

        When I select "grill (17)" from Quickaccess
        Then I should see search results for "grill"
    

    Scenario: S40a - Search for food

        When I enter "hamburger" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "hamburger"

    Scenario: S40b - Ensure item appears on Quickaccess

        When I select "hamburger (17)" from Quickaccess
        Then I should see search results for "hamburger"
    

    Scenario: S41a - Search for food

        When I enter "ice" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "ice"

    Scenario: S41b - Ensure item appears on Quickaccess

        When I select "ice (17)" from Quickaccess
        Then I should see search results for "ice"
    

    Scenario: S42a - Search for food

        When I enter "juice" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "juice"

    Scenario: S42b - Ensure item appears on Quickaccess

        When I select "juice (17)" from Quickaccess
        Then I should see search results for "juice"
    

    Scenario: S43a - Search for food

        When I enter "ketchup" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "ketchup"

    Scenario: S43b - Ensure item appears on Quickaccess

        When I select "ketchup (17)" from Quickaccess
        Then I should see search results for "ketchup"
    

    Scenario: S44a - Search for food

        When I enter "kitchen" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "kitchen"

    Scenario: S44b - Ensure item appears on Quickaccess

        When I select "kitchen (17)" from Quickaccess
        Then I should see search results for "kitchen"
    

    Scenario: S45a - Search for food

        When I enter "lard" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "lard"

    Scenario: S45b - Ensure item appears on Quickaccess

        When I select "lard (17)" from Quickaccess
        Then I should see search results for "lard"
    

    Scenario: S46a - Search for food

        When I enter "liquor" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "liquor"

    Scenario: S46b - Ensure item appears on Quickaccess

        When I select "liquor (17)" from Quickaccess
        Then I should see search results for "liquor"
    

    Scenario: S47a - Search for food

        When I enter "margarine" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "margarine"

    Scenario: S47b - Ensure item appears on Quickaccess

        When I select "margarine (17)" from Quickaccess
        Then I should see search results for "margarine"
    

    Scenario: S48a - Search for food

        When I enter "marinade" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "marinade"

    Scenario: S48b - Ensure item appears on Quickaccess

        When I select "marinade (17)" from Quickaccess
        Then I should see search results for "marinade"
    

    Scenario: S49a - Search for food

        When I enter "mayo" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "mayo"

    Scenario: S49b - Ensure item appears on Quickaccess

        When I select "mayo (17)" from Quickaccess
        Then I should see search results for "mayo"
    

    Scenario: S50a - Search for food

        When I enter "mayonnaise" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "mayonnaise"

    Scenario: S50b - Ensure item appears on Quickaccess

        When I select "mayonnaise (17)" from Quickaccess
        Then I should see search results for "mayonnaise"
    

    Scenario: S51a - Search for food

        When I enter "meat" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "meat"

    Scenario: S51b - Ensure item appears on Quickaccess

        When I select "meat (17)" from Quickaccess
        Then I should see search results for "meat"
    

    Scenario: S52a - Search for food

        When I enter "milk" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "milk"

    Scenario: S52b - Ensure item appears on Quickaccess

        When I select "milk (17)" from Quickaccess
        Then I should see search results for "milk"
    

    Scenario: S53a - Search for food

        When I enter "mousse" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "mousse"

    Scenario: S53b - Ensure item appears on Quickaccess

        When I select "mousse (17)" from Quickaccess
        Then I should see search results for "mousse"
    

    Scenario: S54a - Search for food

        When I enter "muffin" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "muffin"

    Scenario: S54b - Ensure item appears on Quickaccess

        When I select "muffin (17)" from Quickaccess
        Then I should see search results for "muffin"
    

    Scenario: S55a - Search for food

        When I enter "mushroom" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "mushroom"

    Scenario: S55b - Ensure item appears on Quickaccess

        When I select "mushroom (17)" from Quickaccess
        Then I should see search results for "mushroom"
    

    Scenario: S56a - Search for food

        When I enter "noodle" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "noodle"

    Scenario: S56b - Ensure item appears on Quickaccess

        When I select "noodle (17)" from Quickaccess
        Then I should see search results for "noodle"
    

    Scenario: S57a - Search for food

        When I enter "nut" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "nut"

    Scenario: S57b - Ensure item appears on Quickaccess

        When I select "nut (17)" from Quickaccess
        Then I should see search results for "nut"
    

    Scenario: S58a - Search for food

        When I enter "oil" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "oil"

    Scenario: S58b - Ensure item appears on Quickaccess

        When I select "oil (17)" from Quickaccess
        Then I should see search results for "oil"
    

    Scenario: S59a - Search for food

        When I enter "olive" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "olive"

    Scenario: S59b - Ensure item appears on Quickaccess

        When I select "olive (17)" from Quickaccess
        Then I should see search results for "olive"
    

    Scenario: S60a - Search for food

        When I enter "omelette" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "omelette"

    Scenario: S60b - Ensure item appears on Quickaccess

        When I select "omelette (17)" from Quickaccess
        Then I should see search results for "omelette"
    

    Scenario: S61a - Search for food

        When I enter "pan" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pan"

    Scenario: S61b - Ensure item appears on Quickaccess

        When I select "pan (17)" from Quickaccess
        Then I should see search results for "pan"
    

    Scenario: S62a - Search for food

        When I enter "pasta" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pasta"

    Scenario: S62b - Ensure item appears on Quickaccess

        When I select "pasta (17)" from Quickaccess
        Then I should see search results for "pasta"
    

    Scenario: S63a - Search for food

        When I enter "paste" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "paste"

    Scenario: S63b - Ensure item appears on Quickaccess

        When I select "paste (17)" from Quickaccess
        Then I should see search results for "paste"
    

    Scenario: S64a - Search for food

        When I enter "pastry" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pastry"

    Scenario: S64b - Ensure item appears on Quickaccess

        When I select "pastry (17)" from Quickaccess
        Then I should see search results for "pastry"
    

    Scenario: S65a - Search for food

        When I enter "pie" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pie"

    Scenario: S65b - Ensure item appears on Quickaccess

        When I select "pie (17)" from Quickaccess
        Then I should see search results for "pie"
    

    Scenario: S66a - Search for food

        When I enter "pizza" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pizza"

    Scenario: S66b - Ensure item appears on Quickaccess

        When I select "pizza (17)" from Quickaccess
        Then I should see search results for "pizza"
    

    Scenario: S67a - Search for food

        When I enter "plate" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "plate"

    Scenario: S67b - Ensure item appears on Quickaccess

        When I select "plate (17)" from Quickaccess
        Then I should see search results for "plate"
    

    Scenario: S68a - Search for food

        When I enter "pot" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pot"

    Scenario: S68b - Ensure item appears on Quickaccess

        When I select "pot (17)" from Quickaccess
        Then I should see search results for "pot"
    

    Scenario: S69a - Search for food

        When I enter "poutine" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "poutine"

    Scenario: S69b - Ensure item appears on Quickaccess

        When I select "poutine (17)" from Quickaccess
        Then I should see search results for "poutine"
    

    Scenario: S70a - Search for food

        When I enter "pudding" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "pudding"

    Scenario: S70b - Ensure item appears on Quickaccess

        When I select "pudding (17)" from Quickaccess
        Then I should see search results for "pudding"
    

    Scenario: S71a - Search for food

        When I enter "raclette" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "raclette"

    Scenario: S71b - Ensure item appears on Quickaccess

        When I select "raclette (17)" from Quickaccess
        Then I should see search results for "raclette"
    

    Scenario: S72a - Search for food

        When I enter "recipe" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "recipe"

    Scenario: S72b - Ensure item appears on Quickaccess

        When I select "recipe (17)" from Quickaccess
        Then I should see search results for "recipe"
    

    Scenario: S73a - Search for food

        When I enter "rice" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "rice"

    Scenario: S73b - Ensure item appears on Quickaccess

        When I select "rice (17)" from Quickaccess
        Then I should see search results for "rice"
    

    Scenario: S74a - Search for food

        When I enter "salad" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "salad"

    Scenario: S74b - Ensure item appears on Quickaccess

        When I select "salad (17)" from Quickaccess
        Then I should see search results for "salad"
    

    Scenario: S75a - Search for food

        When I enter "salsa" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "salsa"

    Scenario: S75b - Ensure item appears on Quickaccess

        When I select "salsa (17)" from Quickaccess
        Then I should see search results for "salsa"
    

    Scenario: S76a - Search for food

        When I enter "sandwich" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "sandwich"

    Scenario: S76b - Ensure item appears on Quickaccess

        When I select "sandwich (17)" from Quickaccess
        Then I should see search results for "sandwich"
    

    Scenario: S77a - Search for food

        When I enter "sauce" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "sauce"

    Scenario: S77b - Ensure item appears on Quickaccess

        When I select "sauce (17)" from Quickaccess
        Then I should see search results for "sauce"
    

    Scenario: S78a - Search for food

        When I enter "seasoning" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "seasoning"

    Scenario: S78b - Ensure item appears on Quickaccess

        When I select "seasoning (17)" from Quickaccess
        Then I should see search results for "seasoning"
    

    Scenario: S79a - Search for food

        When I enter "skillet" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "skillet"

    Scenario: S79b - Ensure item appears on Quickaccess

        When I select "skillet (17)" from Quickaccess
        Then I should see search results for "skillet"
    

    Scenario: S80a - Search for food

        When I enter "soda" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "soda"

    Scenario: S80b - Ensure item appears on Quickaccess

        When I select "soda (17)" from Quickaccess
        Then I should see search results for "soda"
    

    Scenario: S81a - Search for food

        When I enter "soup" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "soup"

    Scenario: S81b - Ensure item appears on Quickaccess

        When I select "soup (17)" from Quickaccess
        Then I should see search results for "soup"
    

    Scenario: S82a - Search for food

        When I enter "soy" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "soy"

    Scenario: S82b - Ensure item appears on Quickaccess

        When I select "soy (17)" from Quickaccess
        Then I should see search results for "soy"
    

    Scenario: S83a - Search for food

        When I enter "spice" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "spice"

    Scenario: S83b - Ensure item appears on Quickaccess

        When I select "spice (17)" from Quickaccess
        Then I should see search results for "spice"
    

    Scenario: S84a - Search for food

        When I enter "steak" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "steak"

    Scenario: S84b - Ensure item appears on Quickaccess

        When I select "steak (17)" from Quickaccess
        Then I should see search results for "steak"
    

    Scenario: S85a - Search for food

        When I enter "stew" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "stew"

    Scenario: S85b - Ensure item appears on Quickaccess

        When I select "stew (17)" from Quickaccess
        Then I should see search results for "stew"
    

    Scenario: S86a - Search for food

        When I enter "syrup" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "syrup"

    Scenario: S86b - Ensure item appears on Quickaccess

        When I select "syrup (17)" from Quickaccess
        Then I should see search results for "syrup"
    

    Scenario: S87a - Search for food

        When I enter "tartar" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "tartar"

    Scenario: S87b - Ensure item appears on Quickaccess

        When I select "tartar (17)" from Quickaccess
        Then I should see search results for "tartar"
    

    Scenario: S88a - Search for food

        When I enter "taste" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "taste"

    Scenario: S88b - Ensure item appears on Quickaccess

        When I select "taste (17)" from Quickaccess
        Then I should see search results for "taste"
    

    Scenario: S89a - Search for food

        When I enter "tea" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "tea"

    Scenario: S89b - Ensure item appears on Quickaccess

        When I select "tea (17)" from Quickaccess
        Then I should see search results for "tea"
    

    Scenario: S90a - Search for food

        When I enter "toast" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "toast"

    Scenario: S90b - Ensure item appears on Quickaccess

        When I select "toast (17)" from Quickaccess
        Then I should see search results for "toast"
    

    Scenario: S91a - Search for food

        When I enter "vinegar" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "vinegar"

    Scenario: S91b - Ensure item appears on Quickaccess

        When I select "vinegar (17)" from Quickaccess
        Then I should see search results for "vinegar"
    

    Scenario: S92a - Search for food

        When I enter "waffle" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "waffle"

    Scenario: S92b - Ensure item appears on Quickaccess

        When I select "waffle (17)" from Quickaccess
        Then I should see search results for "waffle"
    

    Scenario: S93a - Search for food

        When I enter "water" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "water"

    Scenario: S93b - Ensure item appears on Quickaccess

        When I select "water (17)" from Quickaccess
        Then I should see search results for "water"
    

    Scenario: S94a - Search for food

        When I enter "wheat" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "wheat"

    Scenario: S94b - Ensure item appears on Quickaccess

        When I select "wheat (17)" from Quickaccess
        Then I should see search results for "wheat"
    

    Scenario: S95a - Search for food

        When I enter "wine" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "wine"

    Scenario: S95b - Ensure item appears on Quickaccess

        When I select "wine (17)" from Quickaccess
        Then I should see search results for "wine"
    

    Scenario: S96a - Search for food

        When I enter "wok" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "wok"

    Scenario: S96b - Ensure item appears on Quickaccess

        When I select "wok (17)" from Quickaccess
        Then I should see search results for "wok"
    

    Scenario: S97a - Search for food

        When I enter "yeast" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "yeast"

    Scenario: S97b - Ensure item appears on Quickaccess

        When I select "yeast (17)" from Quickaccess
        Then I should see search results for "yeast"
    

    Scenario: S98a - Search for food

        When I enter "yogurt" in the search box
        When I enter "17" in the integer box
        And I press Im Hungry
        Then I should see search results for "yogurt"

    Scenario: S98b - Ensure item appears on Quickaccess

        When I select "yogurt (17)" from Quickaccess
        Then I should see search results for "yogurt"
    
