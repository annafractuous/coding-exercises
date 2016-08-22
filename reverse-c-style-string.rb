# Write code to reverse a C-Style String.
# (C-String means that “abcd” is represented as five characters, including the null character.)

def reverse_c_string(string)
  reversed_string = ""
  i = string.length - 2
  while i >= 0
    reversed_string = reversed_string + string[i]
    i -= 1
  end
  reversed_string
end

puts reverse_c_string('abcdx')
puts reverse_c_string('hello worldx')
puts reverse_c_string('the quick brown foxx')
