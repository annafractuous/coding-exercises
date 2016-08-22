# Design an algorithm and write code to remove the duplicate characters in a string without using any additional buffer.
# Note: One or two additional variables are fine. An extra copy of the array is not.

def remove_duplicate_chars(string)
  unique_chars = []
  i = 0
  while i < string.length
    unless string[i] == ' '
      unique_chars.include?(string[i]) ? string[i] = '' : unique_chars << string[i]
    end
    i += 1
  end
  string
end

puts remove_duplicate_chars("hello")
puts remove_duplicate_chars("hello world")
puts remove_duplicate_chars("the quick brown fox")
