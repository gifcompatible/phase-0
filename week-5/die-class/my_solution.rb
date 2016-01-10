# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.75 hours on this challenge.

# 0. Pseudocode

# Input: an integer
# Output: a die object with a random number of sides
# Steps:
  # define a class Die that takes an integer sides
    # save the integer as an attribute for that instance
    # fails if the number of sides is less than 1

  # define an instance method sides
    # return the number of sides

  # define an instance method roll
    # returns a random number between 1 and the number of sides



# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new "Number of sides must be greater than 1."
    end
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end

d = Die.new(6)
puts "You rolled a #{d.roll}!"


# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
      raise ArgumentError, "Number of sides must be greater than 1." if sides < 1
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end

d = Die.new(20)
puts "You rolled a #{d.roll}!"

# What is an ArgumentError and why would you use one?

# An ArgumentError is an error that comes about when there is an issue with the number of arguments passed.  You would want to use one when the method is called with the wrong number of arguments to basically tell the user that their input is wrong.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# raise.  It was pretty self-explanatory since the example given with how to use it was an ArgumentError, so I didn't actually have any issues using it.  It was super easy to set up and put in a custom string to display when the error is thrown.

# What is a Ruby class?

# It's basically a way to define how objects are made when using a certain bit of code.

# Why would you use a Ruby class?

# To create new objects.

# What is the difference between a local variable and an instance variable?

# A local variable can only be used within the scope of the method, whereas an instance variable can be used across methods.

# Where can an instance variable be used?

# Across different methods rather than just within the method it is defined in.
