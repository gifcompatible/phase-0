# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin
create smallest integer method that taskes an array of integers as a paramater
start with a baseline variable to have something to compare to
look at each item in the array and determine if it is smaller than the item being compared
return the smallest integer in the array
=end

# Your Solution Below
def smallest_integer(list_of_nums)
  smallest = list_of_nums[0]
  list_of_nums.each do |x|
    if x <= smallest
      smallest = x
    end
    end
  if list_of_nums.nil?
    return nil
  end
  return smallest
end

puts smallest_integer([5, -25, -10])