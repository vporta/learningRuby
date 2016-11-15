[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

a = %w{ a b c d e f }
a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]


puts case a
when 1..5
  "It's between 1 and 5"
when 6
  "It's 6"
when String
  "You passed a string"
else
  "You gave me #{a} -- I have no idea what to do with that."
end