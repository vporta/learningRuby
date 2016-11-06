def times_three_and_plus_five(n)
  n = n * 3
  return n + 5
end

answer = times_three_and_plus_five(5)
puts answer

# Write a method called #even_or_odd, that accepts an integer as an argument. Your method should return the string "even" if the integer is even, and return "odd" if the integer is odd. Follow the pattern used in the #is_billy? method from the reading. Also, use the #even? and #odd? methods we explored in the previous step.

def even_or_odd(int)
  if int.even? 
    return "even"
  else
    return "odd"
  end
end

answer = even_or_odd(3)
puts answer

def set_a
    a = 10
end

a = 7
set_a

puts a