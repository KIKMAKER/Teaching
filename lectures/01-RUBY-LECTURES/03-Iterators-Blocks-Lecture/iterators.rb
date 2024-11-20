countries = ["England", "Greece", "Zimbabwe", "Mauritius", "Georgia"]

# FOR LOOP

for index in (0..(countries.size - 1))
  country = countries[index]
  puts "#{country.upcase} is number #{index + 1}"
end

# EACH

countries.each do |country|
  p country.upcase
end

# EACH_WITH_INDEX
# performs some piece of code considering the element and the index
# doesn't return, just executes
p countries
countries.each_with_index do |country, index|
  puts "#{country.upcase} is number #{index + 1}"
end

p countries

# If you want to get a new array with the contents of the iteration
upcased_countries = []
countries.each do |country|
  upcased_countries << country.upcase
end
p upcased_countries


# MAP
# returns a transformed array

downcased_countries = countries.map do |country|
  country.downcase
end

p downcased_countries

#COUNT
# returns an integer
number = countries.count do |country|
  country.start_with?("G")
end

p number

#SELECT
# returns a new array
start_with_g = countries.select do |country|
  country.start_with?("G")
end

p start_with_g

# REJECT
# returns a new array
dont_start_with_g = countries.reject do |country|
  country.start_with?("G")
end

p dont_start_with_g

# SINGLE LINE SYNTAX
dont_start_with_g = countries.reject { |country| country.start_with?("G") }
