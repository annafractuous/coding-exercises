require 'pry'

def getCount(inputStr)
  inputStr.downcase.split('').inject(0) do |count, lttr|
    %w{a e i o u}.include?(lttr) ? count + 1 : count
  end
end

puts getCount("abracadabra")
puts getCount("a cat came to you")
