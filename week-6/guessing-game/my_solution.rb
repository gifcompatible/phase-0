# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer called guess
# Output:
  # for GuessingGame#guess:
    # the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer
  #for GuessingGame#solved:
    # a boolean value true or false depending on if the most recent guess was correct or incorrect
# Steps:
  # define a class Guessing Game that takes an integer answer
    # save the answer as an attribute for that instance
    # set solved equal to false for that instance
  # define an instance method guess that takes an integer guess
    # return :high IF guess is greater than answer
    # return :low IF guess is lower than answer
    # return :correct IF guess is equal to answer
      # set solved equal to true
  # define an instance method solved
    # return true IF solved is equal to true

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      return :high
    elsif guess < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    @solved
  end
end

# my_game = GuessingGame.new(10)
# p my_game.guess(10)
# p my_game.solved?
# p my_game.guess(5)
# p my_game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    guess > @answer || guess < @answer ? @solved = false : @solved = true
    guess > @answer ? :high : guess < @answer ? :low : :correct
  end

  def solved?
    @solved
  end
end

# my_game = GuessingGame.new(10)
# p my_game.guess(10)
#  p my_game.solved?
# p my_game.guess(5)
# p my_game.solved?


# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?


# When should you use instance variables? What do they do for you?

# Instance variables should be used when you want to be able to refer to a variable across methods-so when you are going to have to use a variable over and over, it's best to use an instance variable.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control will look at different situations and do something depending on the code block you pass in.  I did struggle a little bit as far as figuring out what to do with the true/false values for @solved, but in the end after some tinkering and help in office hours, I got it working.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

#The value of a symbol is constant, in other words its object id doesn't change, whereas if we returned a string, it would be a different object id each time.  Since we wanted the symbols to be the return values to be the same each time the method is called on the class, it makes more sense to use symbols.