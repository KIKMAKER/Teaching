# Adding quantity
puts "Welcome to the store"
puts " "
puts "____________________"
store = {
  "pen" => 10,
  "scissors" => 30,
  "calculator" => 100
}
cart = {}
# eg {"pen" => 2}

puts "On sale today we have:"

store.each do |item, price|
  puts "#{item}: R#{price}"
end

puts "____________________"
puts " "

loop do
  puts "pick an item to add to your cart or quit to checkout"
  puts "____________________"
  puts " "
  item = gets.chomp
  if store.key?(item)
    puts "how many?"
    quantity = gets.chomp.to_i
    cart[item] = quantity
    puts "#{quantity} X #{item} added to your cart"
  elsif item == "quit"
    puts "calculating your total..."
    break
  else
    puts "#{item} was not found in the store"
  end
end
puts "____________________"
puts " "
total = 0
puts " -------BILL---------"
cart.each do |item, quantity|
  # get the items price from the store hash
  price = store[item]
  # calculate the total value of the items
  item_total = quantity * price
  # increment the cart total by the items total
  total += item_total
  # print out item details
  puts "#{item}: #{quantity} X R#{price} = R#{item_total}"
end

puts " TOTAL: R#{total}"
puts " --------------------"
