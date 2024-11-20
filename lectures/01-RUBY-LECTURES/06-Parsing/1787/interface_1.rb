# Pseudo-code:
# 1. Welcome
puts "Welcome to your x-mas wish list!"
user_action = ''
christmas_list = ["knitted socks", "books"]
# Start looping
until user_action == 'quit'
  # 2. Display menu (list / add / delete / mark )
  puts "Which action [list|add|delete|quit]?"
  # 3. Get user action (store it in a variable)
  user_action = gets.chomp
  # 4. Perform the right action
  # 4.1 check what the user chose
  case user_action
  # 4.2 if it's list
  when 'list'
    # 1 - Knitted socks
    # 2 - Books
    christmas_list.each_with_index do |gift, index|
      puts "#{index + 1} - #{gift.capitalize}"
    end

    # 4.3 if it's add
  when 'add'
    puts "What do you want to add to your wish list?"
    gift = gets.chomp
      christmas_list << gift
      puts "#{gift} added to your wishlist, may you receive it soon!"

    # 4.4 if it's delete
  when 'delete'
    puts "Which gift do you want to remove? Pick a number."
    gift_index = gets.chomp.to_i - 1
    gift_name = christmas_list[gift_index]
    puts "removing #{gift_name} from your list"
    christmas_list.delete_at(gift_index)
    puts "done!"
    # 4.4 if it's quit
  when 'quit'
    puts "Exiting the gift list..."
  else
    puts 'unknown action'
  end

end
# end the loop

# 5. Display good bye message
puts "Good bye!"
