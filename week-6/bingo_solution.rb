# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # create a method call
  # generate random letter from the word "bingo" as a string
  # generate a random number from 1-100

# Check the called column for the number called.
  # create a method check
  # call the method call within check to generate the instance variables
  # display a column to the console
  # iterate over the selected column
  # IF the number is in the column, replace the number with an x

# Display the board to the console (prettily)
  # print each array onto a line separate line
  # each line is a different row corresponding to a letter

# Initial Solution

require 'pp'

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def get_column(letter)
    case letter
    when "B"
      @bingo_board[0]
    when "I"
      @bingo_board[1]
    when "N"
      @bingo_board[2]
    when "G"
      @bingo_board[3]
    when "O"
      @bingo_board[4]
    else
      puts "Please enter 'B', 'I', 'N', 'G', or 'O'"
    end
  end

  def check
    call
    p "--------------------"
    p column = get_column(@letter)
    puts "\n"
    column.map! {|number| @number == number ? 'X' : number}
    pp @bingo_board
  end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end

  def get_column(letter)
    case letter
    when "B"
      @bingo_board[0]
    when "I"
      @bingo_board[1]
    when "N"
      @bingo_board[2]
    when "G"
      @bingo_board[3]
    when "O"
      @bingo_board[4]
    else
      puts "Please enter 'B', 'I', 'N', 'G', or 'O'"
    end
  end

  def check
    call
    puts "\n"
    puts "#{@letter}#{@number}"
    p column = get_column(@letter)
    puts "\n"
    column.map! {|number| @number == number ? 'X' : number}
  end

  def pretty
    pp @bingo_board.transpose
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board =  [[47, 44, 71, 8, 88],
         [22, 69, 75, 65, 73],
         [83, 85, 97, 89, 57],
         [25, 31, 96, 68, 51],
         [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
25.times{new_game.check}
new_game.pretty


#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# It wasn't too bad-but ultimately, when I started coding, my pseudocode confused me and there ended up being several things I had in my pseudocode that I didn't end up needing to do.  I like my style-I try to to in blocks/per method/line by line; I try to structure it exactly how the code will look when I write it.

# What are the benefits of using a class for this challenge?

# Using a class for this challenge allows for multiple methods to work seamlessly behind the scenes vs. having to call each method it turn to get a certain output.

# How can you access coordinates in a nested array?

# I assigned each array index within the array to a certain letter, so that it would group the arrays.

# What methods did you use to access and modify the array?

# map, transpose, and pp.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# I learned about transpose in this challenge-it basically takes the contents of the array and flips the x any y positions-so basically the top-right most item becomes the bottom-left most item-in this example, [0][4] becomes [4][0].

# How did you determine what should be an instance variable versus a local variable?

# Trial and error!  I only had one instance variable to start with-@bingo_board, but as I played with the code, it made a lot more sense to also have @letter and @number be instance variables as well, because I needed access to those items in other methods as well.

# What do you feel is most improved in your refactored solution?

# The way the board prints to the console as well as how the check method behaves when called in conjuction with that; in my initial solution, you would see the board printed every time you called check; in my refactor you can call check as many times as you want and only see the board printed once, which seems more appropriate to a "real-world" bingo scenario.