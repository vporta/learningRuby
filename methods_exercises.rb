def say_hello_to(name)
    puts "hello, " + name
end

  say_hello_to("Avi")
  say_hello_to("Rosalie")
  say_hello_to("Ksenija")
  

def print_thrice(string)
  # Your code here
  puts "#{string} #{string} #{string}" 

end

print_thrice("hi")

# # Write a method, #print_thrice_thrice, that also accepts a string as an argument. It should call print_thrice with that string three times (for 9 total prints).


def print_thrice_thrice(string)
  print_thrice("hi")
  print_thrice("hi")
end

print_thrice_thrice("hi")

def add_multiply_subtract(int1, int2)
  sum = int1 + int2
  product = int1 * int2
  difference = int1 - int2
  puts "Sum: #{sum} Product: #{product} Difference: #{difference}"
end
add_multiply_subtract(3, 3)

