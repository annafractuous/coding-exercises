require 'pry'

# rotate a one-dimensional vector of n elements left by i position
# for example:
# vector = [a, b, c, d, e, f, g, h]
# n = 8
# i = 3
# vector[i] = d

# input: abcdefg
# desired output: defghabc

# time 1
# [b, c, d, e, g, h, a]

# time 2
# [c, d, e, g, h, a, b]

def rotate(array, i)
  i.times { array << array.shift }
  array
end

puts rotate(%w{a b c d e f g h}, 3).to_s
#=> ["d", "e", "f", "g", "h", "a", "b", "c"]

puts rotate(%w{a b c d e f g h}, 6).to_s
#=> ["g", "h", "a", "b", "c", "d", "e", "f"]
