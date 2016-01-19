// Pseudocode
// input: an array of integers
// output: three separate integer or string values: 1. the sum of the integers, 2. the mean of the integers, and 3. the median of the integers
// steps:
  // create a function called sum that takes the array as an argument
    // add all of the integers together
    // save the total as a variable total
    // return the total
  // create a function called mean that takes the array as an argument
    // invoke the sum function
    // create a variable count that is equal to the length of the array
    // divide the total from the sum function by count
    // save the result as a variable result
    // return result
  // create a function called median that takes the array as an argument
    // iterate over the array
    // sort the integers from lowest to highest
    // save the new array in variable called sorted
    // create a variable count is equal to the length of the array
    // create a variable middle that is equal to sorted divided by 2
    // return middle