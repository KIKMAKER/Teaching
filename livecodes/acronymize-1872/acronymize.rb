def acronomyz(a_phrase)
  # pseudo code
  # split the phrase into (an array of) words
  words = a_phrase.split
  #initialize a letters array
  letters_array = []
  # get the first letter of EACH word
  words.each do |word|
    # selecting the character at index 0 of the string
    letter = word[0]
    letters_array << letter
  end
  # join all the letters together
  acronym = letters_array.join
  # capitalise the letters
  acronym.upcase
end




puts acronomyz("What the fuck") == "WTF"

puts acronomyz("Oh My Goodness") == "OMG"

puts acronomyz("on my way") == "OMW"

puts acronomyz("Do not disturb") == "DND"

puts acronomyz("laugh out loud") == "LOL"

puts acronomyz("Hello to your sister")
