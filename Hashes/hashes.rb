# # dictionary = {
# #   "apple" => "a delicious fruit",
# #   "cat" => "a cute animal",
# #   "dog" => "a best friend",
# #   "human" => "not as cute as cats.."
# # }

# # dictionary["dog"] # ==> "a best friend"

# # LOOPS

# dictionary = {
#      "apple" => "a delicious fruit",
#      "cat" => "a cute animal",
#      "dog" => "a best friend",
#      "human" => "not as cute as cats.."
#    }

#    dictionary.each do |key, value|
#      puts "The definition of #{key} is: '#{value}'"
#    end


#keys Returns an array of all the keys
#values Returns an array of all the values
#length Returns the number of key-value pairs
#include? Returns true / false if the hash has a key matching the argument
#delete Deletes the specified key (and value) from the hash



# Write a method, #word_lengths(string) that, given a sentence, returns a hash of each of the words and their lengths.

#   word_lengths("hello my good good pal") =
#     { 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }


def word_lengths(string)
  string = string.split(" ")
  i = 0
  hasher = {}

  while i < string.length 

    hasher[string[i]] = string[i].length

    i+=1

  end
  p hasher
end

# word_lengths("hello my good good pal")

# def word_lengths(string)
#    result = {}
#    words = string.split

#    words.each do |word|
#      result[word] = word.length
#    end

#    result
#  end


# Write a method, #uniq(array) that returns an array with only the unique values in the array. (Hint: use a hash!) Don't use the Array#uniq method here.

#   uniq([1, 1, 2, 3])          # ==> [2, 3]
#   uniq([1, 3, 4, 3, 2, 5, 4]) # ==> [1, 2, 5]

def uniq(array)
  counter = Hash.new(0)

  array.each do |el|
    print counter[el] = counter[el] + 1
  end

  uniques = []
  counter.each do |key, val|
    uniques << key if val == 1
  end
  print counter
  print uniques
end

puts uniq([1, 1, 2, 3, 4, 4, 5])





# Write a method, #greatest_key_by_val(hash) that takes in a hash with any keys but only integers for values, and returns the key with the largest value.

#   greatest_key_by_val({ "a" => 5, "b" => 6, "c" => 3 }) # ==> "b"


# def greatest_key_by_val(hasher)
    
#   hasher.select{ |k,v| v } #=> {:a => 1 }
  
# end

def greatest_key_by_val(hash)
  current_best_val = nil
  current_best_key = nil

  hash.each do |key, val|
    if current_best_val.nil? || val > current_best_val 
      current_best_val = val
      current_best_key = key
    end
  end

  current_best_key
end

puts greatest_key_by_val({ "a" => 5, "b" => 6, "c" => 3 })






