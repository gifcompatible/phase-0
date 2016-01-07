# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Pseudocode

# input: an array and a letter
# output: a new array of the words containing the letter
# steps:
  # define method array my_array_finding_method that takes an array and letter as arguments
  # iterate through the array to select all words that include the letter
  # return the words containing the letter as a new array

# Person 1's solution
def my_array_finding_method(array, letter)
  array.select {|word| word.to_s.include? letter}
end

puts my_array_finding_method(["I", "want", 3, "pets", "but", "only", "have", 2], "o")

# Pseudocode

# input: a hash and a number
# output: a new array of pet names matching the age
# steps:
  # define a method my_hash_finding_method that takes a hash and a number as arguments
  # find the pet names that have the specified age
  # return the names of the pets (keys) that have that age (value)

def my_hash_finding_method(hash, number)
  hash.select {|key, value| value == number}.keys
end

print my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
# .select : this method returns a new array that contains all of the elements for which the given block returns true
# .include? : this method will return true for every element that includes the specified string or character
# .keys : this method returns a new array populated with the keys from the hash

# Release 2: Teach Others:
# To use .select: pass a block to the select method to tell it what do select for, and boom you have a winner!
# To use .include? : give this method a variable to see if the object includes the variable (evaluates to true).
# To use .keys : this is a hash method used to return the keys for each value in the hash, or if you chain it with another method (like I did with select), it will give a specific subset of keys.
# Ruby docs tips: I'm a big fan of using command+F and searching for key words rather than clicking on individual methods-for example, if I need something that will return a new array, I will search for "new array", if I need something that works by adding the elements of an array, I will search for "add" or "combine" etc. etc.  That really helped when there were too many (seemingly) fitting methods to look through.

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#