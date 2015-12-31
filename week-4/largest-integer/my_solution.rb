# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin
create largest integer method that taskes an array of integers as a paramater
start with a baseline variable to have something to compare to
look at each item in the array and determine if it is larger than the item being compared
return the largest integer in the array
=end

def largest_integer(list_of_nums)
  largest = list_of_nums[0]
  list_of_nums.each do |x|
    if x >= largest
      largest = x
    end
    end
  if list_of_nums.nil?
    return nil
  end
  return largest
end

puts largest_integer([9000, 4, 0])