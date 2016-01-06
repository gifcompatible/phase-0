# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Kathryn Garbacz]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of integers or strings
# What is the output? (i.e. What should the code return?) an array of the most frequent values (even if there is only one)
# What are the steps needed to solve the problem?
# define a method called mode that takes an array as its argument
# create an empty hash
# iterate through the input array
 # for each value in the array, IF the value doesn't exist in the hash, add it to the hash
 # IF it does, increase the value by one
# set max equal to 0
# iterate through the hash to find the maximum
# select the keys that correspond the maximum
# return the most frequent keys



# 1. Initial Solution
def mode(array)
  freq = Hash.new
  array.each do |x|
    if freq[x].nil?
      freq[x] = 1
    elsif freq[x] >= 1
      freq[x] += 1
    end
  end
  max = 0
  freq.each do |x, y|
    if y != nil && y >= max
      max = y
    end
  end
  most = freq.select {|x, y| y == max}
  most.keys
end

puts mode([1, 2, 3, 3])

# 3. Refactored Solution
def mode(array)
  freq = Hash.new
  array.each do |x|
    if freq[x].nil?
      freq[x] = 1
    elsif freq[x] >= 1
      freq[x] += 1
    end
  end
  max = freq.values.max
  most = freq.select {|x, y| y == max}
  most.keys
end

puts mode([4.5, 0, 0])


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We used a hash-we wanted to correlate each item in the array (key) with a frequency (value) to make it easy to access the frequencies later.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Yeah, this challenge was a lot easier to pseudocode-we only had to make one revision after all was said and done.

# What issues/successes did you run into when translating your pseudocode to code?
# We at first couldn't figure out how to get the mode to return correctly-it kept coming out as a hash.  We realized that we needed to select out the frequencies first.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#.each .max .values and .keys.  Yes, we originally tried to use .max_by, which seemed to only return one value when there could be multiples.  The other methods were pretty easy to implement.