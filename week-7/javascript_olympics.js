// JavaScript Olympics

// I paired with Peter Leong on this challenge.

// This challenge took me 1 hours.


// Bulk Up
function winner(array){
  for(var x = 0; x < array.length; x++)
    array[x].win = array[x].name + " won the " + array[x].event + "!";
}
// Driver Code
var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies' Singles"
}
var athlete2 = {
 name: "John Doe",
 event: "Marathon"
}
var array = [athlete1, athlete2]
winner(array)
console.log(array[0].win);


// Jumble your words
function flip(string){
  return string.split('').reverse().join('');
}

// Driver code
console.log(flip("!sdrow ruoy elbmuJ"))


// 2,4,6,8
function getEven(array) {
  var evens = [];
  for(var x = 0; x < array.length; x++)
    if (array[x] % 2 === 0) {
      evens.push(array[x]);
    }
  return evens;
}

// Driver code
var someNums = [1, 15, 3, 4, 9, 18]
console.log(getEven(someNums))

"We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// Driver code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// I now know that hashes are "associative arrays" in JavaScript.

// What are constructor functions?

// A constructor is basically like a class in Javascript-you can use a constructor to build a bunch of objects that have the same characteristics.

// How are constructors different from Ruby classes (in your research)?

// JavaScript does not allow attributes access to be able to change and set, but Ruby does.  Other than that they are pretty similar.