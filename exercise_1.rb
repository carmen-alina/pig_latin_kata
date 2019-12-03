# Write a program that takes a word and returns the pig latin version.
# Here are the (simplified) rules of pig latin:
#
# If the word starts with consonant, move it to the end and then add 'ay'
# Or, if the word starts with a vowel, add 'way' to the end
# e.g. dog  -> ogday
#      up   -> upway
#
# Don't worry about handling multiple consonants
# Assume the words are lowercase.
# Assume your user is a developer — e.g. you don't need to write a user interface.

def pig_latin(word)
  # puts "Give me an word"
  # word = gets.chomp.downcase
  if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u"
    "#{word}" + "way"
  else
    array_word = word.chars.to_a
    array_word << array_word[0]
    array_word.shift
    array_word.join + "ay"
  end
end


# Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
