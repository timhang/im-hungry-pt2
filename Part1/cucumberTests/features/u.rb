
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


string = ""
resultsPerPage = 5
maxPage = 10
j = 1

for j in 1..maxPage

    pageString = j == 1 ? "page" : "pages"

    string += "
Scenario: S#{j} - #{j} #{pageString}
        
\tWhen I enter \"pizza\" in the search box
\tAnd I enter \"#{j*resultsPerPage}\" in the integer box
\tAnd I press Im Hungry

"

    for i in 1..j

        click = i == 1 ? "" : "\n\tWhen I press page button \"#{i}\"\n"
        string += click

        # if pages < 6
        if j < 6
            for k in 1..j
                string += "\tThen I should see page button \"#{k}\" in the page\n"
            end
            
        elsif i < 3
            for k in 1..5
                string += "\tThen I should see page button \"#{k}\" in the page\n"
            end
        elsif i > j - 3 
            for k in j-4..j
                string += "\tThen I should see page button \"#{k}\" in the page\n"
            end
        else
            for k in i-2..i+2
                string += "\tThen I should see page button \"#{k}\" in the page\n"
            end
        end

        


        # click = i == 1 ? "" : "\n\tWhen I press page button \"#{i}\"\n"
        # string += click
        
        # may = i - 3 < 1 ? "not " : ""
        # string += "\tThen I should #{may}see page button \"Prev\" in the page\n"
        
        # may = i - 2 < 1 ? "not " : ""
        # string += "\tThen I should #{may}see page button \"#{i-2}\" in the page\n"
        
        # may = i - 1 < 1 ? "not " : ""
        # string += "\tThen I should #{may}see page button \"#{i-1}\" in the page\n"
        
        # string += "\tThen I should see button page \"#{i}\" in the page\n"

        # may = i + 1 > j ? "not " : ""
        # string += "\tThen I should #{may}see page button \"#{i+1}\" in the page\n"
        
        # may = i + 2 > j ? "not " : ""
        # string += "\tThen I should #{may}see page button \"#{i+2}\" in the page\n"

        # may = i + 3 > j ? "not " : ""
        # string += "\tThen I should #{may}see page button \"Next\" in the page\n"

        # string += "\n\n"
    end
end

puts string
    

    