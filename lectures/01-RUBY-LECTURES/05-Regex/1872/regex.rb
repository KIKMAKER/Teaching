# phone_number = "+44 84 5675 8910"

# if phone_number.match?(/^\+44\s\d{2}\s\d{4}\s\d{4}$/)
#   puts "This is a valid UK international phone number"
# else
#   puts "It's not valid!"
# end


match_data = "Dima Saurus Doe".match(/^(?<first_name>\w+) (?<middle_name>\w+) (?<last_name>\w+)$/)

p match_data
# puts "Firstname: #{match_data[1]}"
# puts "Lastname: #{match_data[2]}"

p match_data[:middle_name]
