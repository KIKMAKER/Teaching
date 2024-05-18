require 'pry-byebug'
def capitalizer(first, last)
  first.capitalize
  last.capitalize
  binding.pry
  "#{first} #{last}"
end
binding.pry
p capitalizer("kiki", "kennedy")
