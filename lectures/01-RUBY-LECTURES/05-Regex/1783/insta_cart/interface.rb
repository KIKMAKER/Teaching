# Pseudo-code
# 1. Print Welcome
puts "Welcome to Instacart"
# 2. Define your store (what items are for sale?)
puts "In our store today:"
store = {
  "headphones" => 200,
  "microphone" => 100,
  "keyboard" => 190,
  "karaoke machine" => 500
}

cart = {}
# cart = {item => quantity}
# display items in the store

store.each do |item, value|
  # kiwi: 1.25€
  puts "#{item}: R#{value}"
end

# LOOP
loop do

  # 3. Get items from the user (shopping)
  # 3.1 Ask the user which item
    puts "Which item? (or 'quit' to checkout)]"
  # 3.2 get the item and store it in a variable
  item = gets.chomp
  # p item
  # 3.3 check if the item is in the store (i.e is a key in the store hash)
  if store.key?(item)
  # if it is
  # ask for the quantity

  # put the item in the cart
    # cart << item
    cart[item] = quantity
    puts "Adding #{quantity} #{item} to your cart"
  # else, if the item is quit
  elsif item == 'quit'
    puts "calculating your total..."
    break
  else
  # if its not
    puts "that's not in the store"
  # puts an error message
  end
end
# p cart
# 4. Print the bill (checkout)

# initialse a total
total = 0
# go to through each item in the cart HASH
cart.each do |item, quantity|
  # find the value from the store hash (and * by quantity)
  price = store[item]
  # add it to the total
  total += price
end


# puts the total
puts "TOTAL: R#{total}"
