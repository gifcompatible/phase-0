# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: returns a random string
# Steps:
  # define a class Die that takes an array labels
    # save the array as an attribute for that instance
    # failes if the array is empty
  # define an instance method sides
    # return the number of sides
    # count the number of items in the array
  # define an instance method roll
    # returns a random string


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = sides
      raise ArgumentError, "No input was given." if labels == []
  end

  def sides
    @sides
    return @labels.count
  end

  def roll
    rand(@sides) + 1
    @labels.sample
  end
end

d = Die.new(['p'])
# puts "Here is your new string: #{d.roll}"
# puts "Number of sides: #{d.sides}."


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
      raise ArgumentError, "No input was given." if labels == []
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end

d = Die.new(['p', 'e', 'z'])
# puts "Here is your new string: #{d.roll}"
# puts "Number of sides: #{d.sides}."






# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# There weren't really any differences other than obviously changing the code blocks in the sides and roll methods.  Nope, just made a few changes in the initialization in the class, tweaked the argument error message, etc.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# It's really easy to make classes and methods that work for similar situations without having to put in a ton of extra work.

# What new methods did you learn when working on this challenge, if any?

# I didn't learn any new methods.

# What concepts about classes were you able to solidify in this challenge?

# Initialization and instance methods-I learned from office hours that I only need to define one instance method when initializing, and additionally don't need to call my instance method within another instance method to get it to show up when I call the method on a new instance of the class.