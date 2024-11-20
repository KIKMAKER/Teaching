# a method that returns an acronym when given a sentence

def acronomyze(a_string)
  # split the string into words
  words = a_string.split
  # initialise a place to store the letter
  letters = []
  # get the first letter from each word
  words.each do |word|
    letter = word[0].upcase
    # put it in the letters array
    letters << letter
  end
  # join them back together
  letters.join #.upcase
end

# test
p acronomyze("Laugh Out Loud") == "LOL"
p acronomyze("Oh my goodness") == "OMG"
p acronomyze("be right back") == "BRB"
p acronomyze("Talk to you later") == "TTYL"
