def  hello_world
puts "Hello, world!" end
  

def  hello_world
  puts "Hello, world!" 
end
# ****
def is_prime num
n = 2
while n < num
    if (num%n==0)
      return (false)
    end
    n = n + 1
  end
  return true
end

# ****
def is_prime(num)
  start_num = 2

  while start_num < num
    if num % start_num == 0
      false
    end
    start_num = start_num + 1
  end

  true
end