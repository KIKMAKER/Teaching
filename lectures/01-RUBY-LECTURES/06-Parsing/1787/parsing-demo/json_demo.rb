require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)

# p serialized_beatles.class


beatles = JSON.parse(serialized_beatles)


# p beatles.keys

beatles["beatles"].each do |beatle|
  # p beatle.keys
  puts "#{beatle["first_name"]} #{beatle["last_name"]} plays #{beatle["instrument"]} in the Beatles"
end


beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  }
]}


File.open(filepath, "wb") do |file|
  file.write(JSON.generate(beatles))
end
