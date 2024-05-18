def acronomyze(sentence)
  # split the sentence by spaces -> array of words
  # words = sentence.split
  words = sentence.upcase.split # -> Array

  # upcase them
  # words.upcase

  # initialise an acronym array
  acronym = []

  # Select first letter of each element
  words.each do |word|
    # letter = word[0]
    # Add each letter to an array
    acronym << word[0]
  end
  # Join the elements into a single string and return it
  acronym.join
end

# TEST

p acronomyze("Talk To You Later") == "TTYL"
p acronomyze("Missing in Action") == "MIA"
p acronomyze("Be right back") == "BRB"
