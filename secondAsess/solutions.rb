# Least Common Multiple
# ------------------------------------------------------------------------------
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
  possible_multiple = [a, b].max

  loop do
    if possible_multiple % a == 0 && possible_multiple % b == 0
      return possible_multiple
    end
    possible_multiple += 1
  end
end



# Calculate
# ------------------------------------------------------------------------------
# Define a method, #calculate, that accepts two arguments: a starting value and an
# array of commands. The method should preform the specified commands and return the
# final value. An example of commands might look like:

# [["+", 3], ["/",4 ], ['-', 10], ["*", 6]]

# Note that this is an array of arrays, where the first element is the operation to perform,
# and the second argument is the value to use in the operation. You only need to account
# for the 4 basic operations: +, -, *, and /

# ex: calculate(3, ["*", 5]) ==> 3 * 5 == 15
# ex: calculate(2, ["+", 2], ["/",4 ]) ==> (2 + 2) / 4 == 1

def do_math(operand, val1, val2)
  case operand
  when "+"
    val1 + val2
  when "-"
    val1 - val2
  when "*"
    val1 * val2
  when "/"
    val1 / val2
  end
end

def calculate(starting_value, operations)
  operations.inject(starting_value) do |accum, operation|
    operand, val2 = operation # parallel assignment -- x, y = [1, 2]
    do_math(operand, accum, val2)
  end
end



# Pet Types
# ------------------------------------------------------------------------------
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
  result = Hash.new{[]}
  owners_hash.each do |owner, pets|
    pets.each do |pet|
      result[pet] += [owner]
    end
  end
  result.each { |k, v| v.sort! }
end



# Repeated Chars
# ------------------------------------------------------------------------------
# Define a method, #repeated_chars, that accepts a string as an argument. The method
# should return an array of all the characters that appear multiple times consecutively.
# If a single character is repeated on separate occasions, in should be included
# multiple times in the result.

# repeated_chars("mississippi") => ["s, s, p"]

def repeated_chars(word)
  result = []
  idx = 0

  until idx == word.length
    if word[idx] == word[idx + 1]
      result << word[idx]
      until end_of_sequence?(word, idx)
        idx += 1
      end
    end
    idx += 1
  end

  result
end

def end_of_sequence?(str, idx)
  return false if idx == 0
  str[idx] != str[idx + 1] && str[idx] == str[idx - 1]
end
