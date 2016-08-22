# IN PROGRESS

def bubble_sort(array)
  for i in 1...array.length
    swapped = false
    if array[i] < array[i-1]
      array[i], array[i-1] = array[i-1], array[i]
      swapped = true
    end
  end
end

puts "Sorting [1,5,7,6,3] = #{bubble_sort([1,5,7,6,3])}"
puts "Sorting [19,11,19,13,1,-3] = #{bubble_sort([19,11,19,13,1,-3])}"
