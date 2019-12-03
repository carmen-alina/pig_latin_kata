# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u"
    word + "way"

  elsif word.start_with?("qu")
    array_word = word.chars.to_a
    array_word << array_word[0]
    array_word.shift
    array_word << array_word[0]
    array_word.shift
    array_word.join + "ay"
  else
    array_word = word.chars.to_a
    until (array_word[0].to_s == "a") || (array_word[0].to_s == "e") || (array_word[0].to_s == "i") || (array_word[0].to_s == "o") || (array_word[0].to_s == "u") do
      array_word << array_word[0]
      array_word.shift
    end
    array_word.join + "ay"
  end

end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
