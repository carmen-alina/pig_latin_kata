# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u"
    word + "way"
else   array_word = word.chars.to_a
  until (array_word[0].to_s == "a") || (array_word[0].to_s == "e") || (array_word[0].to_s == "i") || (array_word[0].to_s == "o") || (array_word[0].to_s == "u") do
    array_word << array_word[0]
    array_word.shift
  end
array_word.join + "ay"
end
end 

# ## Tests:
#
require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
