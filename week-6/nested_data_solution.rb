# Paired for 40 minutes with Andrew Larson, 1:10 with Byron Gage

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[3]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.flatten!.map! {|number| number + 5}
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!.map {|name| name << "ly"}
p startup_names


# What are some general rules you can apply to nested arrays?

# Treat them as individual data structures in terms of accessing them, but like one large data structure when you iterate over them.

# What are some ways you can iterate over nested arrays?

# You can iterate over nested arrays the same way you would iterate over a one-dimensional array-you just have to consider that there are multiple array elements, so it may be best to flatten the array first.  You can also use an iterator inside an iterator-so basically, you can do something like each and then do another iterator like kind_of? inside of that.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# We re-used ones we were familiar with-namely flatten and map.  For release 3 and the bonus release 4, we realized that the easiest way to modify the arrays would be to first flatten them to make it a one-dimensional array, and then we could map the block to the array to update all the values.