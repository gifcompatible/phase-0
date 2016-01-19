// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// input: number
// output :  A number which is separated wth commas
// steps:
  // define a function that takes a number as its argument
  // convert the number into a string.
  // 3.Separate the number into the small numbers that put it together.
  // 4.Create an empty array.
  // 5.Iterate over the array
  // 6.Count backwards
  // 7.Enter the sub-string into a new array
  // 8.Count the sub-string.
  // 9.Create IF term, if the array index[0], in the start of the array Do - add  comma
  // 10.Add all the sub-array into a one big array.
  // 11.Return the final string number with commas.


// Initial Solution
function addCommas(integer) {
   var i = integer.toString().split("");
   var count = i.length;
   var piece = count%3;
   var commas = [];
   do {
     var eachThree = i.splice(-3);
     piece -= 1;
     var commasAdded = eachThree.unshift(",");
     commas = eachThree.concat(commas);
     return commas.join(addCommas(integer));
   } while (piece > 0)

   return i;
 }
// driver code
console.log(addCommas(8000001));



// Refactored Solution
function addCommas(integer) {
var commas = [];
commas.push(",");
}

console.log(addCommas(8000001));

// Your Own Tests (OPTIONAL)




// Reflection