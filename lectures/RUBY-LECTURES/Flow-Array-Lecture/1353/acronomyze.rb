def acronomyze(sentence)
  # split sentence into words
  words = sentence.split
  # get first letter of each word
  # eg ["laugh", "out", "loud"]

  letters = []
  words.each do |word|
    # get the first letter of the word
    # upcase the letters
    letters << word[0].upcase
  end

  # eg ["L", "O", "L"]

  # join back together
  letters.join
end

# TESTS
p acronomyze("Laugh out loud") == "LOL"
p acronomyze("Talk to you later") == "TTYL"
p acronomyze("Artificial Intelligence") == "AI"

puts acronomyze("in real life") == "IRL"
