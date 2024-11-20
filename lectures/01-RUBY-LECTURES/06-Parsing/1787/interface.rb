require_relative 'display_list'
require_relative 'scraper'
# Pseudo-code:
# 1. Welcome
puts "\n"
puts "*" * 31
puts "*#{' ' * 29}*"
puts "*  Welcome to Christmas List  *"
puts "*#{' ' * 29}*"
puts "*" * 31
puts "\n"
user_action = ''
christmas_list = [
  { name: 'knitted socks', bought: true },
  { name: 'books', bought: false }
]

# what is the best way to represent a gift for this app?

# we need to know it's name
# we need to know if it's bought

# string = "[ ] horse"
# string.gsub('[ ]', '[X]')

# array = ['x', "horse", Date.today]

until user_action == 'quit'
  # add mark to the options
  puts "Which action [list|add|mark|inspo|delete|quit]?"
  user_action = gets.chomp
  case user_action
  when 'list'
    display_list(christmas_list)
  when 'add'
    puts "What do you want to add to your wish list?"
    gift = gets.chomp
    # create a hash to push into the christmas list
    # assume a default value for bought
    christmas_list << { name: gift, bought: false }
    puts "#{gift} added to your wishlist, may you receive it soon!"
  when 'mark'
    # ask them which item to mark
    puts "Which item did you buy?"
    # display the list again
    display_list(christmas_list)

    item_index = gets.chomp.to_i - 1

    # change the value of bought for that item
    item_hash = christmas_list[item_index]
    item_hash[:bought] = true
    # same thig as:
    # christmas_list[item_index][:bought] = true

    item_name = item_hash[:name]

    puts "#{item_name.capitalize} marked as bought"
  when "inspo"
    # ask what to search etsy for
    puts "What do you want to search for?"
    # get the answer
    answer = gets.chomp
    # send it to the scraper method
    results = scraper(answer)
    puts "here are the results:"
    display_list(results)
    puts "which would you like to add to your chirstmas list?"
    new_gift_index = gets.chomp.to_i - 1

    new_gift = results[new_gift_index]

    christmas_list << new_gift

  when 'delete'
    puts "Which gift do you want to remove? Pick a number."
    # display the list again
    display_list(christmas_list)

    gift_index = gets.chomp.to_i - 1
    gift_name = christmas_list[gift_index]
    puts "removing #{gift_name} from your list"
    christmas_list.delete_at(gift_index)
    puts "done!"
  when 'quit'
    puts "Exiting the gift list..."
  else
    puts 'unknown action'
  end

end
puts "Good bye!"
