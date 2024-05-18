def acronomyze(sentence)
  # split the sentence into words (split turns string -> array)
  # go over each word in the array and
  # target the first letter and
  # join them together and
  # capitalize it
  sentence.split.map { |word| word[0] }.join.upcase
end


# tests
puts "did the test pass?"
puts acronomyze("Thank Goodness it's Friday") == "TGIF"

puts acronomyze("On my way") == "OMW"

puts acronomyze("As Far As I know") == "AFAIK"

puts acronomyze("As soon as possible") == "ASAP"
