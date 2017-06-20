# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
# this line takes all the chars that are to be excluded, splits them and assigns them to char, then
# substitutes them with a blank space.
  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    sentence = sentence.gsub(char, ' ')
  end
# this line takes sentence, splits it into a new array, and assigns the array to words
  words = sentence.split
# this is an empty array, waiting to be filled:
  return_to = []
# this line takes the words array, splits it and assigns each object an index number
    words.each_with_index do |word, index|
# this line adds the word into the return_to array if the index number is even
    return_to << word if index.even?
    end
    return_to
  end
