// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var me = "Jenna";
console.log(me);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = "#"; triangle.length < 8; triangle += "#")
  console.log(triangle);


// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1 < num2)
    return num1;
    else
      return num2;
}

console.log(min(0, 10));
console.log(min(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Jenna",
  age: 24,
  favoriteFoods: ["cheese", "sushi", "bagels"],
  quirk: "Brony"
};
console.log(me.name);
console.log(me.age);
console.log(me.favoriteFoods);
console.log(me.quirk);