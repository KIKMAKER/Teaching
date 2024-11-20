require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)
# p serialized_beatles

beatles = JSON.parse(serialized_beatles)
# puts "----------------------------------------"
# puts "----------------------------------------"
# puts "----------------------------------------"
# puts "----------------------------------------"
# p beatles
# p beatles.class

beatles_array = beatles["beatles"]

beatles_array.each do |beatle|
  puts "#{beatle["first_name"]} plays #{beatle["instrument"]}"
end


# beatles.each do |key, value|
#   p key
#   p value
# end

beatles = { beatles: [
  {
    first_name: "Janet",
    last_name: "Jackson",
    instrument: "Guitar"
  },
  {
    first_name: "Ricky",
    last_name: "Martin",
    instrument: "Bass Guitar"
  },
  # etc...
]}

# p beatles.class


File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
