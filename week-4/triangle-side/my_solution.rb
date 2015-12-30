# I worked on this challenge [with: Tyler Doerschuk].


# Your Solution Below

def valid_triangle?(a, b, c)
  sum = (a + b + c) / 2.0
  valid = (sum - a) * (sum - b) * (sum - c)
  if ((a == b) && (a == c))
    return true
  elsif valid <= 0
    return false
  else ((a == b) && (a != c) && (b != c))
    return true
  end
end
valid_triangle?(1, 1, 100)