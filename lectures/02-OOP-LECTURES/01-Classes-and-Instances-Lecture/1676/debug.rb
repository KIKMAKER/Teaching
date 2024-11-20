require "pry-byebug"
require_relative 'gemfile'
first_name = "mEg"
# p first_name.capitalize

second_name = "StrEEt"

def full_name(first_name, second_name)

  first_name.capitalize!
  binding.pry
  second_name.capitalize!
  binding.pry
  full_name = "#{first_name} #{second_name}"

end

puts full_name(first_name, second_name)
