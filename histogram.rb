class Histogram
  attr_accessor :bucket_range, :buckets, :title

  def initialize(bucket_range, title)
    @bucket_range = bucket_range
    @title = title.split(' ').map { |word| word.capitalize }.join(' ')
    @buckets = Hash.new(0)
  end

  def add(value)
    unless value == 0
      if value % bucket_range == 0
        bucket = (value / bucket_range) - 1
      else
        bucket = value / bucket_range
      end
      first_value = (bucket_range * bucket) + 1
      second_value = first_value + bucket_range - 1
      range = "[#{first_value}-#{second_value}]"
      buckets[range] += 1
    end
    self
  end

  def print
    puts title
    puts "=" * title.size

    buckets.each do |range, num|
      puts "#{range}  #{'*' * num}"
    end
  end

end

h = Histogram.new(5, "number of chipotle burritos per day")
h.add(0).add(1).add(2).add(3).add(5).add(6).add(7).add(8)
h.add(12).add(13).add(25).add(27).add(28).add(0).add(29)

# raise h.inspect

h.print

=begin
 expected output
 Number Of Chipotle Burritos Per Day
 ===================================

 [1-5]   ****
 [6-10]  ***
 [11-15] **
 [21-25] *
 [26-30] ***

 Requirements
 Bucket size for the histogram is determined upon initialization
 Zero is not an allowed value to be added
 Adding new values should be chainable
 The printing of the title should be proper titlecase
 The max bucket should be the last value on graph, with sequentially buckets until the bucket i.e [1-5].

  Extra Credit
  The formatting of the graph should be aligned so that there is 1 space from the FURTHEREST bucket name i.e. [26-30] and the row value
  Placeholder buckets should exist up to the max allowed bucket


 Formatting hint
 to get an aligned graph use the printf method
 printf(string) -> %s-CHAR_LENGTHs %s\n, value1, value2
 #=> printf( "%-20s %s\n", "name", "michael verdi" )
=end
