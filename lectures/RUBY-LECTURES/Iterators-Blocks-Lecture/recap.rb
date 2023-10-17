#ARRAYS

countries = ["England", "Greece", "Zimbabwe", "Mauritius"]

# call built in methods (like size) on an array
# save the output in a variable if you want to use it elsewhere
countries_size = ["England", "Greece", "Zimbabwe", "Mauritius"].size

# p countries_size
# p countries

# CREATE

countries << "Argentina"
countries.push("Argentina")
# countries.insert(#index, "item_to_be_inserted")
p countries

# READ

p countries[0]
puts countries[0]


# UDATE
# identify the element to update, reassign the value at that index
# countries[0] = ["UK", {country: "England"}]

# p countries

# DELETE
# countries.delete("Greece")
countries.delete_at(2)


# LOOPS

for country in countries
  p country.upcase
end
