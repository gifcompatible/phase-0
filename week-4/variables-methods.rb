#full name greeting
puts 'What is your first name?'
first_name=gets.chomp
puts 'And your middle name?'
middle_name=gets.chomp
puts 'Finally, your last name?'
last_name=gets.chomp
puts 'Nice to meet you, ' + first_name +' '+ middle_name +' '+ last_name + '.'

#bigger, better favorite number
puts 'What is your favorite number?'
number=gets.chomp
number=number.to_i
number2 = number + 1
puts 'Would you rather your favorite number be bigger and better, like ' + number2.to_s + '?'

#formatted address
https://github.com/gifcompatible/phase-0/tree/master/week-4/address
#math methods
https://github.com/gifcompatible/phase-0/tree/master/week-4/math

=begin
How do you define a local variable?
  The the name of the variable, and set it equal to a value.  Example:
  my_variable = avalue

How do you define a method?
  Name the method, give it some optional paramaters to look for, and close it.  Like so:
  def name_of_method(some, paramaters)
    body of method
    end

What is the difference between a local variable and a method?
Local variables are variables inside of a method.  A method is "global", meaning that you can call it throughout your program to be able to use it.

How do you run a ruby program from the command line?
  Type "ruby", the name of the program including the extension, hit enter.  Example:
  ruby my_program.rb [hit enter at this point to run it]

How do you run an RSpec file from the command line?
  Type "rspec", the name of the rspec file including the extension, hit enter.  Example:
  rspec fake_file_spec.rb [hit enter at this point to run it]

What was confusing about this material? What made sense?
I got stuck on how to add the variables to the output strings-that is what took me the longest.  How to define a method made sense, as well as why we run tests, and puts things to the screen to make sure they return what we expect.
=end