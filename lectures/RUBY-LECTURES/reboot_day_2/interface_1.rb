# Pseudo-code:
# 1. Welcome
puts "Welcome to your Christmas gift list"
gift_list = ["wool", "socks", "surfing booties"]

# begin a loop
loop do
  # 2. Display menu (list / add / delete / mark )
  puts "Which action [list|add|delete|quit]?"

  # 3. Get user action
  action = gets.chomp
  # 4. Perform the right action
  # conditional statement that prints a different TO DO based on the action
  case action
  when 'list'
    # puts "TODO: list items"
    # show a numbered list of items in the gift_list
    # iterate over the gift_list array and display each item
    # for each item:
    # 1. wool
    # 2. "socks"

  when 'add'
    # puts "TODO: ask the user which item to add"
    # Ask the user what the item is
    # get the item and store in a variable
    # push the variable into the gift_list array
    # print a confirmation message
  when 'delete'
    # puts 'TODO: ask the user for the item index'
    # Ask the user for the item index
    # remove that item from the array using the index
    # print a confirmation
  when 'quit'
    puts "quitting"
    break
  else
    puts "sorry thats not an action"
  end

end
# end the loop

if Time.now.hour < 12
  puts "have a good morning"
elsif Time.now.hour > 18
  puts "have a good evening"
elsif Time.now.hour >= 12
  puts "have a good afternoon"
end
puts "Good bye! <3"
