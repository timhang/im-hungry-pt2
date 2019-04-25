Feature: Radius Tests

    Background:
        Given I am on searchPage

	Scenario: S0 - 1 radius
        When I enter "Pizza" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S2 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S3 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S4 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S5 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S6 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S7 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S8 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S9 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S10 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S11 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S12 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S13 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S14 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S15 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S16 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S17 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S18 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S19 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S20 - radius
        When I enter "aroma" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S21 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S22 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S23 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S24 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S25 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S26 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S27 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S28 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S29 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S30 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S31 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S32 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S33 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S34 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S35 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S36 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S37 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S38 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S39 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S40 - radius
        When I enter "bagel" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S41 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S42 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S43 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S44 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S45 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S46 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S47 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S48 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S49 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S50 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S51 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S52 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S53 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S54 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S55 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S56 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S57 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S58 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S59 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S60 - radius
        When I enter "batter" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S61 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S62 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S63 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S64 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S65 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S66 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S67 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S68 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S69 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S70 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S71 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S72 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S73 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S74 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S75 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S76 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S77 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S78 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S79 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S80 - radius
        When I enter "beans" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S81 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S82 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S83 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S84 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S85 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S86 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S87 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S88 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S89 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S90 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S91 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S92 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S93 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S94 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S95 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S96 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S97 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S98 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S99 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S100 - radius
        When I enter "beer" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S101 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S102 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S103 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S104 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S105 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S106 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S107 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S108 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S109 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S110 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S111 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S112 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S113 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S114 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S115 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S116 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S117 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S118 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S119 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S120 - radius
        When I enter "biscuit" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S121 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S122 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S123 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S124 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S125 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S126 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S127 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S128 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S129 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S130 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S131 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S132 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S133 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S134 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S135 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S136 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S137 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S138 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S139 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S140 - radius
        When I enter "bread" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S141 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S142 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S143 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S144 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S145 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S146 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S147 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S148 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S149 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S150 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S151 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S152 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S153 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S154 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S155 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S156 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S157 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S158 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S159 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S160 - radius
        When I enter "broth" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S161 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S162 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S163 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S164 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S165 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S166 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S167 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S168 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S169 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S170 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S171 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S172 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S173 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S174 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S175 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S176 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S177 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S178 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S179 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S180 - radius
        When I enter "burger" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S181 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S182 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S183 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S184 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S185 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S186 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S187 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S188 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S189 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S190 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S191 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S192 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S193 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S194 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S195 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S196 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S197 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S198 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S199 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S200 - radius
        When I enter "butter" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S201 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S202 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S203 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S204 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S205 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S206 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S207 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S208 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S209 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S210 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S211 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S212 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S213 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S214 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S215 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S216 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S217 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S218 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S219 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S220 - radius
        When I enter "cake" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S221 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S222 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S223 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S224 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S225 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S226 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S227 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S228 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S229 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S230 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S231 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S232 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S233 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S234 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S235 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S236 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S237 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S238 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S239 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S240 - radius
        When I enter "candy" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S241 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S242 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S243 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S244 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S245 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S246 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S247 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S248 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S249 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S250 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S251 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S252 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S253 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S254 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S255 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S256 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S257 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S258 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S259 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S260 - radius
        When I enter "caramel" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S261 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S262 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S263 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S264 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S265 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S266 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S267 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S268 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S269 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S270 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S271 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S272 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S273 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S274 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S275 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S276 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S277 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S278 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S279 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S280 - radius
        When I enter "caviar" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S281 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S282 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S283 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S284 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S285 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S286 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S287 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S288 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S289 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S290 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S291 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S292 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S293 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S294 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S295 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S296 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S297 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S298 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S299 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S300 - radius
        When I enter "cheese" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S301 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S302 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S303 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S304 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S305 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S306 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S307 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S308 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S309 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S310 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S311 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S312 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S313 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S314 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S315 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S316 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S317 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S318 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S319 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S320 - radius
        When I enter "chili" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S321 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S322 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S323 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S324 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S325 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S326 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S327 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S328 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S329 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S330 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S331 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S332 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S333 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S334 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S335 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S336 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S337 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S338 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S339 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S340 - radius
        When I enter "chocolate" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S341 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S342 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S343 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S344 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S345 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S346 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S347 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S348 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S349 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S350 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S351 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S352 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S353 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S354 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S355 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S356 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S357 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S358 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S359 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S360 - radius
        When I enter "cider" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S361 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S362 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S363 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S364 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S365 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S366 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S367 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S368 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S369 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S370 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S371 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S372 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S373 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S374 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S375 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S376 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S377 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S378 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S379 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S380 - radius
        When I enter "cobbler" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S381 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S382 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S383 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S384 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S385 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S386 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S387 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S388 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S389 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S390 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S391 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S392 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S393 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S394 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S395 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S396 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S397 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S398 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S399 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S400 - radius
        When I enter "cocoa" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S401 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S402 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S403 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S404 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S405 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S406 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S407 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S408 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S409 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S410 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S411 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S412 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S413 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S414 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S415 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S416 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S417 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S418 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S419 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S420 - radius
        When I enter "coffee" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S421 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S422 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S423 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S424 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S425 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S426 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S427 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S428 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S429 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S430 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S431 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S432 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S433 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S434 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S435 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S436 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S437 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S438 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S439 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S440 - radius
        When I enter "cookie" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S441 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S442 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S443 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S444 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S445 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S446 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S447 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S448 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S449 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S450 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S451 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S452 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S453 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S454 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S455 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S456 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S457 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S458 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S459 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S460 - radius
        When I enter "cream" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S461 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S462 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S463 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S464 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S465 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S466 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S467 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S468 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S469 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S470 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S471 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S472 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S473 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S474 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S475 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S476 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S477 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S478 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S479 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S480 - radius
        When I enter "croissant" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S481 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S482 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S483 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S484 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S485 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S486 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S487 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S488 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S489 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S490 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S491 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S492 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S493 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S494 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S495 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S496 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S497 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S498 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S499 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S500 - radius
        When I enter "crumble" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S501 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S502 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S503 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S504 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S505 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S506 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S507 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S508 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S509 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S510 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S511 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S512 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S513 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S514 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S515 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S516 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S517 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S518 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S519 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S520 - radius
        When I enter "cuisine" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S521 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S522 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S523 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S524 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S525 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S526 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S527 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S528 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S529 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S530 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S531 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S532 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S533 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S534 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S535 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S536 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S537 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S538 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S539 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S540 - radius
        When I enter "curd" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S541 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S542 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S543 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S544 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S545 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S546 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S547 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S548 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S549 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S550 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S551 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S552 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S553 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S554 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S555 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S556 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S557 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S558 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S559 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S560 - radius
        When I enter "dessert" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S561 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S562 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S563 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S564 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S565 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S566 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S567 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S568 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S569 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S570 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S571 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S572 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S573 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S574 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S575 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S576 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S577 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S578 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S579 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S580 - radius
        When I enter "dish" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S581 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S582 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S583 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S584 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S585 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S586 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S587 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S588 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S589 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S590 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S591 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S592 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S593 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S594 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S595 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S596 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S597 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S598 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S599 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S600 - radius
        When I enter "drink" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S601 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S602 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S603 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S604 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S605 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S606 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S607 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S608 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S609 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S610 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S611 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S612 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S613 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S614 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S615 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S616 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S617 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S618 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S619 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S620 - radius
        When I enter "eggs" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S621 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S622 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S623 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S624 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S625 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S626 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S627 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S628 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S629 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S630 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S631 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S632 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S633 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S634 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S635 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S636 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S637 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S638 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S639 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S640 - radius
        When I enter "entree" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S641 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S642 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S643 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S644 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S645 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S646 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S647 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S648 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S649 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S650 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S651 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S652 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S653 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S654 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S655 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S656 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S657 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S658 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S659 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S660 - radius
        When I enter "filet" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S661 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S662 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S663 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S664 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S665 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S666 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S667 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S668 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S669 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S670 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S671 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S672 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S673 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S674 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S675 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S676 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S677 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S678 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S679 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S680 - radius
        When I enter "fish" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S681 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S682 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S683 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S684 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S685 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S686 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S687 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S688 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S689 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S690 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S691 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S692 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S693 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S694 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S695 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S696 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S697 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S698 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S699 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S700 - radius
        When I enter "flour" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S701 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S702 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S703 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S704 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S705 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S706 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S707 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S708 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S709 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S710 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S711 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S712 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S713 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S714 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S715 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S716 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S717 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S718 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S719 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S720 - radius
        When I enter "foie gras" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S721 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S722 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S723 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S724 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S725 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S726 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S727 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S728 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S729 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S730 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S731 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S732 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S733 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S734 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S735 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S736 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S737 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S738 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S739 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S740 - radius
        When I enter "food" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S741 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S742 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S743 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S744 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S745 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S746 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S747 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S748 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S749 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S750 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S751 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S752 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S753 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S754 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S755 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S756 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S757 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S758 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S759 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S760 - radius
        When I enter "glaze" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S761 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S762 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S763 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S764 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S765 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S766 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S767 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S768 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S769 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S770 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S771 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S772 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S773 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S774 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S775 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S776 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S777 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S778 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S779 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S780 - radius
        When I enter "grill" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S781 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S782 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S783 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S784 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S785 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S786 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S787 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S788 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S789 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S790 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S791 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S792 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S793 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S794 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S795 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S796 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S797 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S798 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S799 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S800 - radius
        When I enter "hamburger" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S801 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S802 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S803 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S804 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S805 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S806 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S807 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S808 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S809 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S810 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S811 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S812 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S813 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S814 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S815 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S816 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S817 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S818 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S819 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S820 - radius
        When I enter "ice" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S821 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S822 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S823 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S824 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S825 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S826 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S827 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S828 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S829 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S830 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S831 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S832 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S833 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S834 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S835 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S836 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S837 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S838 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S839 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S840 - radius
        When I enter "juice" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S841 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S842 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S843 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S844 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S845 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S846 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S847 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S848 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S849 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S850 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S851 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S852 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S853 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S854 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S855 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S856 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S857 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S858 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S859 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S860 - radius
        When I enter "ketchup" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S861 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S862 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S863 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S864 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S865 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S866 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S867 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S868 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S869 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S870 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S871 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S872 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S873 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S874 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S875 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S876 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S877 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S878 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S879 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S880 - radius
        When I enter "kitchen" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S881 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S882 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S883 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S884 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S885 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S886 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S887 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S888 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S889 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S890 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S891 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S892 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S893 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S894 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S895 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S896 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S897 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S898 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S899 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S900 - radius
        When I enter "lard" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S901 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S902 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S903 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S904 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S905 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S906 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S907 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S908 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S909 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S910 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S911 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S912 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S913 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S914 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S915 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S916 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S917 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S918 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S919 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S920 - radius
        When I enter "liquor" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S921 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S922 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S923 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S924 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S925 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S926 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S927 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S928 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S929 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S930 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S931 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S932 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S933 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S934 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S935 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S936 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S937 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S938 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S939 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S940 - radius
        When I enter "margarine" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S941 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S942 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S943 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S944 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S945 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S946 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S947 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S948 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S949 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S950 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S951 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S952 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S953 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S954 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S955 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S956 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S957 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S958 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S959 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S960 - radius
        When I enter "marinade" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S961 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S962 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S963 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S964 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S965 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S966 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S967 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S968 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S969 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S970 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S971 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S972 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S973 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S974 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S975 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S976 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S977 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S978 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S979 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S980 - radius
        When I enter "mayo" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S981 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S982 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S983 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S984 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S985 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S986 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S987 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S988 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S989 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S990 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S991 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S992 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S993 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S994 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S995 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S996 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S997 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S998 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S999 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1000 - radius
        When I enter "mayonnaise" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1001 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1002 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1003 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1004 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1005 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1006 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1007 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1008 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1009 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1010 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1011 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1012 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1013 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1014 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1015 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1016 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1017 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1018 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1019 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1020 - radius
        When I enter "meat" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1021 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1022 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1023 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1024 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1025 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1026 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1027 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1028 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1029 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1030 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1031 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1032 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1033 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1034 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1035 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1036 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1037 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1038 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1039 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1040 - radius
        When I enter "milk" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1041 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1042 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1043 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1044 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1045 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1046 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1047 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1048 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1049 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1050 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1051 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1052 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1053 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1054 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1055 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1056 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1057 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1058 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1059 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1060 - radius
        When I enter "mousse" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1061 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1062 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1063 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1064 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1065 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1066 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1067 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1068 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1069 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1070 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1071 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1072 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1073 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1074 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1075 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1076 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1077 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1078 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1079 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1080 - radius
        When I enter "muffin" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1081 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1082 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1083 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1084 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1085 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1086 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1087 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1088 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1089 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1090 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1091 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1092 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1093 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1094 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1095 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1096 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1097 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1098 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1099 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1100 - radius
        When I enter "mushroom" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1101 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1102 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1103 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1104 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1105 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1106 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1107 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1108 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1109 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1110 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1111 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1112 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1113 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1114 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1115 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1116 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1117 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1118 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1119 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1120 - radius
        When I enter "noodle" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1121 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1122 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1123 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1124 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1125 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1126 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1127 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1128 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1129 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1130 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1131 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1132 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1133 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1134 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1135 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1136 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1137 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1138 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1139 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1140 - radius
        When I enter "nut" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1141 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1142 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1143 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1144 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1145 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1146 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1147 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1148 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1149 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1150 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1151 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1152 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1153 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1154 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1155 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1156 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1157 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1158 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1159 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1160 - radius
        When I enter "oil" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1161 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1162 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1163 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1164 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1165 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1166 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1167 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1168 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1169 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1170 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1171 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1172 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1173 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1174 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1175 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1176 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1177 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1178 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1179 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1180 - radius
        When I enter "olive" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1181 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1182 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1183 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1184 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1185 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1186 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1187 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1188 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1189 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1190 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1191 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1192 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1193 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1194 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1195 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1196 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1197 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1198 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1199 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1200 - radius
        When I enter "omelette" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1201 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1202 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1203 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1204 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1205 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1206 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1207 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1208 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1209 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1210 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1211 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1212 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1213 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1214 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1215 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1216 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1217 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1218 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1219 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1220 - radius
        When I enter "pan" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1221 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1222 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1223 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1224 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1225 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1226 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1227 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1228 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1229 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1230 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1231 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1232 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1233 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1234 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1235 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1236 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1237 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1238 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1239 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1240 - radius
        When I enter "pasta" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1241 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1242 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1243 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1244 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1245 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1246 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1247 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1248 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1249 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1250 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1251 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1252 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1253 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1254 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1255 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1256 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1257 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1258 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1259 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1260 - radius
        When I enter "paste" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1261 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1262 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1263 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1264 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1265 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1266 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1267 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1268 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1269 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1270 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1271 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1272 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1273 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1274 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1275 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1276 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1277 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1278 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1279 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1280 - radius
        When I enter "pastry" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1281 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1282 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1283 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1284 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1285 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1286 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1287 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1288 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1289 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1290 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1291 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1292 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1293 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1294 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1295 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1296 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1297 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1298 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1299 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1300 - radius
        When I enter "pie" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1301 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1302 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1303 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1304 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1305 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1306 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1307 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1308 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1309 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1310 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1311 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1312 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1313 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1314 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1315 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1316 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1317 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1318 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1319 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1320 - radius
        When I enter "pizza" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1321 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1322 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1323 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1324 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1325 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1326 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1327 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1328 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1329 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1330 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1331 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1332 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1333 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1334 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1335 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1336 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1337 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1338 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1339 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1340 - radius
        When I enter "plate" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1341 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1342 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1343 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1344 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1345 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1346 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1347 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1348 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1349 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1350 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1351 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1352 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1353 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1354 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1355 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1356 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1357 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1358 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1359 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1360 - radius
        When I enter "pot" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1361 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1362 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1363 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1364 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1365 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1366 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1367 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1368 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1369 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1370 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1371 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1372 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1373 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1374 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1375 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1376 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1377 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1378 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1379 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1380 - radius
        When I enter "poutine" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1381 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1382 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1383 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1384 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1385 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1386 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1387 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1388 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1389 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1390 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1391 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1392 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1393 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1394 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1395 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1396 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1397 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1398 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1399 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1400 - radius
        When I enter "pudding" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1401 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1402 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1403 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1404 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1405 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1406 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1407 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1408 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1409 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1410 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1411 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1412 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1413 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1414 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1415 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1416 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1417 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1418 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1419 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1420 - radius
        When I enter "raclette" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1421 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1422 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1423 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1424 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1425 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1426 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1427 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1428 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1429 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1430 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1431 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1432 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1433 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1434 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1435 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1436 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1437 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1438 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1439 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1440 - radius
        When I enter "recipe" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1441 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1442 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1443 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1444 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1445 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1446 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1447 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1448 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1449 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1450 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1451 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1452 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1453 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1454 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1455 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1456 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1457 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1458 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1459 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1460 - radius
        When I enter "rice" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1461 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1462 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1463 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1464 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1465 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1466 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1467 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1468 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1469 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1470 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1471 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1472 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1473 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1474 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1475 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1476 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1477 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1478 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1479 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1480 - radius
        When I enter "salad" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1481 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1482 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1483 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1484 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1485 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1486 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1487 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1488 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1489 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1490 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1491 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1492 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1493 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1494 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1495 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1496 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1497 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1498 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1499 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1500 - radius
        When I enter "salsa" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1501 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1502 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1503 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1504 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1505 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1506 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1507 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1508 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1509 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1510 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1511 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1512 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1513 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1514 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1515 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1516 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1517 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1518 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1519 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1520 - radius
        When I enter "sandwich" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1521 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1522 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1523 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1524 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1525 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1526 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1527 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1528 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1529 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1530 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1531 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1532 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1533 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1534 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1535 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1536 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1537 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1538 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1539 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1540 - radius
        When I enter "sauce" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1541 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1542 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1543 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1544 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1545 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1546 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1547 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1548 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1549 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1550 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1551 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1552 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1553 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1554 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1555 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1556 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1557 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1558 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1559 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1560 - radius
        When I enter "seasoning" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1561 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1562 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1563 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1564 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1565 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1566 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1567 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1568 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1569 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1570 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1571 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1572 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1573 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1574 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1575 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1576 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1577 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1578 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1579 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1580 - radius
        When I enter "skillet" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1581 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1582 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1583 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1584 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1585 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1586 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1587 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1588 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1589 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1590 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1591 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1592 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1593 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1594 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1595 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1596 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1597 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1598 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1599 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1600 - radius
        When I enter "soda" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1601 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1602 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1603 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1604 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1605 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1606 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1607 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1608 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1609 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1610 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1611 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1612 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1613 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1614 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1615 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1616 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1617 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1618 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1619 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1620 - radius
        When I enter "soup" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1621 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1622 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1623 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1624 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1625 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1626 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1627 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1628 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1629 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1630 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1631 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1632 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1633 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1634 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1635 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1636 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1637 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1638 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1639 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1640 - radius
        When I enter "soy" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1641 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1642 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1643 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1644 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1645 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1646 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1647 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1648 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1649 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1650 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1651 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1652 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1653 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1654 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1655 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1656 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1657 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1658 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1659 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1660 - radius
        When I enter "spice" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1661 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1662 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1663 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1664 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1665 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1666 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1667 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1668 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1669 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1670 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1671 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1672 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1673 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1674 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1675 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1676 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1677 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1678 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1679 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1680 - radius
        When I enter "steak" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1681 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1682 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1683 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1684 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1685 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1686 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1687 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1688 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1689 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1690 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1691 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1692 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1693 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1694 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1695 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1696 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1697 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1698 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1699 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1700 - radius
        When I enter "stew" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1701 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1702 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1703 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1704 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1705 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1706 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1707 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1708 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1709 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1710 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1711 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1712 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1713 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1714 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1715 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1716 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1717 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1718 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1719 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1720 - radius
        When I enter "syrup" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1721 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1722 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1723 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1724 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1725 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1726 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1727 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1728 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1729 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1730 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1731 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1732 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1733 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1734 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1735 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1736 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1737 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1738 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1739 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1740 - radius
        When I enter "tartar" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1741 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1742 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1743 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1744 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1745 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1746 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1747 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1748 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1749 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1750 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1751 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1752 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1753 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1754 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1755 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1756 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1757 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1758 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1759 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1760 - radius
        When I enter "taste" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1761 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1762 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1763 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1764 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1765 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1766 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1767 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1768 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1769 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1770 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1771 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1772 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1773 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1774 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1775 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1776 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1777 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1778 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1779 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1780 - radius
        When I enter "tea" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1781 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1782 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1783 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1784 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1785 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1786 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1787 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1788 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1789 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1790 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1791 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1792 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1793 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1794 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1795 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1796 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1797 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1798 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1799 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1800 - radius
        When I enter "toast" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1801 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1802 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1803 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1804 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1805 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1806 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1807 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1808 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1809 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1810 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1811 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1812 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1813 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1814 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1815 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1816 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1817 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1818 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1819 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1820 - radius
        When I enter "vinegar" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1821 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1822 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1823 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1824 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1825 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1826 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1827 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1828 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1829 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1830 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1831 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1832 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1833 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1834 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1835 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1836 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1837 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1838 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1839 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1840 - radius
        When I enter "waffle" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1841 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1842 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1843 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1844 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1845 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1846 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1847 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1848 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1849 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1850 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1851 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1852 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1853 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1854 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1855 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1856 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1857 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1858 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1859 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1860 - radius
        When I enter "water" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1861 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1862 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1863 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1864 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1865 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1866 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1867 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1868 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1869 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1870 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1871 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1872 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1873 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1874 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1875 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1876 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1877 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1878 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1879 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1880 - radius
        When I enter "wheat" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1881 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1882 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1883 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1884 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1885 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1886 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1887 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1888 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1889 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1890 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1891 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1892 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1893 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1894 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1895 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1896 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1897 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1898 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1899 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1900 - radius
        When I enter "wine" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1901 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1902 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1903 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1904 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1905 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1906 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1907 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1908 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1909 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1910 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1911 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1912 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1913 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1914 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1915 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1916 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1917 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1918 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1919 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1920 - radius
        When I enter "wok" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1921 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1922 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1923 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1924 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1925 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1926 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1927 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1928 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1929 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1930 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1931 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1932 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1933 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1934 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1935 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1936 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1937 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1938 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1939 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1940 - radius
        When I enter "yeast" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
    Scenario: S1941 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "5" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "5"
        
    Scenario: S1942 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "10" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "10"
        
    Scenario: S1943 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "15" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "15"
        
    Scenario: S1944 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "20" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "20"
        
    Scenario: S1945 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "25" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "25"
        
    Scenario: S1946 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "30" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "30"
        
    Scenario: S1947 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "35" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "35"
        
    Scenario: S1948 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "40" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "40"
        
    Scenario: S1949 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "45" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "45"
        
    Scenario: S1950 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "50" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "50"
        
    Scenario: S1951 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "55" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "55"
        
    Scenario: S1952 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "60" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "60"
        
    Scenario: S1953 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "65" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "65"
        
    Scenario: S1954 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "70" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "70"
        
    Scenario: S1955 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "75" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "75"
        
    Scenario: S1956 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "80" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "80"
        
    Scenario: S1957 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "85" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "85"
        
    Scenario: S1958 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "90" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "90"
        
    Scenario: S1959 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "95" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "95"
        
    Scenario: S1960 - radius
        When I enter "yogurt" in the search box
        When I enter "20" in the integer box
        When I enter "100" in the radius box
        And I press Im Hungry

        Then each restaurant must have "radius" element
        Then radius must be less than "100"
        
