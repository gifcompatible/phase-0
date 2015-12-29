# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true do
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#The input ended unexpedtedly, instead of the word end.
# 5. Where is the error in the code?
#The arrow is pointing to the end of the input on line 170, after the period.
# 6. Why did the interpreter give you this error?
#This error is happening because the original version of the code on lines 13-16 (now 13-17) had incorrect syntax for the while loop.  I have since corrected it so the program would run.

# --- error -------------------------------------------------------

#south_park="lulz"

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
#It is an undefined local variable or method.
# 4. Where is the error in the code?
#There is nothing following south_park.
# 5. Why did the interpreter give you this error?
#The variable/method is undefined, so the program doesn't know how to interpret it.

# --- error -------------------------------------------------------

#def cartman(height, weight)
#end

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#The method is undefined.
# 4. Where is the error in the code?
#The method is not correctly defined, there is no def, body, end.
# 5. Why did the interpreter give you this error?
#This is not the correct way to define a method.

# --- error -------------------------------------------------------

#def cartmans_phrase(phrase)
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#67
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#The number of arguments the method is expecting is wrong.
# 4. Where is the error in the code?
#Line 71, after cartmans_phrase.
# 5. Why did the interpreter give you this error?
#When the method was defined it was not given parameters for arguments to expect.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says("F**k everyone!")

# 1. What is the line number where the error occurs?
#86
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#The number of arguments passed through the method is wrong, it expected 1 and got 0.
# 4. Where is the error in the code?
#Line 90, after cartman_says
# 5. Why did the interpreter give you this error?
#There were no arguments passed through the method when it was called, when it was expecting 1.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Bob')

# 1. What is the line number where the error occurs?
#107
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#The wrong number of arguments were given, it expected 2 and got 1.
# 4. Where is the error in the code?
#Line 111, after the first parameter.
# 5. Why did the interpreter give you this error?
#When the method is called on line 111, the name parameter was not passed through.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#126
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#The string can't be coerced into a number.
# 4. Where is the error in the code?
#The object following the *, the string.
# 5. Why did the interpreter give you this error?
#5 doesn't know how to multiply itself "Respect my authoritay" times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#141
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#It's trying to divide by zero.
# 4. Where is the error in the code?
#After /.
# 5. Why did the interpreter give you this error?
#You can't divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#157
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#It is not able to load the cartmans_essay.md file.
# 4. Where is the error in the code?
#After require_relative.
# 5. Why did the interpreter give you this error?
#The file doesn't exist in my local directory, so it's not able to load it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The error on line 141.
How did you figure out what the issue with the error was?
The additional information provided helped because it laid it out, but it didn't have the error section out like with the other errors.
Were you able to determine why each error message happened based on the code?
Yep!
When you encounter errors in your future code, what process will you follow to help you debug?
I will probably do something similar to this challenge, minus commenting out the code.  This seems like a good way to go through errors without just "flailing [my] way to glory".
=end