require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)

# p serialized_beatles

hash = JSON.parse(serialized_beatles)

# p hash.class

beatles = hash["beatles"]
# p beatles
beatles.each do |beatle|
  # puts key
  # puts value
  # puts beatle
  puts "Hello #{beatle["first_name"]}, you play #{beatle["instrument"]} well!"
end
