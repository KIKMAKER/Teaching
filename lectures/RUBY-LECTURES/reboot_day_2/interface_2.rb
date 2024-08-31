# require ruby to read the christmas list file
require_relative 'christmas_list.rb'

# Pseudo-code:
# 1. Welcome
puts "\n"
puts "*" * 31
puts "*" + " " * 29 + "*"
puts "*  Welcome to Christmas List  *"
puts "*" + " " * 29 + "*"
puts "*" * 31
# defining the list
gift_list = ["wool", "socks", "surfing booties"]

# begin a loop
loop do
  puts "________________________________________"
  puts " "
  puts "What'cha wanna do [list|add|delete|quit]?"

  action = gets.chomp
  case action
  when 'list'
    # iterate over the gift_list array and display each item *with its number*
    # for each item:
    christmas_list(gift_list)

  when 'add'
    # Ask the user what the item is
    puts "Whats next on the list?"
    # get the item and store in a variable
    new_gift = gets.chomp
    # p new_gift
    # push the variable into the gift_list array
    gift_list << new_gift
    # print a confirmation message
    puts "#{new_gift.capitalize} added to your list."
    puts " "
    puts "Your list now contains:"
    christmas_list(gift_list)
  when 'delete'
    # Ask the user for the item index
    puts "Which item do you wanna remove? Pick a number:"
    christmas_list(gift_list)
    # get the index and store it in a variable
    gift_index = gets.chomp.to_i - 1
    # get the gift's name and store it in a variable
    gift_name = gift_list[gift_index]
    # remove that item from the array using the index
    gift_list.delete_at(gift_index)
    puts "You removed #{gift_name} from the list"
    puts " "
    # print a confirmation
    puts "Your list now contains:"
    christmas_list(gift_list)
  when 'quit'
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
