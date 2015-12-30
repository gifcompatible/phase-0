# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below

=begin
create a method that accepts an address as a single string
RETURN "Welcome to California" if the address is in CA, or "You should move to California" if not
=end

def welcome(address)
  if address.include? "CA"
    return "Welcome to California"
  else
    return "You should move to California"
  end
end

welcome("4116 Garrett Dr W, Columbus OH 43214")