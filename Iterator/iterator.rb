# Define a method, #print_10, that prints the numbers 1 - 10. Do this two different ways:

# Using Range#each
# Using #upto

def print_10
  (1..10).each { |n| p n }
end
# print_10

def upto 
  1.upto(10) do |x|
    p x
  end
end
# upto

# Define a method, #string_squared(string), that prints the string the number of times that it has characters.

#   string_squared('abc')   # ==> prints "abc" 3 times
#   string_squared('hello') # ==> prints "hello" 5 times

def string_squared(string)
  length = string.length
  length.times do |x|
    puts "#{string}, #{length} times"
  end
end
# string_squared('abc')

# Define a method, #collect_thirds(array), that iterates through an array and collects every third element. Do this in two different ways:


# def collect_thirds(array)
#   array.select.with_index do |x, idx|  
#    (idx + 1) % 3 == 0
#   end
# end

def collect_thirds(array)
  len = array.length 

  (2...len).step(3) do |v|
    p array[v]
  end
end

puts collect_thirds([3, 4, 5, 7, 6, 4, 2])

# array.select.with_index
# #step
#   collect_thirds([3, 4])                      # ==> []
#   collect_thirds([3, 4, 5, 7, 6, 4, 2])       # ==> [5, 4]
#   collect_thirds([3, 4, 5, 7, 6, 4, 2, 1, 1]) # ==> [5, 4, 1]





