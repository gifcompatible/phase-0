# Factorial

# I worked on this challenge [with: Linda Oanh Ho].
=begin
PSEUDOCODE
Define method called factorial
IF number is 0 return 1
IF numer is 1 return 1
Take some number and multiply it by itself minus 1 until it reaches 1 or 0
=end

# Your Solution Below
def factorial(number)
  if number <= 1
    return 1
  end
sum = 1
number.times do |x|
  sum = (x + 1) * sum
end
return sum
end

puts factorial(10)



