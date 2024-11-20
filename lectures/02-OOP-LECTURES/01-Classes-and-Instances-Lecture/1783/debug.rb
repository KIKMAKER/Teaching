require 'pry-byebug'

def full_name(first_name, last_name)
  full_name = first_name + " " + last_name

  return full_name
end


puts full_name("Kiki", "Kennedy")


names = ["David", "Darian", "Mmanare"]


names.each do |name|
  surname = "unknown"
  full_name(name, surname)
  binding.pry
end

