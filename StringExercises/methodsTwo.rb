# Write a method #capitalize that accepts a string as an argument and capitalizes the first letter of the string. Note: Do not use the built in method String#capitalize

def capitalize(string) 
  first_letter = string[0].upcase
  remains = string.slice(1..-1)
  return first_letter + remains
end

puts capitalize("hello")

# Make examples
  # capitalize("hello") == "Hello"
# Draw the process
  # "hello"
  # 
# Write it in English
  # Take the first index of the string argument and use the upcase method on it. 
# Define the solution in code



# Write a method, #shout_then_whisper that takes in two strings, and shouts the first part, then whispers the second part. The output should look like this: shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"

def shout_then_whisper(string1, string2) 
  string1 = string1.upcase
  string2 = string2.downcase
  return "#{string1} ... #{string2}"
end
puts shout_then_whisper("Vinny", "Angela")

# Make examples
  # shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"
# Draw the process
  # 
# Write it in english
  # 
# Define the solution in code


# Write a method, #how_long? that accepts a string as an argument. Your method should return a new string in the format: 
# how_long?("I am a sentence :)") == "Your string is 18 characters long"
# how_long?("What") == "Your string is 4 characters long"

def how_long(string)
  string_length = string.length
  return "Your string is #{string_length} characters long"
end
puts how_long("Hello there")



# Write a method, #hyphenify that accepts a string as an argument. Your method should remove all the spaces and replace them with hyphens.

# hyphenify("I am a sentence!") == "I-am-a-sentence!"

def hyphenify(string) 
  return string = string.gsub(/[ ]/, '-')
end
puts hyphenify("This is a string")

