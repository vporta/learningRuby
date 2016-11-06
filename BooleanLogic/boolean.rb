# The truthiness of an object will come into play when using logical operators as well:

#     true && nil   # ==> nil
#     true && "abc" # ==> 'abc'
#     5 && "abc"     # ==> 'abc'

#     true || nil   # ==> true
#     nil || false  # ==> false
#     "abc" || nil  # ==> "abc"
#     5 || "abc"    # ==> 5
# Try these in pry! Note that the && operator returns the last truthy value if both values are truthy, and the first falsey value if either element is falsey. The || operator will return the first truthy value if either value is true, or the first falsey value if both values are false.

# Define a method, odd_integer?, that accepts an integer, n, as an argument. Your method should return true or false based on whether n is odd or even. Do not use the built in #odd? method. Instead, think about how you could use the modulo operator, %, to determine whether an integer is odd or even.

  # odd_integer?(5) # ==> true
  # odd_integer?(6) # ==> false

def odd_integer(n)
  if n % 2 == 0 || n == 0
    return false
  else 
    return true
  end
end

puts odd_integer(3)



# Define a method, before_tarantula?, that accepts a string as an argument. The method should return true if the argument comes before the word "tarantula" alphabetically.

#   before_tarantula?("baboon") # ==> true
#   before_tarantula?("tarantula") # ==> false
#   before_tarantula?("yak") # ==> false


def before_tarantula(string)
  string = string.downcase
  word = 'tarantula'

    if cstring[0] != 'a'
      return false
    elsif string == 'tarantula'
      return false
    else
      return true
    end
  end

end

before_tarantula('dwwcw')
