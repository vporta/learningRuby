# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  # letters = string
  # arr = []
  # holder = letters.each_char do |char|
  #   string.split(char).select { |x| 
  #     x.length != 1
  #   }
  # end
  # p holder.split("").uniq 

# **********************
  # word_array = []
  # holder = string.each_char { |char| 
  #   characters = string.split(char).uniq
  #   word_array << characters
  # }
  # word_array.each_with_index { |el, idx| 
  #   unless word_array[idx].length == 1
  #     p word_array[idx]
  #     p word_array[idx][0]
  #     p word_array[idx][1]
  #   end
  # }
  # word_array

# ************************
  letters = string
  arr = []
  holder = letters.each_char do |char|
    substrings = string.split(char)
    new_subs = substrings.reject { |string| string == ''}
    arr << char if new_subs.all? { |string| string.length == new_subs.last.length}
  end
end


   

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
