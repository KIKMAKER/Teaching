require "pry-byebug"

students = ["terry", "jack", "kana"]

def capitalise(word)
  word.capitalize!
end

p capitalise("hugo")


students.each do |student|
  binding.pry
  capitalise(student)
  binding.pry
end
