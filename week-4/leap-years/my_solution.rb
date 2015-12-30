# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

=begin
create a method that will accept a year as an argument
RETURN true IF the year is divisible by 4 and 400
RETURN false IF the year is not divisible by 100
RETURN false IF the year is divisible by 4 and 100 but not 400
RETURN false IF the year is not divisible by 4
=end

def leap_year?(year)
  if year % 4 == 0 && year % 100 !=0
    return true
  elsif year % 400 == 0
    return true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 != 0
    return false
  end
end

leap_year?(2673)
