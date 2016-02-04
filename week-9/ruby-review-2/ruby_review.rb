# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
# create a method that takes a string as an argument
  # separate each word
  # save the separated words in an array
  # for each word in the array
    # reverse letters in the word
  # convert the array back into a string


# Initial Solution
def reverse_words(string)
  string_array = string.split(" ")
  words = string_array.each {|word| word.reverse!}.join(" ")
end

# p reverse_words("hello friends I am me")

# Refactored Solution

def reverse_words_refactor(string)
  jumbled_letters = string.split(" ").each {|word| word.reverse!}.join(" ")
end

p reverse_words_refactor("t'nod pots llit uoy teg hguone")

# Reflection

# What concepts did you review in this challenge?
# String methods vs array methods.  I kept thinking I could use .each on a string which is clearly not correct.  I had to remember why strings often need to be converted into arrays before you work with them, and how to access each item within the array.  Also chaining.  Sweet, sweet chaining.

# What is still confusing to you about Ruby?

# Anything with numbers involed-so the math methods, having to calculate things other than just getting simple additions, subtractions, etc. always hurts by brain-but that's mainly because of my allergy to math.

# What are you going to study to get more prepared for Phase 1?

# I'm going to try and go through some challenges that require that a Class be created-I feel like I need more practice with classes.