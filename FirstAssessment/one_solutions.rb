# Long Word Count
# ------------------------------------------------------------------------------
# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2

def long_word_count(text)
  text.split.count do |word|
    word.length > 7
  end
end



# Range Summary
# ------------------------------------------------------------------------------
# Given a sorted array of integers without duplicates, return the start and end
# integers of number ranges found in the array. A number range is considered valid
# when all numbers from start to end are contiguous and only increment by 1.
# Assume all numbers are included as part of a range (no stand alone elements).

def range_summary(array)
  summary = []
  segment = []
  array.each_with_index do |el, idx|
    if segment.empty?
      segment << el
    elsif end_of_range?(idx, array)
      segment << el
      summary << segment
      segment = []
    end
  end
  summary
end

def end_of_range?(idx, array)
  if idx == array.length - 1
    return true 
  else
    array[idx] != array[idx + 1] - 1
  end
end



# Hashtagify
# ------------------------------------------------------------------------------
# Given a sentence string and an array of words, hashtag-ify the words (case-insensitive)
# in the original string and return the updated cool string with hashtags.

def hashtagify(sentence, tags)
  temp = sentence.split

  temp.map! do |word|
    if tags.any? { |tag| 
      word.downcase.include?(tag) 
    }
      "#" + word
    else
      word
    end
  end

  temp.join(" ")
end



# Vigenere Cipher
# ------------------------------------------------------------------------------
# Vigenere's Cipher is a tool for encrypting strings. We'll offset each character
# according to a key sequence. For example, if we encrypt "bananasinpajamas" with the
# key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":
#
# Word:   b a n a n a s i n p a j a m a s
# Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Cipher: c c q b p d t k q q c m b o d t
#
# Note that offsets should wrap around the alphabet - offsetting 'z' by 1 should
# produce 'a'

# Write a method that takes a string and a key-sequence, returning
# the encrypted word. Assume only lower-case letters are used.

# ------------------------------------------------------------------------------

def vigenere_cipher(string, key_sequence)
  result = ""
  string.each_char.with_index do |c, idx|
    key_idx = idx % key_sequence.length
    key = key_sequence[key_idx]
    result << shift(c, key)
  end
  result
end

def shift(c, idx)
  alphabet = ("a".."z").to_a
  offset = (alphabet.index(c) + idx) % alphabet.length
  alphabet[offset]
end
