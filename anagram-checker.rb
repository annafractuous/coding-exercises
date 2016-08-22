# Write a method to decide if two strings are anagrams or not.

def is_anagram?(string1, string2)
  string1 = string1.tr(' ', '')
  string2 = string2.tr(' ', '')

  return false if string1.size != string2.size

  string1_chars = string1.split('').sort
  string2_chars = string2.split('').sort

  string1_chars == string2_chars
end

puts is_anagram?("face", "cafe")
puts is_anagram?("tom marvolo riddle", "i am lord voldemort")
puts is_anagram?("geek", "greek")
