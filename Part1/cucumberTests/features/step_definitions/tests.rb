
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

When(/^I press "([^"]*)"$/) do |arg1|
	find('#'+arg1).click
end

Then(/^I should see "([^"]*)" search results for "([^"]*)"$/) do |arg1, arg2|
	expect(page).to have_content(arg1, count: arg1)
end

Then(/^I should see "([^"]*)" pages for "([^"]*)"$/) do |arg1, arg2|
	expect(find('#pageNumberDiv')).to have_content('3', count: 1)
end

Then(/^I should see "([^"]*)" in the page$/) do |arg1|
	expect(page).to have_content(arg1)
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


# Quick Access
Then(/^I should see search results for "([^"]*)"$/) do |arg1|
	expect(find('#searchText')).to have_content arg1
end

Then(/^the Quickaccess should display "([^"]*)"$/) do |arg1|
	expect(find('#quickAccess-table')).to have_content arg1
end

When(/^I select "([^"]*)" from Quickaccess$/) do |arg1|
	first('option', :text => arg1).select_option
	# select arg1, :from => "quickAccess-dropdown"
end

################################

Then(/^Quickaccess index for "([^"]*)" should be "([^"]*)"$/) do |itemName, index|
# Then("Quickaccess index for {string} should be {string}") do |index, itemName|

	counter = 0

	page.all(".searchTermText").each do |arg|
		
		# if this is the one we want
		if counter == index.to_i
			
			expect(arg.text).to eq(itemName)
			
			# exit this loop
			break
		end
		
		counter += 1
	end
end

Then(/^Quickaccess should not have "([^"]*)"$/) do |itemName|
	
	page.all(".searchTermText").each do |arg|	
		expect(arg.text).not_to eq(itemName)
	end
end

When("I click Quickaccess index {string}") do |index|
	counter = 0

	page.all(".searchTermText").each do |arg|
		
		# if this is the one we want
		if counter == index.to_i

			arg.click
			
			# exit this loop
			break
		end
		
		counter += 1
	end
end

Then("I should see Quickaccess item {string}") do |itemName|

	help = []
	page.all(".searchTermText").each do |arg|
		help.push(arg.text)
	end

	expect(help).to include(itemName)
end

Then("I should see Quickaccess item {string} only once") do |itemName|
	  
	counter = 0
	help = []

	page.all(".searchTermText").each do |arg|
		if arg.text == itemName
			counter += 1
		end
	end

	expect(counter).to eq(1)
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
	find('td', :text=> arg1).click
end

Then(/^page should contain "([^"]*)"$/) do |arg1|
	expect(page).to have_content(arg1)
end

Then(/^the header should say "([^"]*)"$/) do |arg1|
	find('h2', :text=> arg1)
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

# Security

Then(/^test XSS/) do
	File.readlines("features/xss.txt").each do |line|
		fill_in "searchText", :with=> line
		find("#feedMeButton").click
	end
end

# Change order

Given(/^I am on favorites page$/) do
	visit "http://localhost:8080/ImHungry/lists.html"
	# visit "http://food.hiddetek.com/sort"
end

When(/^move item "([^"]*)" to position "([^"]*)$/) do |arg1, arg2|
	source = page.find("#item#{arg1}")
	target = page.find("#item#{arg2}")
	source.drag_to(target)
end

And("move item {string} down {string} position") do |arg1, arg2|
	execute_script("$(\"#item#{arg1}\").simulateDragSortable({ move: #{arg2} });")
	sleep(1)
end

Then("wait {string}") do |arg1|
	puts arg1
	sleep(5)
end

And("move item {string} up {string} position") do |arg1, arg2|
	execute_script("$(\"#item#{arg1}\").simulateDragSortable({ move: -#{arg2} });")
	sleep(1)
end

Then("item {string} should be in position {string}") do |arg1, arg2|
	s = evaluate_script("$(\"#item#{arg1}\").index()")
	
	expect(s).to eq(arg2.to_i)
	
end

And("refresh") do
	refresh
end

Then("each restaurant must have {string} element") do |arg1|
	# each div with class restaurant must have the radius element

	page.all(".restaurant").each do |el|
		
		expect(el).to have_content(arg1)
	end
end

Then("radius must be less than {string}") do |arg1|
	# each div with class restaurant must have the radius element

	page.all(".radius").each do |el|
		
		expect(el.text).to be <= arg1.to_i
	end
end

# grocery list
help = Set[]
Given("I click first recipe") do
	first('.recipe').click
	page.all(:css, "ul li").each do |el|
		help.add( el.text )
	end
	
end

ingredient = ""
When("I click add to grocery list on ingredient {string}") do |i|
	
	find("#ingredient#{i}").click
	help.add( find("#ingredient#{i}").value )
	ingredient = find("#ingredient#{i}").value

end


Then("I should see the ingredients in the recipe list") do
	list = Set[]
	page.all(:css, "ul li").each do |el|
		list.add( el.text )
	end
	
	# check that all elements on help an in this list
	expect(list).to include(ingredient)
end

Then("I should not see the ingredient in the recipe list") do
	
	list = Set[]
	page.all(:css, "ul li").each do |el|
		list.add( el.text )
	end
	
	# check that all elements on help an in this list
	expect(list).to include(ingredient)
	
end

# Then("I should not see the ingredient in the recipe list") do
# 	list = Set[]
# 	page.all(:css, "ul li").each do |el|
# 		list.add( el.text )
# 	end
	
# 	# check that all elements on help an in this list
# 	help.each do |item|
# 		expect(list).not_to include(item)
# 	end
# end


When("I click recipe {string}") do |arg|
	counter = 1
	page.all(".recipe").each do |recipe|
		
		# if this is the one we want
		if counter == arg.to_i
			# recipe click
			recipe.click
			
			
			# add elements to list
			page.all(:css, "ul li").each do |el|
				help.add( el.value )
			end
			
			# exit this loop
			break
		end
		
		counter += 1
	end
	
end

When("I press the button {string}") do |arg1|
	find('button', :text => arg1)
end




# LOG IN PAGE
Given(/^I am on login page$/) do
	visit "http://localhost:8080/ImHungry/login.html"
	
end

When("I enter {string} in the {string} field") do |arg1, arg2|
	fill_in arg2, :with=> arg1
end

Then("I should be in {string}") do |arg1|
	URI.parse(current_url) == arg1
end

# pagination
Then("I should see page button {string} in the page") do |arg1|
  find('button', :text => arg1)
end

Then("I should not see page button {string} in the page") do |arg1|
	expect(find('#searchText')).to have_no_content arg1
end

When("I press page button {string}") do |arg1|
	find('button', :text => arg1).click
end


#radius
When(/^I enter "([^"]*)" in the radius box$/) do |arg1|
	fill_in 'radius', :with=> arg1
end