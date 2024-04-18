require 'date'
# input -> todays date and next christmas date
# output -> integer

# example method

def days_until_christmas(date = Date.today)
  # the work / code that the method should perform
  # get christmas date and store it in a variable
    # variable = Date.new(year, month, day)
  christmas = Date.new(date.year,12, 25)
  # check if the date is before christmas
  if date > christmas
    # get christmas date for next year and store it in a variable
      # variable = Date.new(year, month, day)
      christmas = Date.new(christmas.year + 1,12, 25)
  end
  # subtract date from christmas
  days = christmas - date
  # convert the result to an integer and return it
  return days.to_i
end

puts "TESTING"

puts "returns 253 when passed todays date"
puts days_until_christmas == 253

puts "returns 252 when passed tomorrows date"
puts days_until_christmas(Date.today + 1) == 252

puts "returns 364 on boxing day"

# puts days_until_christmas(Date.new(2024,12,26))
puts days_until_christmas(Date.new(2024,12,26)) == 364

puts "does it work for days after next christmas"
puts days_until_christmas(Date.new(2025,12,26)) == 364
