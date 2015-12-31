# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
define a method that accepts an array of strings as an argument
establish a baseline variable to have something to compare other string lengths to
find the length of each string
store the length of each string somewhere
compare one string to another in turn to determine which is shorter
save the length of the shortest string in a value
return the value of the shortest string
=end

#Your Solution Below
def shortest_string(list_of_words)
  shortest = list_of_words[0]
  list_of_words.each do |x|
    if x.length <= shortest.length
    shortest = x
    end
  end
  if list_of_words.empty?
    return nil
  end
return shortest
end

puts shortest_string(["some", "a", "pots"])