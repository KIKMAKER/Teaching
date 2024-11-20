def calculator(operator, first_number, second_number)
  case operator
  when "+" then result = first_number + second_number
  when "-" then result = first_number - second_number
  when "x" then result = first_number * second_number
  when "/" then result = first_number / second_number

  end
  return result
end
