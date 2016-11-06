# Make examples

# Draw the process

# Write the solution in english

# Translate that solution to code

# Define a method, #two_sum, that accepts an array and a target sum (integer) as arguments. The method should return true if any two integers in the array sum to the target. Otherwise, it should return false. Assume the array will only contain integers.

#  two_sum(array, target)

# 1. Make examples: 
      # two_sum([1, 2, 4], 5) -> true
      # two_sum([1, 2, 4], 7) -> false
      # two_sum([1, 2, 4], 6) -> true

# 2. Draw the process:
      # two_sum(array, target)
      # [1,2,3,4,5], 8 
      # compare 1 -> 2,3,4,5 false   2 -> 3,4,5 false    3 -> 4,5  true

def two_sum(array, target) 
# 3. Write it in english
      #  Start with the first element and sum with every other element.
  idx1 = 0
  while idx1 < array.length - 1 

    #  Increment starting point until starting point is second to last and repeat         comparisons
    idx2 = idx1 + 1

    while idx2 < array.length 

      sum = array[idx1] + array[idx2]

    #  Compare sum to target and return true if equal.
      return true if sum == target

      idx2+=1

    end
    idx1+=1
  end
    #  if no sum is found return false
    return false
end

puts two_sum([1, 2, 4], 5) 
puts two_sum([1, 2, 4], 7) 
puts two_sum([1, 2, 4], 6)
