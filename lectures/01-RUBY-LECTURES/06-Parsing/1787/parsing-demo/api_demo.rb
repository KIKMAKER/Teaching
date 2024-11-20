require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ankane"


user_serialized = URI.parse(url).read

# p user_serialized.class

user = JSON.parse(user_serialized)

# p user.class
# p user.keys


puts " The user #{user["login"]} has this bio: #{user["bio"]}, and #{user["public_repos"]} public repos"
