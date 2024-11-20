require 'date'
# Write a method which returns the number of days until next Xmas.

def days_until_xmas(year, month, day)

  # get the date of next christmas
  next_christmas = Date.new(2024, 12, 25)

  # get todays date
  today = Date.new(year, month, day)

  # check if today is > next_christmas
  if today < next_christmas
    # subtract today from next xmas
    days = next_christmas - today
  else
    # add 365 to christmas
    next_christmas = next_christmas + 365
    if today > 1
      puts "happy birthday"
    else
      puts "its not your birthday"
    end
    # calculate days
    days = next_christmas - today
    # if not
  end
  return days
end


# p days_until_xmas
# "something"
# days_until_xmas.class


# this_string = String.new("something")
# "something"

# def circle_area(radius)
#   if radius < 0
#     0
#   else
#     puts "calculating the area"
#   end
#   area = 3.14 * radius * radius

#   return area
# end

# area = circle_area(2)
