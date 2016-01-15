# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jonathan Silvestri.
# I spent 3.25 hours on this challenge.

=begin
input: 16 digit integer
output: return a true or false value when check_card method is called
steps:
  -create a class CreditCard
  -initialize a method that takes a an array card_number as an argument
    -create an instance variable card_number and set it equal to card_number
    -create a method check_card

  -Starting with the second to last digit, double every other digit until you reach the first digit.
    -convert the array into a string
    -split the array into individual pieces
    -reverse the array
    -select every other number in the array
    -multiply the selected numbers by 2 and store the modified values in an array
    - set an array instance variable equal to the unused numbers

  -Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
    -separate the numbers that were doubled into individual integers where necessary
    -update the array that they were saved in
    -combine the arrays
    -get the sum of all the values in the combined arrays
    -set an instance variable equal to the sum of the combined arrays

  -If the total is a multiple of ten, you have received a valid credit card number!
    -IF the value is divisble by ten, return true
    -ELSE return false
=end



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError, "That is not a valid 16-digit credit card number." if @card_number.to_s.length != 16
  end

  def check_card
    @untouched_numbers = @card_number.to_s.split("").reverse.each_slice(2).map(&:first).map{|x| x.to_i}
    @doubled_numbers = @card_number.to_s.split("").reverse.each_slice(2).map(&:last).map{|x| x.to_i}.collect{|x| x * 2}
    @doubled_numbers = @doubled_numbers.join('').split(//).map{|x|x.to_i}
    @combined_numbers = @doubled_numbers.concat(@untouched_numbers)
    @combined_numbers = @combined_numbers.inject{|sum, element| sum + element}.to_i
    if @combined_numbers.to_i % 10 == 0
      return true
    else
      return false
    end
  end
end

#driver code
# my_card = CreditCard.new(4563960122001999)
# p my_card.check_card


# Refactored Solution

class CreditCard

  def initialize(card_number)
    @card_number = card_number
    raise ArgumentError, "That is not a valid 16-digit credit card number." if @card_number.to_s.length != 16
  end

  def check_card
    @untouched_numbers = @card_number.to_s.split("").reverse.each_slice(2).map(&:first).map{|element| element.to_i}

    @numbers_to_double = @card_number.to_s.split("").reverse.each_slice(2).map(&:last)
    @doubled_numbers = @numbers_to_double.map{|element| element.to_i}.collect{|element| element * 2}
    @split_numbers = @doubled_numbers.join('').split(//).map{|element| element.to_i}

    @combined_numbers = @split_numbers.concat(@untouched_numbers)
    @sum = @combined_numbers.inject{|sum, element| sum + element}

    return true if @sum % 10 == 0
    return false if @sum % 10 != 0
  end
end

#driver code
# my_card = CreditCard.new(4408041234567906)
# p my_card.check_card







# Reflection
# What was the most difficult part of this challenge for you and your pair?

# Honestly writing the pseudocode for the "Starting with the second to last digit, double every other digit until you reach the first digit." step was pretty tough-and then when we got to that code block we got stuck on a few of the steps we'd written in terms of figuring out which method would work for us.  In the end, we had it print out each method at a time before adding another method so we could see what wasn't working.

# What new methods did you find to help you when you refactored?

# We didn't end up using any new methods for the refactor because we didn't really find any that would do what we needed to do without needing to make major changes to the code that made it less DRY.

# What concepts or learnings were you able to solidify in this challenge?

# We learned a lot about split and how that works-what it's looking for and how it splits things.  We also learned all about what you can and can't do with strings when working with an long string that looks like a bunch of integers and how to make that a bunch of individual integers...