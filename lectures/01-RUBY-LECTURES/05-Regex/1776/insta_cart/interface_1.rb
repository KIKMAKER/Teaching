# Pseudo-code
# 1. Print Welcome
puts "Welcome to the store"
# 2. Define your store (what items are for sale?)
store = {
  "pen" => 10,
  "scissors" => 30,
  "calculator" => 100
}
# initialise a cart variable
cart = []

# 3. Get items from the user (shopping)
# 3.1 display the list of items
puts "On sale today we have:"

store.each do |item, price|
  puts "#{item}: R#{price}"
end

# start a loop until item == 'quit'

loop do
  # 3.2 Ask the user which item they want
  puts "pick an item to add to your cart or quit to checkout"
  item = gets.chomp
  # p item
  # 3.2.1 check if the item is in the store
  # if it is
  if store.key?(item)
    # 3.3 Add it to the cart
    # cart.push(item)
    cart << item
    puts "#{item} added to your cart"
  # if it isn't
  elsif item == "quit"
    puts "calculating your total..."
    break
  else
    puts "#{item} was not found in the store"
    # print an error
  end
end

# p cart

# 4. Print the bill (checkout)
# 4.1 initialise a total
total = 0
# 4.2 iterate of the cart
cart.each do |item|
  # 4.3 for each item find the price from the store hash
  # p store[item]
  price = store[item]
  # 4.4 add it to the total
  total += price
end

# 4.5 print the total
puts " -------BILL---------"
puts " TOTAL: R#{total}"
puts " --------------------"
