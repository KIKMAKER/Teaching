# Adding availability
puts "Welcome to the store"
puts "____________________"
puts " "
store = {
  "pen" => { price: 10, stock: 100 },
  "scissors" => { price: 30, stock: 5 },
  "calculator" => { price: 100, stock: 1 }
}
cart = {}
# eg {"pen" => 2}

puts "On sale today we have:"

store.each do |item, info_hash|
  puts "#{item}: R#{info_hash[:price]} (#{info_hash[:stock]} available)"
        # kiwi: 1.25€ (5 available)
end

puts "____________________"
puts " "

loop do
  puts "pick an item to add to your cart or quit to checkout"
  puts "____________________"
  puts " "
  item = gets.chomp
  if store.key?(item)
    # check if there is stock
    if store[item][:stock] >= 1
      puts "how many?"
      quantity = gets.chomp.to_i
      cart[item] = quantity
      # subtract the quantity from the stock
      store[item][:stock] -= quantity
      puts "#{quantity} X #{item} added to your cart"
    else
      puts "there is no more stock"
    end
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
  price = store[item][:price]
  # calculate the total value of the items
  item_total = quantity * price
  # increment the cart total by the items total
  total += item_total
  # print out item details
  puts "#{item}: #{quantity} X R#{price} = R#{item_total}"
end

puts " TOTAL: R#{total}"
puts " --------------------"
