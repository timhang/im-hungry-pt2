
# SEARCHPAGE RUBY TESTS
Given(/^I am on searchPage$/) do
	visit "http://localhost:8080/ImHungry/searchPage.html"
end

When(/^I enter "([^"]*)" in the search box$/) do |arg1|
	fill_in 'searchText', :with=> arg1
end

When(/^I enter "([^"]*)" in the integer box$/) do |arg1|
	fill_in 'integerBox', :with=> arg1
end

When(/^I press Im Hungry$/) do
	find('#feedMeButton').click
end

Then(/^I should see "([^"]*)" search results for "([^"]*)"$/) do |arg1, arg2|
	expect(page).to have_content("Address", count: arg1)
end

When(/^I navigate to "([^"]*)"$/) do |arg1|
	visit arg1
end

Then(/^my page title should be "([^"]*)"$/) do |arg1|
	expect(page).to have_title arg1
end


Then(/^my background color should be "([^"]*)"$/) do |arg1|
	expect(find('body').native.css_value('background-color')).to eq(arg1)
end


# RESULTS PAGE RUBY TESTS
Given(/^I navigated to the results page$/) do
	visit "localhost:8080/ImHungry/resultsPage.jsp"
end

Then(/^I should be taken back to "([^"]*)"$/) do |arg1|
	URI.parse(current_url) == arg1
end

Then(/^my url should still be "([^"]*)"$/) do |arg1|
	URI.parse(current_url) == arg1
end


# Navigating to manage list pages
When(/^I click the dropdown$/) do
	find('#mySelect').click
end

When(/^I click the dropdown in the page$/) do
	find('#listSelect').click
end

When(/^I select "([^"]*)"$/) do |arg1|
	select arg1, :from => "mySelect"
end

When(/^I select "([^"]*)" from the "([^"]*)"$/) do |arg1, arg2|
	select arg1, :from => arg2
end


When(/^I click the "([^"]*)" button$/) do |arg1|
	find('button', :text => arg1).click
end

When(/^I click the button with value "([^"]*)"$/) do |arg1|
	click_on(arg1)
end

Then(/^I should be taken to "([^"]*)"$/) do |arg1|
 	URI.parse(current_url) == arg1
end

# List MGMT

Then(/^list should be empty$/) do
	expect(page).to have_no_content("Address")
	expect(page).to have_no_content("Prep time")
end

When(/^I uncheck the checkbox$/) do
  	page.check("checkbox")
end

Given(/^I click the link for "([^"]*)"$/) do |arg1|
	find('a', :text=> arg1).click
end

Then(/^page should contain "([^"]*)"$/) do |arg1|
	expect(page).to have_content(arg1)
end

Then(/^the header should say "([^"]*)"$/) do |arg1|
	find('h1', :text=> arg1)
end

Then(/^page should not contain "([^"]*)"$/) do |arg1|
	expect(page).to have_no_content(arg1)
end

Given(/^I click away$/) do
	find("#searchText").click
end



# TESTING BELOW HERE ----------------------------------------------------

Given(/^I navigated to the search page TEST$/) do
	visit "localhost:8080/ImHungry/resultsPage.jsp"
end

Given(/^I searched for "([^"]*)" with "([^"]*)" results TEST$/) do |arg1, arg2|
	fill_in 'searchText', :with=> arg1
	fill_in 'integerBox', :with=> arg2
end

When(/^I click the down TEST$/) do
	find('#mySelect').click
end

When(/^I select "([^"]*)" TEST$/) do |arg1|
	select arg1, :from => "mySelect"
end

When(/^I click the "([^"]*)" button TEST$/) do |arg1|
	find('button', :text => arg1).click
end

Then(/^I should be taken to "([^"]*)" TEST$/) do |arg1|
	URI.parse(current_url) == arg1
end




