# Write a method, #words_with_a, that accepts an array of strings as an argument. It should return the number of strings that have an 'a' in them.

#   words_with_a(["enumerables", "are", "cake!"]) == 3
#   words_with_a(["this", "is", "a", "string"]) == 1
#   words_with_a(["ruby"]) == 0


def words_with_a(array) 
  counter = 0
  arr = []
  array.each do |x|
    arr << x.count('a')

  end
  arr.reduce(:+)

end

# puts words_with_a(["this", "is", "a", "string"])




# Write a method, #odds, that accepts an array of integers as an argument. It should return an array containing only the odd numbers.

#   odds([1,2,3,4,5,6]) == [1,3,5]
#   odds([2,4,6]) == []

def odds(array)
  i = 0
  arr = []
  while i < array.length
    unless array[i] % 2 == 0 
      p arr << array[i]
    end
    
    i+=1
  end
  arr
  # =====OR=====
  # array.select { |num|  num.odd?  }
end

odds([0, 1, 2, 4, 6])

# Write a method, #triple, that accepts an array of integers as an argument. It should return a new array with every element tripled.

#   triple([1,2,3,4,5,6]) == [3,6,9,12,15,18]

def triple(array)
  array.map { |i| i*3 }
end
puts triple([1,2,3,4,5,6])

# Write a method, #odd_value_and_position, that accepts an array of integers as an argument. It should return a new array of all the elements whose value and position (index) in the original array are odd.




def odd_value_and_position(array)
  i = 0
  arr = []
  while i < array.length
    unless i % 2 == 0 && array[i] % 2 == 0
      arr << array[i]
    end
    i+=1
  end
  arr
end

puts odd_value_and_position([0,1,2,3,4,5]) == [1,3,5]
#   odd_value_and_position([1,2,3,4,5]) == []