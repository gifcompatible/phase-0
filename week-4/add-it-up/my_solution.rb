# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Linda Oanh Ho].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of integers
# Output: Sum total of all the array indices
# Steps to solve the problem.
=begin
define method total accepting an array of integers as an argument
take each index of the array and add them together
return the sum
=end
# 1. total initial solution
def total(array)
  sum = 0
  array.each do |x|
  sum += x
  end
  return sum
end

total([1, 5, 7])

# 3. total refactored solution
def total(array)
  array.inject do |sum, x| sum + x end
end

total([4, 3, 6])

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:an array of strings
# Output: a single string sentence, with the first word capitalized and the sentence ending in a period
# Steps to solve the problem.
=begin
define method sentence_maker accepting an array of strings as an argument
take each index of the array and add them together including a space in between strings
capitalize the first letter of the single string
return the single string ended with a period
=end
# 5. sentence_maker initial solution
def sentence_maker(array)
  sentence = ""
  array.each do |x|
    sentence += x.to_s + " "
  end
  return sentence.capitalize.chop + "."
end

puts sentence_maker(["here", "are", "some", "words"])

# 6. sentence_maker refactored solution
def sentence_maker(array)
  sentence = array.join(" ")
  return sentence.capitalize + "."
end

puts sentence_maker(["here", "are", "some", "words"])