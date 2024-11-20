def calculator(first_number, second_number, operator)
  if operator == "+"
    result = first_number + second_number
  elsif operator == "-"
    result = first_number - second_number
  elsif operator == "*"
    result = first_number * second_number
  elsif operator == "/"
    result = first_number.fdiv(second_number)
  else
    result = "that isn't a valid operator"
  end
  return result
end
