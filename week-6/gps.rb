
# Your Names
# 1) Jenna El-Amin
# 2) Mollie Stein

# We spent 1.15 hours on this challenge.

# Bakery Serving Size portion calculator.
=begin
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

=end


#Refactor

#Define a method that takes item_to_make and num_of_ingredients as arguments
def serving_size_calc(item_to_make, num_of_ingredients)
  book = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # unless the item to make is in the book, raise an ArgumentError
  unless book.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Define variables
  serving_size = book[item_to_make] #Use value of book hash as serving size
  remaining_ingredients = num_of_ingredients % serving_size #create new variable so store num of ingredients divided by serving size
  suggested_items = "" #create new variable with an empty string
  leftover_ingredients = 0 #create new variable that sets default value to leftover ingredients

  # if there are no remaining ingredients, return a string confirming the amount to make
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else # iterate over the book hash to see if there are any remaining ingredients, if so evalute which items can be made and return that item with amount to be made
    book.each do |item,num|
      if remaining_ingredients >= num
        suggested_items = item
        leftover_ingredients = remaining_ingredients/book[suggested_items]
      end
    end
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: You can make #{leftover_ingredients} of #{suggested_items}."
  end
end


#Driver Code
# p serving_size_calc("cake", 7)

#Reflection

# What did you learn about making code readable by working on this challenge?

# Readable code isn't necessarily always simpler-sometimes you have to add more to the code to make it more readable.

# Did you learn any new methods? What did you learn about them?

# Not this time.

# What did you learn about accessing data in hashes?

# You can access data in hashes by using the hash name and targeting either the key or the value to iterate on the hash.

# What concepts were solidified when working through this challenge?

# It was tricky before to see why you would have an iterator within an iterator previously, but I think the way we used ours makes a lot of sense.