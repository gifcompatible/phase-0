// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Hagai Zwick/Andrew Larson.

// Pseudocode

// input: an integer
// output: a comma-separated integer
// steps:
  // define a function that takes a number as its argument
    // convert the number into a string
    // split the string into substrings
    // get the length of the array and save it in a variable
  // IF the length of the array is less than 4, return the integer
  // set a variable equal to the function that calculates number of commas to add
  // create an empty array
    // iterate over the array
    // for a variable:
      // if it is less than or equal to the number of commas to add, go to the next variable until it equals the numbers of commas
      // separate the array into separate arrays
        // until the array has added all the commas it should add, add a comma to the front of the array
        // add the sub-arrays into the empty array
        // return the new array as a string



// Initial Solution
function addCommas(integer) {
   var splitInt = integer.toString().split("");
   var intLength = splitInt.length;

    if (intLength < 4 ){
      return integer;
    }

   var numCommas = commaCalculator(intLength);
   var intSubstr = [];

 for(var x = 0; x <= numCommas; x++) {
    var eachSet = splitInt.splice(-3);
   if (x !== numCommas){
    var commasAdded = eachSet.unshift(",");
   }
    intSubstr = eachSet.concat(intSubstr);
   }
  return intSubstr.join('');
 }

 function commaCalculator(integer){
  return Math.ceil((integer / 3) - 1)
}


//driver code
console.log(addCommas(8000001));
console.log(addCommas(123456));


// Refactored Solution
//keep it as a string, use string methods
function addCommas(integer) {
   var splitInt = integer.toString().split("");
   var intLength = splitInt.length;

    if (intLength < 4 ) {
      return integer;
    }

   var numCommas = commaCalculator(intLength);
   var intSubstr = new String();

 for(var x = 0; x <= numCommas; x++) {
    var eachSet = splitInt.splice(-3);
    var eachString = eachSet.toString().replace(",", "");
    // console.log(eachString);
   if (x !== numCommas){
    var commasAdded = ",";
    commasAdded = "," + eachString;
   }
    intSubstr = eachString.concat(intSubstr);
   }
  return intSubstr;
 }

 function commaCalculator(integer){
  return Math.ceil((integer / 3) - 1)
}

// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Hard.  I'm not a big fan of JavaScript-it's a lot more confusing that Ruby.  I did approach it differently, yes.

// What did you learn about iterating over arrays in JavaScript?

// Best practices of when to use a for loop vs a while loop.

// What was different about solving this problem in JavaScript?

// There was a lot more to do since JavaScript doesn't have all the nice methods that Ruby does-a lot of things have to be done/calculated manually.

// What built-in methods did you find to incorporate in your refactored solution?

// I couldn't find any that seemed like they would work better than what I used in my initial solution-I tried to use only string methods in the refactor, but couldn't figure out how to get it to work the same way.