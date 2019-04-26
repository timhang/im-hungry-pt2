Feature: Pagination of results

    Background:
        Given I am on searchPage

	Scenario: S1 - 1 page

		When I enter "pizza" in the search box
		And I enter "5" in the integer box
		And I press Im Hungry

		Then I should see page button "1" in the page

		And I click the "Return to Search Page" button

        When I enter "pizza" in the search box
        And I enter "11" in the integer box
        And I press Im Hungry
        Then I should see "3" pages for "pizza"

    Scenario: S1 - Next Page element exists

        When I enter "pizza" in the search box
        And I enter "11" in the integer box
        And I press Im Hungry

		When I press page button "2"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page

	Scenario: S3 - 3 pages

		When I enter "pizza" in the search box
		And I enter "15" in the integer box
		And I press Im Hungry

		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page

		When I press page button "2"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page

		When I press page button "3"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page

	Scenario: S4 - 4 pages

		When I enter "pizza" in the search box
		And I enter "20" in the integer box
		And I press Im Hungry

		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page
		Then I should see page button "4" in the page

		When I press page button "2"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page
		Then I should see page button "4" in the page

		When I press page button "3"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page
		Then I should see page button "4" in the page

		When I press page button "4"
		Then I should see page button "1" in the page
		Then I should see page button "2" in the page
		Then I should see page button "3" in the page
		Then I should see page button "4" in the page

