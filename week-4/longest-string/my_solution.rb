# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
define a method that accepts an array of strings as an argument
establish a baseline variable to have something to compare other string lengths to
find the length of each string
store the length of each string somewhere
compare one string to another in turn to determine which is longer
save the length of the longest string in a value
return the value of the longest string
=end

# Your Solution Below
def longest_string(list_of_words)
  longest = list_of_words[0]
  list_of_words.each do |x|
    if x.length >= longest.length
    longest = x
    end
  end
  if list_of_words.empty?
    return nil
  end
return longest
end

puts longest_string(["pinkie", "me", "serendipity"])