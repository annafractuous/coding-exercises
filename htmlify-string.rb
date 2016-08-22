# Write a method to replace all spaces in a string with ‘%20’

def htmlify(string)
  # string.split('').map { |char| char == ' ' ? '%20' : char }.join('')
  string_length = string.size
  string_length.times do
    char = string.slice!(0,1)
    char = '%20' if char === ' '
    string = string + char
  end
  string
end

puts htmlify("Hi my name is Anna")
puts htmlify("I want some coffee")
