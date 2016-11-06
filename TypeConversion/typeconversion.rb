# Define a method, #two_digit_sum, that accepts a two-digit integer as an argument. Your method should return the sum of the two digits.
# Make examples
  #  two_digit_sum(34) == 7 # ==> 3 + 4 == 7
# Draw the process

# Write the solution in english
  # take two digits, split them? loop through them, then convert to integers. Next, add them.
# Write it in code

def two_digit_sum(nums)
  if nums.integer?
    string = nums.to_s.split(//)
    return string[0].to_i + string[1].to_i
  else
    print "Please pass a valid two-digit argument"
  end
  return

end
# two_digit_sum(52)


# Define a method, #orders_of_magnitude, that accepts an integer as an argument. Your method should return the number of digits in the integer.
# Make examples
#   orders_of_magnitude(99) == 2
#   orders_of_magnitude(1034) == 4

# Draw the process

def orders_of_magnitude(int)
  if int.integer?
    # add regex express to remove decimals or commas
    to_arr = int.to_s.split(//)
    return to_arr.length   
  else
    return "#{int}, please provide a valid integer"
  end
end

orders_of_magnitude(43567)





# Define a method, #accurate_division, that accepts two integers as arguments. Your method should return the quotient of the two integers (rounding to 3 decimal places).
# Make examples
  # accurate_division(3, 4) == 0.75
  # accurate_division(1, 3) == 0.333
  # accurate_division(7, 6) == 1.167

def accurate_division(int, int_two)
  int = int.to_f
  int_two = int_two
  q = int / int_two
  return q.round(3)
end
puts accurate_division(3, 4)




# Define a method, #two_digit_format, that accepts an integer, n, and returns a string version of that integer. If the integer has a single digit, you should append a 0. You can assume that n will always be two or fewer digits. Hint: try creating a string using '0' + n.to_s, then use #slice to get the last two digits!

# Make examples
  # two_digit_format(8) == "08"
  # two_digit_format(12) == "12"

# Draw the process
  
# Write it in english
  # must take a digit and convert it to a string. 

def two_digit_format(n)

  arr = n.to_s.split(//)
    
    if arr.length == 0
      return '0' + arr[0]
    elsif arr.length >=3
      return
    else
      return n.to_i
    end

end

puts two_digit_format(2)


# def two_digit_format(n)
#   string_number = '0' + n.to_s
#   string_number[-2, 2]
# end

# Define a method, #time_string that accepts 3 arguments: hours, minutes, and seconds (all integers). Convert these integers into one contiguous time string that has the following format:

#   "hh:mm:ss"
# Use the method, #two_digit_format, to help you do this!
# Make examples
#   time_string(12, 1, 3) == "12:01:03"
#   time_string(1, 10, 6) == "01:10:06"

# draw the process

def time_string(h, m, s)
  n = []
  n[0] = h
  n[1] = m 
  n[2] = s
  
    # all greater than 
  if n[0] >= 10 && n[1] >= 10 && n[2] >= 10
    return "#{n[0]}:#{n[1]}:#{n[2]}"

  # less, greater, greater
  elsif n[0] < 10 && n[1] >= 10 && n[2] >= 10
    return "0#{n[0]}:#{n[1]}:#{n[2]}"

  # less, less, greater
  elsif n[0] < 10 && n[1] < 10 && n[2] >= 10
    return "0#{n[0]}:0#{n[1]}:#{n[2]}"

    # all less than
  elsif n[0] < 10 && n[1] < 10 && n[2] < 10
    return "0#{n[0]}:0#{n[1]}:0#{n[2]}"

  # greater, less, less 
  elsif n[0] >= 10 && n[1] < 10 && n[2] < 10
    return "#{n[0]}:0#{n[1]}:0#{n[2]}"

  # greater, greater, less 
  elsif n[0] >= 10 && n[1] >= 10 && n[2] < 10
    return "#{n[0]}:#{n[1]}:0#{n[2]}"

  # greater, less, greater 
  elsif n[0] >= 10 && n[1] < 10 && n[2] >= 10
    return "#{n[0]}:0#{n[1]}:#{n[2]}"

  # less, greater, less
  elsif n[0] < 10 && n[1] >= 10 && n[2] < 10
    return "0#{n[0]}:#{n[1]}:0#{n[2]}"

  else 
    return "Enter a positive integer" 
  end
end

puts time_string(10, 1, 38)


# def time_string(h, m, s)

#   hour_string = two_digit_format(hours)
#   minute_string = two_digit_format(minutes)
#   second_string = two_digit_format(seconds)

#   "#{hour_string}:#{minute_string}:#{second_string}"
  
# end

# puts time_string(10, 1, 38)



