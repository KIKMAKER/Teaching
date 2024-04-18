def acronymize(sentence)
  #acronymize a sentence
  #Layout the array

  sentence.split.map { |word| word[0].upcase }.join

end
