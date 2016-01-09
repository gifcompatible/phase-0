# Pseudocode

# input: an array of strings (names of people)
# output: an array of arrays
# steps:
 # make an array "people" of the names of all the students in the cohort
 # define a method "group" that takes an array as an argument
 # count the items in the array
 # create an empty array called "groups"
 # group the list of names into equal size arrays
 # save the arrays into the groups array
 # return the array of arrays

# Initial Solution

people = [
"Dong Wook Seo(John)",
"Aaron Hu",
"Adam Pinsky",
"Akeem Street",
"Alex Forger",
"Andrew Kim",
"Baron Kwan",
"Brian Bier",
"Byron Gage",
"Carl Conroy",
"Charlie Bliss",
"Christopher Bunkers",
"Cody Kendall",
"Coline Forde",
"David Valencia",
"Emily Claire Bosakowski",
"Everett Golden",
"Hagai Zwick",
"Heather Conklin",
"Ian Wudarski",
"Ieronim Oltean",
"Jake Hamilton",
"James Boyd",
"Jasmeet Chatrath",
"Jenna El-Amin",
"Jerrie Evans",
"Joe Case",
"Jonathan Case",
"Jonathan Schwartz",
"Jonathan Silvestri",
"Kathryn Garbacz",
"Ian Kinner",
"Kyle Cierzan",
"Kyle Zelman",
"Linda Oanh Ho",
"Yiorgos Makridakis",
"Matt Harris",
"Matthew Baquerizo",
"Menuka Samaranayake",
"Michael Pintar",
"Mollie Stein",
"Lydia Nash",
"Aaron Opsahl",
"Peter Leong",
"Peter Stratoudakis",
"Prince Sadie",
"Ryan F. Salerno",
"Sanderfer Chau",
"Sarah Finken",
"Emmet Susslin",
"Sydney Rossman-Reich",
"Eric Tenza",
"Thomas Yancey",
"Tim Kelly",
"Timothy Beck",
"Tyler Doerschuk"
]

def group(people)
  groups = []
  people.each_slice(4) {|chunk| groups.push(chunk)}
  print groups
end

# puts group(people)

# Refactor

def group(people)
  groups = []
  people.shuffle!
  people.each_slice(4) {|chunk| groups.push(chunk)}
  groups.each_with_index {|group, index| puts "Group #{index+1} is: #{group.join(", ")}."}
  return nil
end

puts group(people)

# puts group(people).map {|group|group.count==4 || group.count == 3}

# Reflect

# What was the most interesting and most difficult part of this challenge?

# Deciding how to go about it-but honestly the mainy annoying thing was getting everyone's names into an array...there wasn't really a good way to grab everyone's names other than copy+paste (at least that I found).

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I definitely think I am-I didn't have to make any changes to my pseudocode this time and was able to easily follow it to write the code line by line.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think so-my initial solution was super simple-it didn't randomize the groups or anything, but it gives you the same groups each time.  My refactor randomizes the groups, however this wouldn't be great if you wanted random groups that were the same week to week-but my thought was it would be good if you wanted random groups every week or so.  I would've liked to have had a method that would somehow keep the random groups...but when I tried to look into that/code it out my brain broke, haha.

# What data structure did you decide to store the accountability groups in and why?

# An array.  I originally was going to use a hash and give everyone a number as values to print out when they got grouped, but that seemed stupid-if I'm looking for my name in a group, I don't want to have to know my number-I just want to find my name.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned how to print out a nice string using interpolation that would give me the group number as well as list the people in the group so I wouldn't have to type out "Group 1 is #this group", "Group 2 is #this othe group" etc. etc.  The new method I learned/used in is shuffle!-it gives a random array each time.  It is destructive, which is what I wanted for this challenge-I didn't want to have to shuffle a bunch of times.