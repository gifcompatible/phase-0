# Method to create a list
# input: nothing
# steps:
  # define a method new_list that takes a string as an argument
  # create an empty hash
# output: return an empty hash

def new_list()
  Hash.new(0)
end

my_list = new_list()
puts my_list

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # define a method add_item that accepts a hash, string, and integer
  # add item keys and integer values to a hash
# output: return a hash with string keys and corresponding integer values

def add_item(list, item, quantity)
  list[item] = quantity
end

target = new_list()
add_item(target, "lemonade", 2)
add_item(target, "tomatoes", 3)
add_item(target, "onions", 1)
add_item(target, "ice cream", 4)
puts target

# Method to remove an item from the list
# input: item name and optional quantity
# steps:
 # define a method rm_item that accepts a hash and a string
 # remove item keys and associated integer values from a hash
# output: return a hash minus the string keys and corresponding integer values

def rm_item(list, item)
  list.delete(item)
end

rm_item(target, "lemonade")
puts target

# Method to update the quantity of an item
# input: item name and quantity to be updated
# steps:
  # define a method update that accepts a hash, a string, and a quantity
  # update item values and save them to the corresponding keys
# output: return a hash with updated string keys and corresponding integer values

def update(list, item, quantity)
  list.update({item => quantity})
end

update(target, "ice cream", 1)
puts target

# Method to print a list and make it look pretty
# input: list name
# steps:
  # define a method pretty that accepts a list name
  # list the hash values as a string
# output: return a printed list of each key and its corresponding value as a string

def pretty(list)
 list.each do |item, quantity|
 puts "#{item}: #{quantity}"
end
end

pretty(target)

# What did you learn about pseudocode from working on this challenge?
# It makes a lot more sense now how it should be structured-previously I was pretty confused about how I should go about writing out my pseudocode, but the way that it's structured here makes a lot of sense.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# We went with a hash because it made the most sense to us given that we were working with pairs of items and their quantities-I guess for me it doesn't make sense to use an array for pairs of items-it just seems wrong.  It seems like it wouldnt've taken a lot more work to structure an array for this challenge than by using a hash.
# What does a method return?
# A method returns the last evaluated expression.
# What kind of things can you pass into methods as arguments?
# Other methods, strings, hashes, integers, etc.
# How can you pass information between methods?
# You can pass information from one method to another through a method's arguments.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# return makes a lot more sense to me now, as well as how to structure hashes and add key/value pairs to them.