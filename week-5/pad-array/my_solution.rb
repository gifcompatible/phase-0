# Pad an Array

# I worked on this challenge [with: Emily Bosakowski]

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, an integer (minimum size), value (what the array should be padded with to fill the minimum size)
# What is the output? (i.e. What should the code return?)
# An array
# What are the steps needed to solve the problem?

# create a variable set to a new array
# iterate through the array and add the values to the new array
# IF the minimum size is less than or equal to the length of the array, it should just return the array
# when the minimum size is great than the length of the array, save the value to a variable that is equal to minimum size minus the length of the array
# take the result and add that many value objects to the end of the array
# when the pad method is called, return a new object
# when the pad! method is called, overwrite the original object

# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if min_size <= array.length
    return array
  elsif min_size > array.length
    solution_array = array
    times_to_pad = min_size - array.length
    times_to_pad.times do
      solution_array << value
    end
    return solution_array
  end
end

def pad(array, min_size, value = nil)
  solution_array = Array.new
  array.each do |x|
    solution_array << x
  end
  if min_size <= array.length
    return solution_array
  elsif min_size > array.length
    times_to_pad = min_size - array.length
    times_to_pad.times do
      solution_array << value
    end
  end
  return solution_array
end

puts pad!([1,2,3], 4,"apple")
puts pad([5,6,7], 2, "book")
puts pad([6,4,3], 6, "tea")
puts pad!([1,2],1, "four")

# 3. Refactored Solution
def pad(array, min_size, value = nil)
  solution_array = array.clone
  if min_size <= array.length
    return solution_array
  elsif min_size > array.length
    times_to_pad = min_size - array.length
    times_to_pad.times do
      solution_array << value
    end
  end
  return solution_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# I think so-there were points at which we weren't sure what else we'd need and got stuck in pseudocoding, so we moved on.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# It was pretty easy-there were some steps that we didn't think of until after we ran the tests.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Nope!  Our non-destructive solution was desctructive, so once we moved that up and then added the "solution_array=Array.new" a lot more tests passed.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# .clone is great for creating a new object which has a new object id-originally we were failing the tests because our new array had the same object id as the original array-we fixed this by iterating over it and saving the values to a new array, but it was nice to know there is a method to do that.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it is pretty readable, but that was after some re-wording for clarity.  I guess it we'll find out when peer reviews go down!!  We did try to choose descriptive variables, yes.  I think they are self-explanatory.

# What is the difference between destructive and non-destructive methods in your own words?
# From my understanding, a destructive variable overwrites the original object in place, whereas a non-destructive method will update it but treat it as a new object while the original object can still be accessed.