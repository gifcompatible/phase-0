# Numbers to Commas Solo Challenge

# I spent [5.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) a comma-separated integer as a string
# What are the steps needed to solve the problem?
 # define a method separate_comma that takes one integer as an argument
 # convert the integer into a string
 # split the string into substrings
 # count the the substrings
 # take the number of substrings and divide them by three
 # create a new variable commas and set it equal to an empty array
 # iterate through the substrings
  # WHILE the number of substrings are greater than zero, return an array of every 3 items
  # do this until there are no substrings left
  # move each substring to the front of the array
  # add a comma following each substring
  # updatd commas to be equal to the commas array plus the substrings arrays
  # puts the combined arrays out to the console as a string
 # set a variable result equal to the remaining integer plus the commas array
  # IF the index of the array is a comma, delete the comma
 # return the string


# 1. Initial Solution
def separate_comma(integer)
  x = integer.to_s.split("")
  length = x.count
  chunks = length / 3 #how many chunks

commas = Array.new

while chunks > 0 do
  every3 = x.pop(3)
  chunks -= 1
  every3.unshift(",")
  commas = every3 + commas
  puts commas.join
end
result = (x + commas)
  if result[0] == ","
    result.delete_at(0)
  end
  return result.join
end

# print separate_comma(100_000_000)

# 2. Refactored Solution

def separate_comma(integer)
  tempstring = integer.to_s.split("").reverse
  commas = []

  tempstring.each_slice(3) {|chunk| commas.push(",", chunk)}

  if commas[0] == ","
    commas.delete_at(0)
  end
     return commas.join.reverse
end

puts "__________"
print separate_comma(90_000_000_000)



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I knew I needed to have a comma before every third zero from the right...so I started there.  At first I thought about using case/when to address the various tests in the rspec, but realized that my program wouldn't work for anything outside of that, so I scrapped that idea and knew I would need to at least convert the integer into an array of individual substrings.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yes and no-there were several things I did not consider until I got into my code, and vice verse-there were several things I didn't need but didn't realize  until I got into my code.  All in all-my pseudocode kind of misled me on this one-I ended up writing and re-writing it in between code blocks.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

#each_slice is pretty darn awesome, but I realized that I would need to make some modifications to some of my other code blocks to make it work that seemed a bit more confusing to me than how I set up my initial solution.  I had a lot of trouble getting the commas to be in the right places, but I actually revisted this challenged after doing the accountability groups challenge, and using the method I made on that challenge as a template, I was able to get it figured out!!  HUZZAH FOR BREAKTHROUGHS!!

# How did you initially iterate through the data structure?

# I tried a lot of different iteration methods before I got "while" to work-I started with "each", but quickly realized that would not apply to what I wanted to do because "each" would look at each item in the array when I wanted to look at groups of items.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Definitely.  When I look at my initial solution, I see what it'd doing, but it's pretty complicated and there are pieces I didn't end up using (length) there-the refactor just makes so much more sense!!