# Define a method, #alphabet_slice(range), that accepts a range of integers as an argument. Use the range to slice a string of characters representing the alphabet. Remember, the String#slice method can accept a range as an argument!

#   alphabet_slice((0..3))  # ==> "abcd"
#   alphabet_slice((0...3)) # ==> "abc"
#   alphabet_slice((0..25)) # ==> "abcdefghijklmnopqrstuvwxyz"

def alphabet_slice(range)
   
  alphabet = ("a".."z").to_a

  p result = alphabet.slice(range).join("")
end

alphabet_slice((0..25))


# Define a method, #alphabet_without(array), that accepts an array of letters as an argument. Your method should return an array of all the characters in the alphabet, but exclude the characters in the input array.

#   alphabet_without(["a"])      # ==> b - z in array
#   alphabet_without(["a", "z"]) # ==> b - y in array
# what I need to do is check to see which letters are in the argument array first. Then I need to reference those letters in the array to remove them from the alphabet array. Last return the alphabet array.

require 'byebug'
def alphabet_without(array)
  alphabet = ("a".."z").to_a.join("")
  new_array = []
  i = 0 
  j = 0

    while j < array.length

      # debugger
      alphabet = alphabet.delete(array[j])

      j+=1
    end
  p alphabet
end

alphabet_without(["a", "z"])


# Define a method, #evens_below(integer), that accepts an integer as an argument. Your method should return an array of all the even numbers (starting at 0) that are less than (but not equal to) the integer argument.

#   evens_below(6)  # ==> [0, 2, 4]
#   evens_below(9)  # ==> [0, 2, 4, 6, 8]

def evens_below(integer)
  integer = integer - 1
  array = []
  integer.downto(0) do |i|
    if i % 2 == 0
      array << i
    end
  end 
  p array
end

# evens_below(9)



# Define a method, #to_range(array) that, given an array of integers, constructs a range covering the span of integers in the array argument.

#   to_range([1, 8, 11, 5, 6])  # ==> (1..11)
#   to_range([6, 15, 2, 12])    # ==> (2..15)



def to_arrange(array)

  max = array.max
  min = array.min 

  p "(#{min}..#{max})"
end

to_arrange([1, 8, 11, 5, 6])








