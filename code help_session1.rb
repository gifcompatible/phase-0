# my_name = "Jenna"
# puts my_name
# def test_method
#   test_name = "Andrew"
#   puts test_name
# end
# test_method
# puts test_name

# farm_animals = ['cow', 'goat', 'dog', 'chicken']

# farm_animals.each do |bob|
#   puts bob
# end


# a = [ "a", "b", "c" ]
# a.push("d", "e", "f")
# p a

my_array = [1,2,'all', 32, 'the', 'words']



#1. create a method that takes my_array as an arguement and returns an array of arrays, with the first element being an array of integers and the 2nd an array of strings
#2. [[1,2,32], ['all', 'the', 'words']]
# http://ruby-doc.org/core-2.2.0/Array.html#method-i-push
def twod_array(array)
  integer_array = []
  string_array = []
  array.each do |element|
    if element.is_a? Integer
      integer_array.push(element)
    elsif element.is_a? String
      string_array.push(element)
    end
  end
  # integer_array.concat(string_array)
  new_array = [integer_array, string_array]
end

# p twod_array(my_array)

def while_approach(array)
  integer_array = []
  string_array = []
  while array.empty?
    element = array.pop
    if element.is_a? Integer
      integer_array.push(element)
    elsif element.is_a? String
      string_array.push(element)
    end
  end
  # integer_array.concat(string_array)
  new_array = [integer_array, string_array]

end

# p while_approach(my_array)

# http://ruby-doc.org/core-2.2.0/Array.html#method-i-any-3F
# p [].empty?
# p [1,2,3].empty?

# def pad(array, min, val=nil)
#   container=[]

#   array.each do |element|
#     container.push(element)
#   end

# until container.size == min
#   container << val
#   end

#   container
# end
# my_array = [1,2,3]
# p pad(my_array, 5, 'apples')
# puts "------------------------\nTHIS IS MY ARRAY NOW\n----------------"
# p my_array







# def pad(array, min_size, value = nil) #non-destructive
#   solution_array = Array.new
#   array.each do |x|
#     solution_array << x
#   end
#   if min_size <= array.length
#     return solution_array
#   elsif min_size > array.length
#     times_to_pad = min_size - array.length
#     times_to_pad.times do
#       solution_array << value
#     end
#   end
#   return solution_array
# end

# def example(argument)
#   argument.each do |x|
# end

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

def funtorial(numbe)r
  total_multiplication = number

  until number == 1
    oneless = number - 1
    total_multiplication *= oneless
    number -= 1
  end

  total_multiplication
end




puts funtorial(5)