# Pseudo-code
# 1. Print Welcome
puts "Welcome to Kiki's store!"
# 1.1 Define a cart
cart = []
# 2. Define your store (what items are for sale?)
puts "> In our store today:"
store = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}
# 2.1 Go through the store hash
store.each do |name, price|
  puts "> #{name}: $#{price}"
end
# 2.3 For each item print it's name and price
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------

# START A LOOP
loop do
  # 3. Get items from the user (shopping)
  puts "> Which item? (or 'quit' to checkout)"
  item = gets.chomp
  # 3.1 Check if the item is in the store
  if store.key?(item)
    # 3.2 If it is, add it to the cart
    puts "How many?"
    quantity = gets.chomp.to_i
    cart << { item => quantity }
    puts "You now have #{cart.size} items in your cart."
    puts "#{item} added to your cart"
  elsif item == "quit"
    # END LOOP if the user says "quit"
    break
  else
    # 3.3 else, print an error message
    puts "sorry thats not an option"
  end
end
p cart
# 4. Print the bill (checkout)
# 4.0 Initialise the total variable
total = 0
# 4.1 Go through each item in the cart
puts "Calculating your total:"
puts "> --------------------"
cart.each do |item_hash|
  # 4.2 Get the item price from the store
  item_name = item_hash.keys.first
  item_quantity = item_hash[item_name]
  price = store[item_name]
  item_total = item_quantity * price
  # 4.3 Add it to the total
  puts "#{item_name}: #{item_quantity} X $#{price} = $#{item_total}"
  total += item_total
end
# 4.4 Display the total to the user

puts "> -------BILL---------"
puts "> TOTAL: $#{total}"
puts "> --------------------"
