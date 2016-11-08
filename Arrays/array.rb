require 'byebug'


  # array = ["banana", "blueberry", "mango", "apple"]
  # idx = 0

  # while idx < array.length
  #   puts array[idx]
  #   idx += 1
  # end

  # [1, 2, 3].each { |el| ... }
  # [1, 2, 3].each_index { |idx| ... }
  # [1, 2, 3].each_with_index { |el, idx| ... }

  # Creating a string of arrays shortcut
  #  words = %w(apple banana carrot zucchini)
    # p words  # ==> ["apple", "banana", "carrot", "zucchini"]


    # Write a method, #first_n_evens(n) that returns an array of the first n even numbers, starting from 0.

    #   first_n_evens(1) # ==> [0]
    #   first_n_evens(3) # ==> [0, 2, 4]
    #   first_n_evens(6) # ==> [0, 2, 4, 6, 8, 10]



def first_n_evens(n)
  arr = [0]
  i = 1
  ps = 0

  while i < n

    i+=1
    arr << ps+=2

  end

  return arr
end

first_n_evens(3)


# Write a method, #reverse(array) that reverses an array in-place; don't create any new arrays, and don't use array.reverse!

#   reverse([1])          # ==> [1]
#   reverse([1, 2])       # ==> [2, 1]
#   reverse([4, 5, 6, 7]) # ==> [7, 6, 5, 4]


def reverse(array)

  array.sort!                    
  array.sort! { |x,y| y <=> x }
  
end

reverse([4, 5, 6, 7])


# Write a method, #rotate(array, shift) that, given an array and an integer (shift), rotates the array in-place by the shift amount.

# Hint: some combination of #shift/#push or #unshift/#pop should come in handy here.
#   rotate([1, 2, 3, 4], 1)  # ==> [4, 1, 2, 3]
#   rotate([1, 2], 2)        # ==> [1, 2]
#   rotate([4, 5, 6, 7], 3)  # ==> [5, 6, 7, 4]



def rotate(array, shift) 

  move = array.pop(shift)

  array.unshift(move)

  p array.flatten

end

rotate([4, 5, 6, 7], 3)



# Write a method, #all_uniqs(array1, array2) that, given two arrays, produces a new array of only elements unique to array1 and elements unique to array2. Don't worry about the order of the elements in the output array.

#   all_uniqs([1, 2, 3], [1, 2, 4]) # ==> [3, 4]
#   all_uniqs([1, 2, 7], [1, 3, 8]) # ==> [2, 7, 3, 8]





