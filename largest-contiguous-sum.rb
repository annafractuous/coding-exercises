# find the largest sum of a continguous subarray in an array of numbers

def largest_contiguous_sum(array)
  greatest_sum = 0
  current_sum = 0
  array.each do |num|
    if num > 0
      current_sum += num
    else
      greatest_sum = current_sum if current_sum > greatest_sum
      current_sum = 0
    end
  end
  greatest_sum
end

puts largest_contiguous_sum([1, -2, 3, 4, -7, -1, 5])
