def acronymize(sentence)
  # # write some code withthe local variable sentence included

  # # split the sentence into words
  # words = sentence.split

  # # go over the array and get the first letter of each word

  # letters = words.map do |word|
  #   # get the first letter
  #   word[0]
  # end

  # acronym = letters.join
  # acronym.upcase


  sentence.split.map { |word| word[0] }.join.upcase

end

first_name = "kiki"

last_name = "Kennedy"

# interpolation
# inserting code into a string
full_name = "#{first_name.capitalize} #{last_name}."

p full_name

# concatenation
# adding strings together
full_name = first_name.capitalize + " " + last_name + "."

p full_name
