# FOR LOOP

restaurants = ["Tali", "Timbuktu", "The Milk", "Steers", "Kloof Street House", "KFC"]

# for index in 0...restaurants.size
#   puts restaurants[index]
# end


# for resto in restaurants
#   puts resto
# end


# EACH_WITH_INDEX

restaurants.each_with_index do |resto, index|
  # puts index
  # puts "#{index + 1}. - #{resto}"
  # puts "It is the number #{index + 1} restaurant in this neighbourhood"
  # puts "No other restaurant other than #{resto} holds this position."
end


# def hello(first, last)
#   # code with first and last in any way you want
# end

# hello("Jack", "Wale")


# MAP

upcased_restaurants = []

restaurants.each do |restaurant|
  upcased_restaurants << restaurant.upcase
end

# p upcased_restaurants

# upcased_restaurants = restaurants.map do |restaurant|
#   restaurant.upcase
# end

# restaurants.map { |resto| resto.upcase }.sort

# p upcased_restaurants
# p restaurants


# COUNT
# count = 0

# restaurants.each do |restaurant|
#   if restaurant.start_with?("T")
#     count += 1
#   end
# end

# p count

# t_restaurants = restaurants.count do |restaurant|
#   restaurant.start_with?("T")
# end

# p t_restaurants

# SELECT

t_restaurants = []

restaurants.each do |restaurant|
  if restaurant.start_with?("T")
    t_restaurants << restaurant
  end
end

t_restaurants = restaurants.select do |restaurant|
  restaurant.start_with?("T")
end

p t_restaurants

# REJECT

not_t_restaurants = []

restaurants.each do |restaurant|
  if !restaurant.start_with?("T")
    not_t_restaurants << restaurant
  end
end

not_t_restaurants = restaurants.reject do |restaurant|
  restaurant.start_with?("T")
end

p not_t_restaurants
