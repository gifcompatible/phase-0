#Attr Methods

# I worked on this challenge by myself

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_accessor :name

  def initialize
    @name = "Jenna"
  end
end


class Greetings
  attr_accessor :name

  def initialize
    @data = NameData.new
  end

  def hi
    return "Hi, #{@data.name}!"
  end
end

greet = Greetings.new
p greet.hi

# Reflection

# Release 1
# What are these methods doing?
# These methods allow you to change the values of the instance variables.

# How are they modifying or returning the value of instance variables?
# They are modifiying them in a non-destructive way; in other words they are just instances of the variables-the values are still the same as what they were when they were initialized.

# Release 2
# What changed between the last release and this release?
# The method used to get the age instance changed names from what_is_age to .age

# What was replaced?
# The what_is_age method was replaced with an attr_reader reader for :age.

# Is this code simpler than the last?
#Yes.

# Release 3
# What changed between the last release and this release?
# The way age is set-since attr_writer is in the initialize now, we can set the age just by calling the .age method

# What was replaced?
#The change_my_age= method was replaced by the attr_writer :age writer.

# Is this code simpler than the last?
# Yes-since attr_writer :age is a writer, values can be updated using that instead of having to call a separate method.

# Release 6
# What is a reader method?
# It is a method that returns a value outside of the class without changing it

# What is a writer method?
# A method that changes a value outside of the class, but can't be read

# What do the attr methods do for you?
# They allow you to return and change values outside of the class

# Should you always use an accessor to cover your bases? Why or why not?
#No, this can cause debugging issues and security problems.

# What is confusing to you about these methods?
# Trying to visualize what they do "behind the scenes" is a little confusing, but it makes more sense looking at it side by side with the other releases.