# def acronymize(sentence)
#   # split the sentence into words
#   words = sentence.split
#   # get the first letter of each word

#   letters = words.map do |word|
#     word[0]
#   end
#   # join them together
#   acronym = letters.join

#   # upcase them
#   acronym.upcase

# end
# p acronymize("talk to you later")


def acronymize(sentence)
  # split the sentence into words, get the first letter, join and upcase them
  sentence.split.map { |word| word[0] }.join.upcase
end
