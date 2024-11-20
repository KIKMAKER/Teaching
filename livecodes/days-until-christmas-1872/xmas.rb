require 'date'
def days_until_xmas(year)
  # PSEUDO CODE
  # get todays date
  today = Date.today
  # get xmas date
  xmas = Date.new(year, 12, 25)

  # check if today is after xmas 2024
  if today > xmas
    # if it is add 1 year to xmas
    # xmas = xmas + 365
    xmas += 365
  end
  # calculate xmas - today
  days = xmas - today
  # return the answer
  return days.to_i
end

## VERSION 1

# def days_until_xmas
#   # PSEUDO CODE
#   # get todays date
#   today = Date.new(2024, 12, 26)
#   # get xmas date
#   xmas = Date.new(2024, 12, 25)

#   # check if today is after xmas 2024
#   if today > xmas
#     # if it is add 1 year to xmas
#     # xmas = xmas + 365
#     xmas += 365
#   end
#   # calculate xmas - today
#   days = xmas - today
#   # return the answer
#   return days.to_i
# end

# puts days_until_xmas
