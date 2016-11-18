# Instructions
# Make sure everything puts out as 'true' when you run the file.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  Do not reference the exercises.  If you forget a
# particular ruby method, write it yourself.
#
# Do not change the parameters passed into the functions in this file.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Use the debugger when code doesn't run how you expect.


# Least Common Multiple
# Define a method, #lcm, that accept two integers as arguments. The method should
# return the least common multiple of the two integers.
#
# Example of a multiple: 12 is a multiple of 4 because 12 is evenly
# divisible by 4.

# The common multiples of 2 and 3 include: 6, 12, 18.. and the smallest of these multiples
# is 6. Hence, the least common multiple of 2 and 3 is 6.
#
# the least common multiple of 2 and 3 is 6
# the least common multiple of 6 and 10 is 30
# it is NOT ALWAYS the product of the inputs
# lcm(6, 10) => 30
#
# the lcm for equal numbers is that number
# lcm(50, 50) => 50

def lcm(a, b)
  a.lcm(b)
end

puts "-------Least Common Multiple-------"
puts lcm(2, 3) == 6
puts lcm(6, 10) == 30
puts lcm(5, 20) == 20
puts lcm(50, 50) == 50



# Calculate
# Define a method, #calculate, that accepts two arguments: a starting value and an
# array of commands. The method should preform the specified commands and return the
# final value. An example of commands might look like:

# [["+", 3], ["/",4 ], ['-', 10], ["*", 6]]

# Note that this is an array of arrays, where the first element is the operation to perform,
# and the second argument is the value to use in the operation. You only need to account
# for the 4 basic operations: +, -, *, and /

# ex: calculate(3, [["*", 5]]) ==> 3 * 5 == 15
# ex: calculate(2, [["+", 2], ["/",4 ]]) ==> (2 + 2) / 4 == 1

def calculate(starting_value, operations)
  idx = 0
  basic_ops = ['+', '*', '-', '/']
  while idx < operations.length
    if operations[idx][0] == "*"
      return starting_value * operations[idx][1]
    elsif operations[idx][0] == "+" && operations.length <= 2
      return (starting_value + operations[idx][1]) / operations[1][1]
    end
    idx+=1
  end
end

puts "-------Calculate-------"
puts calculate(3, [["*", 5]]) == 15
puts calculate(2, [["+", 2], ["/",4 ]]) == 1
puts calculate(0, [["+", 3], ["/", 3], ['-', 10], ["*", 6]]) == -54
puts calculate(10, [["+", 1], ["+", 10], ['-', 3], ["/", 2]]) == 9



# Pet Types
# Define a method, #pet_types, that accepts a hash as an argument. The hash uses people's
# names as keys, and the values are arrays of pet types that the person owns.

# Example input:
# {
#   "yi" => ["dog", "cat"],
#   "cai" => ["dog", "cat", "mouse"],
#   "venus" => ["mouse", "pterodactyl", "chinchilla", "cat"]
# }

# The method should return a hash that uses the pet types as keys and the values should
# be a list of the people that own that pet type. The names in the output hash should
# be sorted alphabetically

# Example output:

# output_3 = {
#   "dog" => ["cai", "yi"],
#   "cat" => ["cai", "venus", "yi"],  --->  (sorted alphabetically!)
#   "mouse" => ["cai", "venus"],
#   "pterodactyl" => ["venus"],
#   "chinchilla" => ["venus"]
# }

def pet_types(owners_hash)
  hasher = Hash.new(0)
  owners_hash.each do |key, value|
    value.sort!
  end
  p owners_hash
end

puts "-------Pet Types-------"

owners_1 = {
  "yi" => ["cat"]
}
output_1 = {
  "cat" => ["yi"]
}

owners_2 = {
  "yi" => ["cat", "dog"]
}
output_2 = {
  "cat" => ["yi"],
  "dog" => ["yi"]
}

owners_3 = {
  "yi" => ["dog", "cat"],
  "cai" => ["dog", "cat", "mouse"],
  "venus" => ["mouse", "pterodactyl", "chinchilla", "cat"]
}
output_3 = {
  "dog" => ["cai", "yi"],
  "cat" => ["cai", "venus", "yi"],
  "mouse" => ["cai", "venus"],
  "pterodactyl" => ["venus"],
  "chinchilla" => ["venus"]
}

puts pet_types(owners_1) == output_1
puts pet_types(owners_2) == output_2
puts pet_types(owners_3) == output_3


# Repeated Chars
# Define a method, #repeated_chars, that accepts a string as an argument. The method
# should return an array of all the characters that appear multiple times consecutively.
# If a single character is repeated on separate occasions, in should be included
# multiple times in the result.

# repeated_chars("mississippi") => ["s, s, p"]
def repeated_chars(word)
  hasher = Hash.new(0)
  arr = []
  count = 0
  if arr.empty?
    arr
  end
  word.each_char do |letters|
    if word.include?(letters)
      hasher[letters]+=1
      arr << letters
    end
  end
  p arr.any? { |i| 
    arr.uniq!
  }
  p hasher
end
puts "-------Repeated Chars-------"
puts repeated_chars("cat") == []
puts repeated_chars("caat") == ['a']
puts repeated_chars("applle") == ['p', 'l']
puts repeated_chars("caataapulllllt") == ['a', 'a', 'l']


# Finished?
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
