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


