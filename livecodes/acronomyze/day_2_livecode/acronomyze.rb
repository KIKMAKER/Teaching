# input -> sentence datatype string
# output -> acronym datatype string

def acronomyze(sentence)
  # split the sentence into words (split turns string -> array)
  words = sentence.split
  # initiate a letters array to store the letters in
  letters = []
  # go over each word in the array and
  words.each do |word|
    # target the first letter and
    letter = word[0]
    # add it to the lettters array
    letters << letter
  end
  # join them together and
  # capitalize it
  acronym = letters.join.upcase
  return acronym
end

# examples of acronyms
# LOL = Laugh Out Loud
puts "should return LOL when called on 'Laugh out Loud'"
if acronomyze("Laugh out Loud") == "LOL"
  puts "it does"
else
  puts "it actually put #{acronomyze("Laugh out Loud")}"
end
# one = Time.now
# sleep(3)
# two = Time.now
# elapsed = two - one

puts acronomyze("Laugh out Loud")
# puts "it was actually #{elapsed}s"
# # LMFAO = Laugh My Freaking Arse Off
puts "should return LMFAO when called on 'Laugh My Freaking Arse Off'"
puts acronomyze("Laugh My Freaking Arse Off") == "LMFAO"
# # OMG = Oh My Gosh
puts "should return OMG when called on 'Oh My Gosh'"
puts acronomyze("Oh My Gosh") == "OMG"
# # WTF = What The Freak
puts "should return WTF when called on 'What The Freak'"
puts acronomyze("What the FUCK") == "WTF"
