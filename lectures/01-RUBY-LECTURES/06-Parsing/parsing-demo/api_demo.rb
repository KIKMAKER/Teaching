require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/KIKMAKER"

user_serialized = URI.open(url).read
# p user_serialized
user = JSON.parse(user_serialized)
# p user
puts "#{user["name"]} is #{user["bio"]}"
