# i = 1
# File.readlines("food.txt").each do |line|

#     food = line.gsub('"', '\"').sub("\n", "")
#     string = "
#     Scenario: S#{i}a - Search for food

#         When I enter \"#{food}\" in the search box
#         When I enter \"17\" in the integer box
#         And I press Im Hungry
#         Then I should see search results for \"#{food}\"

#     Scenario: S#{i}b - Ensure item appears on Quickaccess

#         When I select \"#{food} (17)\" from Quickaccess
#         Then I should see search results for \"#{food}\"
#     "
#     puts string
#     i += 1
# end