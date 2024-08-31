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

gift_list = [
      { name: "wool", bought: false },
      { name: "socks", bought: true },
      { name: "surfing booties", bought: false }
    ]
# gift_list[1][:bought] == true
# begin a loop
loop do
  puts "________________________________________"
  puts " "
  puts "What'cha wanna do [list|add|mark|delete|quit]?"

  action = gets.chomp
  case action
  when 'list'
    christmas_list(gift_list)
  when 'add'
    puts "Whats next on the list?"
    new_gift = gets.chomp
    # new gift needs to be a hash eg. { name: "wool", bought: false },
    gift_list << { name: new_gift, bought: false }
    puts "#{new_gift.capitalize} added to your list."
    puts " "
    puts "Your list now contains:"
    christmas_list(gift_list)
  when 'mark'
    puts "TODO: Ask the user which item is bought"
    # change the value of bought to be true [NB look at the U in hash CRUD]
    puts "Which item did you buy?"
    christmas_list(gift_list)
    gift_index = gets.chomp.to_i - 1
    # get the gift from the array
    gift = gift_list[gift_index]
    # p gift
    # change the value of bought to true
    gift[:bought] = true
    # print a confirmation message
    puts "#{gift[:name]} marked."
  when 'delete'
    puts "Which item do you wanna remove? Pick a number:"
    christmas_list(gift_list)
    gift_index = gets.chomp.to_i - 1
    gift_name = gift_list[gift_index]
    gift_list.delete_at(gift_index)
    puts "You removed #{gift_name} from the list"
    puts " "
    puts "Your list now contains:"
    christmas_list(gift_list)
  when 'quit'
    break
  else
    puts "sorry thats not an action"
  end
end

if Time.now.hour < 12
  puts "have a good morning"
elsif Time.now.hour > 18
  puts "have a good evening"
elsif Time.now.hour >= 12
  puts "have a good afternoon"
end
puts "Good bye! <3"
