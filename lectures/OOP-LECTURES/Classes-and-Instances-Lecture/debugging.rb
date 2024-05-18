require 'pry-byebug'

def capitalizer(first_name, second_name)

  second = second_name.capitalize
  "#{first_name.capitalize} #{second}"
end

p capitalizer("kiki", "kennedy")
