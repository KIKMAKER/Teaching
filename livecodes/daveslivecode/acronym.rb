sentence = "transport for London"

def acronymize(sentence)
  # seperate sentences into word
  words = sentence.split
  # p words
  # intialise an array = ["transport", "for", "london"]
  first_letters = []
  # iterate over the array, grab first letter = T, f, L
  words.each do |word|
    first_letters << word[0]
  end

  # join together to create TfL, uppercase return 3 letters
  first_letters.join.upcase
end
acronymize(sentence)


puts acronymize("transport for London") == "TFL"
puts acronymize("") == ""
puts acronymize("word") == "W"
puts acronymize("Transport For London") == "TFL"
