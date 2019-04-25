
# def swap(i, counter)
#     string = "
#     Scenario: S#{counter} - Change order elements #{i[0]} down #{i[1]}
#         When I am on favorites page
#         And move item \"#{i[0]}\" down \"#{i[1]}\" position
#         Then item \"0\" should be in position \"#{i[2]}\"
#         Then item \"1\" should be in position \"#{i[3]}\"
#         Then item \"2\" should be in position \"#{i[4]}\"
#         Then item \"3\" should be in position \"#{i[5]}\"

#         And refresh
#         Then item \"0\" should be in position \"#{i[2]}\"
#         Then item \"1\" should be in position \"#{i[3]}\"
#         Then item \"2\" should be in position \"#{i[4]}\"
#         Then item \"3\" should be in position \"#{i[5]}\"


#         And move item \"#{i[0]}\" up \"#{i[1]}\" position
#         Then item \"0\" should be in position \"0\"
#         Then item \"1\" should be in position \"1\"
#         Then item \"2\" should be in position \"2\"
#         Then item \"3\" should be in position \"3\"
        
#         And refresh
#         Then item \"0\" should be in position \"0\"
#         Then item \"1\" should be in position \"1\"
#         Then item \"2\" should be in position \"2\"
#         Then item \"3\" should be in position \"3\"
#     "
#     puts(string)
    
# end


# permutations = [
#     [0,1,1,0,2,3],
#     [0,2,2,0,1,3],
#     [0,3,3,0,1,2],
#     [1,1,0,2,1,3],
#     [1,2,0,3,1,2],
#     [2,1,0,1,3,2]
# ]
# counter = 2
# for i in permutations
#     swap(i, counter)
#     counter += 1
# end


# # File.readlines("food.txt").each do |line|

# #     food = line.gsub('"', '\"').sub("\n", "")
# #     string = "
# #     Scenario: S#{i}a - Search for food

# #         When I enter \"#{food}\" in the search box
# #         When I enter \"17\" in the integer box
# #         And I press Im Hungry
# #         Then I should see search results for \"#{food}\"

# #     Scenario: S#{i}b - Ensure item appears on Quickaccess

# #         When I select \"#{food} (17)\" from Quickaccess
# #         Then I should see search results for \"#{food}\"
# #     "
# #     puts string
# #     i += 1
# # end
################################################
# Grocery list

# str = ""
# for j in 1..4 
#     for i in 1..6
#         str += "
#         Scenario: S#{i+ (j-1)*6} - Adding a single ingredient to the GL
#             And I enter \"Pizza\" in the search box
#             And I enter \"7\" in the integer box
#             And I press Im Hungry


#             When I click recipe \"#{j}\"
#             And I click add to grocery list on ingredient \"#{i}\"
#             Then I should see \"Added item to grocery list.\" in the page

#             When I press \"AddToRL\"
#             Then I should see the ingredients in the recipe list
        
#         "
#     end
# end
# puts str

str = ""

for i in 1..16
    str += "
    Scenario: S#{i+25} - Remove ingredient to the GL
        And I enter \"Pizza\" in the search box
        And I enter \"7\" in the integer box
        And I press Im Hungry


        When I press \"GroceryList\"
        And I click add to grocery list on ingredient \"#{16-i}\"
        Then I should not see the ingredient in the recipe list
    
    "
end

puts str