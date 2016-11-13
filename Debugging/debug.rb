require "byebug"

# c / continue
# n / next 
# s / step (one line down, next step of indented code)
# up (goes up a step)
# display 
# exit


def is_palindrome?(word)
  idx = 0
  # debugger
  while idx < word.length / 2
    start_letter = word[idx]
    end_letter = word[word.length - 1 - idx]

    if start_letter != end_letter
      return false
    end

    idx += 1
  end

  true
end

sample_word = "detartrated"
puts is_palindrome?(sample_word)
