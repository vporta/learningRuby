# Number Exercises

# Write a method, #division_plus_remainder, that accepts two integers, big_int and small_int, as arguments. Your method should find the number of times small_int completely divides into big_int, and then add the remainder that's left over. For example, divisor_plus_remainder(7, 2) should equal 4.

# Write a method #divide_two_places, that accepts two floats, big_float and small_float, as arguments. Your method should divide big_float / small_float and round to two decimal places.

# Test your order of operations knowledge! You don't need to write any code here! Use pry to test your answer. Solve this expression:

#   5 + 3 * 3 ** 2 + ( 9 - 2 ** 2 ) ** 2


#division_plus_remainder
# make examples
# (big_int, small_int)
# (6, 3) -> 2
# (10, 3) -> 4
# (23, 5) -> 7

# draw it out 
# 5/23 = 4 
# 5 % 23 = 3 
#  4 + 3 = 7

# write the solution in english 
# first set variables for quotient
# second set variable for modulo answer
# finally sum the quotient and modulo answer
require 'byebug'

def division_plus_remainder(big_int, small_int)

  # first set variables for quotient
  quotient = big_int/small_int
  
  # second set variable for modulo answer
  mod = big_int % small_int

  # return the sum of the quotient and modulo answer
  return mod + quotient

end

puts division_plus_remainder(23, 5)



#divide_two_places
# make examples
# (big_float, small_float)
# (6.2, 3.4) -> 1.82
# (10.4, 3.5) -> 2.97
# (23.8, 5.1) -> 4.67

# draw it out 
# idx = big_float / small_float  
# return idx.round(2)

# write in english
# first set variable for quotient of two args
# second return rounded to 2 decimal places

def divide_two_places(big_float, small_float)

  # first set variable for quotient of two args
  idx = big_float / small_float
  
  # second return rounded to 2 decimal places
  return idx.round(2)

end

puts divide_two_places(6.2, 3.4)
puts divide_two_places(10.4, 3.5)
puts divide_two_places(23.8, 5.1)


return 5 + 3 * 3 ** 2 + ( 9 - 2 ** 2 ) ** 2

# steps PEMDAS
# 1. 2 ** 2
# 2. 9 - 2 ** 2 
# 3. 9 - 2 ** 2 ** 2
# 4. 3 ** 2
# 5. 3 * (9 - 2 ** 2 ** 2 3 ** 2)
# 6. 5 + (3 * 9 - 2 ** 2 ** 2 3 ** 2)
