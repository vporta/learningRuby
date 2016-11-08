# def sum_odds(n)
  # i = 0
  # sum = 0

  # while i <= n
  #   sum += i if i.odd?
  #   i += 1
  # end

  # sum
# end


# Write a while loop that prints out all the numbers from 1 to 25 inclusive.


# i = 1

# while i <= 25
#   puts i 
#   i+=1
# end


# Write an until loop that prints out all of the numbers that are less than 20 and are not divisible by 6.


# i = 1

# until i > 20 
#   unless i % 6 == 0 
#     puts i
#   else 
#     puts ' '
#   end
#   i+=1
# end


# Write a method, #sum_up_to(number) that, given a number, sums all the numbers from 1 to that number, inclusive. It should use a while loop internally.

# sum_up_to(3) 1 + 2 + 3 = 6
# sum_up_to(4) 1 + 2 + 3 + 4 = 10

def sum_up_to(number)
  
  i = 0
  sum = 0

  while i <= number
   
    sum+=i  
    i+=1
  end

 return sum

end

puts sum_up_to(3) 

