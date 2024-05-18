require 'pry-byebug'

numbers = [2, 8, 19]
binding.pry

numbers.each do |number|
  square = number * number
  puts "The square of #{number} is #{square}"
end
binding.pry
