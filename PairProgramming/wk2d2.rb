# Pizza Slices
# ----------------------------------------
# You are cutting a gigantic pizza. Given the circumference of the pizza
# and the length of the crust of each slice, return the exact number
# (i.e. potentially including a partial slice up to three decimal places)
# of slices you can cut from that pizza.

def pizza_slices(circumference, crust_length)
  return (circumference.to_f / crust_length).round(3)
end

puts "---------Pizza Slices----------"
puts pizza_slices(100, 3) == 33.333
puts pizza_slices(30, 4) == 7.5
puts pizza_slices(5000, 135) == 37.037



# ----------------- Switch Roles!



# String Sum
# ----------------------------------------
# Write a method, #string_sum, that accepts a string as an argument and returns
# the sum of the characters of that string. ie: a --> 1, b--> 2 .. z --> 26.
# Assume you have an input of only lower-case characters. You may want to define
# a helper method! (hint hint)

def string_sum(string)
  string = string.downcase
  sum = 0
  string.each_char do |char|
    sum+=convert(char)
  end
  sum
end

def convert(ch)
  alphabet = ("a".."z").to_a
  i = 0

  while i < alphabet.length
    return (i+1) if alphabet[i] == ch
    i+=1
  end
end
puts "---------String Sum----------"
puts string_sum("pizza") == 78
puts string_sum("bagel") == 27
puts string_sum("smoothie") == 104


# ----------------- Read the solutions!
