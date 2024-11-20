require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "What is your github username?"
username = gets.chomp
url = "https://api.github.com/users/#{username}"
user_serialized = URI.parse(url).read
user = JSON.parse(user_serialized)

# p user

puts "On github you are known as:"
puts "#{user["name"]} - #{user["bio"]}"
