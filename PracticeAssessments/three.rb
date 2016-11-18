# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself an hour to complete this assessment.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------
#
#
# In All Strings
# ------------------------------------------------------------------------------
# Check if a short_string is a substring of ALL of the long_strings

def in_all_strings?(long_strings, short_string)
  long_strings.all? do |long_string|
    long_string.include?(short_string)
  end
end

puts "---------In All Strings-------"
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "sisa") == true
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "isan") == false
puts in_all_strings?(["gandalf", "aragorn", "sauron"], "sam") == false
puts in_all_strings?(["axe", "ajax", "axl rose"], "ax") == true

# Biodiversity
# ------------------------------------------------------------------------------
# Given an array of specimens, return the biodiversity index, which is defined
# by the following formula: number_of_species^2 times the smallest_population_size
# divided by the largest_population_size.

# In code, biodiversity = number_of_species**2 * smallest_population_size / largest_population_size
#
# ------------------------------------------------------------------------------

def biodiversity_index(specimens)
  hasher = Hash.new(0)
  specimens.each do |ani|  
    hasher[ani] += 1 
  end
  number_of_species = specimens.uniq.length
  smallest_population_size = hasher.values.min
  largest_population_size = hasher.values.max
  p number_of_species ** 2 * smallest_population_size / largest_population_size
end


puts "------Biodiversity------"
puts biodiversity_index(["cat"]) == 1
puts biodiversity_index(["cat", "cat", "cat"]) == 1
puts biodiversity_index(["cat", "cat", "dog"]) == 2
puts biodiversity_index(["cat", "fly", "dog"]) == 9
puts biodiversity_index(["cat", "fly", "dog", "dog", "cat", "cat"]) == 3

# For F's Sake
# ------------------------------------------------------------------------------
# Given a string, return the word that has the letter "f" closest to
# the end of it.  If there's a tie, return the earlier word.  Ignore punctuation.
#
# If there's no f, return an empty string.
# ------------------------------------------------------------------------------


def for_fs_sake(string)

  words = string.split(" ")
  answer_word = ""
  current_closest_dist = nil
  words.each do |x|
      if answer_word == "" && f_distance(x) != nil
        current_closest_dist = f_distance(x)
        answer_word = x
      elsif f_distance(x).nil?
        x
      elsif f_distance(x) < current_closest_dist
        current_closest_dist = f_distance(x)
        answer_word = x
      end
  end
  answer_word
        
end

def f_distance(word)
    word = word.gsub(/!/, "")
  if word.include?("f") == false
    return nil
  end
  idx = -1
  distance = 0
  while idx >= (word.length) * - 1
    if word[idx] == "f" || word[idx] == "F"
      return distance
    end
    idx -= 1
    distance += 1
  end
  distance
end

puts "------For F's Sake------"
puts for_fs_sake("puff daddy") == "puff"
puts for_fs_sake("I got a lot of problems with you people! And now you're gonna hear about it!") == "of"
puts for_fs_sake("fat friars fly fish") == "fat"
puts for_fs_sake("the French call him David Plouffe") == "Plouffe"
puts for_fs_sake("pikachu! i choose you!") == ""


# Censor
# ------------------------------------------------------------------------------
# Write a function censor(sentence, curse_words) that censors the words given.
# Replace the vowels in the curse word with "*".

def censor(sentence, curse_words)
  sentence = sentence.split(" ")
  sentence = sentence.each do |word|
    if is_curse?(word, curse_words)
      word.gsub!(/[aeiou]/, '*') 
    end
  end
  sentence.join(" ")
end

def is_curse?(string_of_words, curse_words)
  curse_words.include?(string_of_words.downcase)
end

puts "------Censor------"
puts censor("Darn you Harold you son of a gun", ["darn", "gun"]) == "D*rn you Harold you son of a g*n"
puts censor("Schnikeys I don't give a diddly squat", ["schnikeys", "diddly", "squat"]) == "Schn*k*ys I don't give a d*ddly sq**t"
puts is_curse?("schnikeys", ["schnikeys", "gun"]) 



