# U2.W6: Testing Assert Statements

# I worked on this challenge with Brian Bier.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# method is created
#   within the body of the method, an error message is defined
#   if the statement is false, raise the error

#  the first time the assert method is called, it passes a block testing what name is equal to
  # if the string that is being tested is equal to the string assigned to name, it will return nil
  # if the string that is being tested is not equal to the string assigned to name, it will raise the assertion, returning the error message


# 3. Copy your selected challenge here
class Die

  def initialize(sides) # creates the object
   unless sides > 1
      raise ArgumentError.new("That argument is less than 1")
   else
     @sides = sides
    end
  end


  def sides # produce the input number
    @sides
  end

  def roll # p random number; random method goes here
    rand(1..@sides)
  end
end

side = Die.new(4) # Die is name of class

p side.inspect # not working with this method because it's just producing an object id
p side.sides
p side.roll


# 4. Convert your driver test code from that challenge into Assert Statements
assert{ side.sides == 4}
# assert{ side.sides == 8}
sides = side.roll
assert{ side.roll == sides }
# assert{ side.roll == side.roll }




# 5. Reflection
# What concepts did you review in this challenge?
# How to assign variables. That was pretty much it since this was a new concept.

# What is still confusing to you about Ruby?

# I'm happy to say that not much still confuses me about Ruby at this point.  Coming back to reviewing Ruby after working with JavaScript for a few weeks is so nice-it reads just like English!  There are some times that I do question whether or not something needs to take arguments-like it seems like it could or couldn't and be fine.  That can get tricky.

# What are you going to study to get more prepared for Phase 1?

# Iterating over all the things.  Also best practices of when to use if/else vs case/when.  I'm partial to case/when, but I know that not every situation is great for using it over if/else.