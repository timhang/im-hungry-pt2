
# counter = 1
# string = ""

# File.readlines("food.txt").each do |line|

#     food = line.sub("\n", "")

#     inside = ""

#     for i in 1..7
#         inside += "
#         When I click recipe \"#{i}\"
#         And I press \"AddToRL\"
#         Then I should see the ingredients in the recipe list

#         When I press \"backBtn\"
#         Then I should see search results for \"#{food}\"
#         "
#     end

#     string += "

#     Scenario: S#{counter} - Add ingredientes to RL
#         And I enter \"#{food}\" in the search box
#         And I enter \"7\" in the integer box
#         And I press Im Hungry
#         " + inside

#     counter += 1
# end

# puts string


    