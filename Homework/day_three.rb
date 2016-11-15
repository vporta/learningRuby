w# You have 100 cats.
#
# Your rules are simple: 

# 1. whenever you visit a cat, you toggle it's hat status (if it
# already has a hat, you remove it.. if it does not have a hat, you put one on).

# 2. All of the cats start hat-less. You cycle through 100 rounds of visiting cats.

# 3. In the 1st round, you visit every cat. In the second round, you visit every other cat.

# 4. In the nth round, you visit every nth cat.. until the 100th round, in which you only visit the 100th cat.

# 5. At the end of 100 rounds, which cats have hats?

def cats_in_hats
  # your code here
  cats = Hash.new(100) # Create new hash with 100 new key value pairs

  100.times { |i| cats[i] = "hat-less" } # Set k:v pairs to i:'hat-less'

  100.times { |x| # Loop through 100 times... (x starts at 0, ends at 99)
    i = 0         # Initialize iterator for nested loop
    while i < cats.length  # While iterator < hash length (so 100 times through)
      if cats[i + x] == "hat-less"  # Swap values
        cats[i + x] = "hat"   
      elsif cats[i + x] == "hat"    # Swap values
        cats[i + x] = "hat-less"
      end
      i += 1      # Iterate iterator
    end
  }

  p cats.select { |k,v| v == "hat" }

end

cats_in_hats
puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
