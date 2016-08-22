# Implement an algorithm to determine if a string has all unique characters.
# What if you can not use additional data structures?

def all_unique?(string)
  without_spaces = string.gsub(' ', '')
  i = 0
  while i < without_spaces.length
    i2 = i + 1
    while i2 < without_spaces.length
      return false if without_spaces[i] == without_spaces[i2]
      i2 += 1
    end
    i += 1
  end
  return true
end

puts all_unique?("hello")
puts all_unique?("hello world")
puts all_unique?("the quick brown fax")
