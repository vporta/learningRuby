# Define a method, #hipsterfy, that accepts a sentence (string) as an argument.
# The method should return a new string with the last vowel removed from each word.

# 'y' is not a vowel. If a word has no vowels, don't change it. You may assume all
# letters are lower-case.
#
# hipsterfy("towel flicker banana") => "towl flickr banan"

def hipsterfy(sentence) 
  sentence = sentence.split(" ")
  arr = []
  sentence.each do |word|
    result = word.gsub(/[aeiou](?!.*[aeiou])/, '') # Negative Lookahead Regex
    arr << result
  end
  arr.join(" ")
end

puts "-------Hipsterfy-------"
puts hipsterfy("proper") == "propr"
puts hipsterfy("mstrkrft") == "mstrkrft"
puts hipsterfy("towel flicker banana") == "towl flickr banan"
puts hipsterfy("turtle cheeseburger fries") == "turtl cheeseburgr fris"

def hipsterfy(sentence) 
  words = sentence.split(" ")
  result_array = []
  words.each { |word| result_array << remove_last_vowel(word)}
  result.join(" ")
end

def is_vowel?(char)
  %w{a e i o u}.include?(char)
end

def remove_last_vowel(word)
  i = word.length - 1
  while i >= 0 do
    if is_vowel?(word[i])
      word.slice!(i)
      break
    end
    i-=1
  end
  word
end


