# i = 1
# File.readlines("features/xss.txt").each do |line|

    
#     string = "\tScenario: S#{i} XSS Test #{i}\n\n\t" 
#     string += "\tWhen I enter \"" + line.gsub('"', '\"').sub("\n", "") + "\" in the search box\n\t"
#     string += "\tAnd I press Im Hungry\n\t"
#     string += "\tThen I should see \"1\" search results for \"Invalid\"\n\n"
#     puts string
#     i += 1
# end