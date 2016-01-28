// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Charlie Bliss
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Test 1-4
// For every element of the object votes
//   iterate through every element of that sub-object
//   for every element of that sub-object
//   use the name as the keys to the objects in votecount
//   use the number of times they appear as the values in the objects in votecount

// Test 5-8
// For every element of the object voteCount
//  Assign the key with the highest value to the value of that element of the object officers

// __________________________________________
// Initial Solution

var president_array = []
var vice_president_array = []
var treasurer_array = []
var secretary_array = []

for (var voter in votes) {
  if (!votes.hasOwnProperty(voter)) continue;
    var obj = votes[voter];
    for (var prop in obj) {
      if (prop == 'president') {
       president_array.push(obj.president);}
      }
  }

for (var voter in votes) {
  if (!votes.hasOwnProperty(voter)) continue;
    var obj = votes[voter];
    for (var prop in obj) {
      if (prop == 'vicePresident') {
       vice_president_array.push(obj.vicePresident);}
      }
  }

for (var voter in votes) {
  if (!votes.hasOwnProperty(voter)) continue;
    var obj = votes[voter];
    for (var prop in obj) {
      if (prop == 'treasurer') {
       treasurer_array.push(obj.treasurer);}
      }
  }

for (var voter in votes) {
  if (!votes.hasOwnProperty(voter)) continue;
    var obj = votes[voter];
    for (var prop in obj) {
      if (prop == 'secretary') {
       secretary_array.push(obj.secretary);}
      }
}

//Presidential Counter

var p_counts = {};

for(var i = 0; i< president_array.length; i++) {
    var num = president_array[i];
    p_counts[num] = p_counts[num] ? p_counts[num]+1 : 1;
}

for (var name of president_array){
  voteCount.president[name] = p_counts[name];
}

//Vice Pres Counter

var vp_counts = {};

for(var i = 0; i< vice_president_array.length; i++) {
    var num = vice_president_array[i];
    vp_counts[num] = vp_counts[num] ? vp_counts[num]+1 : 1;
}

for (var name of vice_president_array){
  voteCount.vicePresident[name] = vp_counts[name];
}

//Secretary Counter

var s_counts = {};

for(var i = 0; i< secretary_array.length; i++) {
    var num = secretary_array[i];
    s_counts[num] = s_counts[num] ? s_counts[num]+1 : 1;
}

for (var name of secretary_array){
  voteCount.secretary[name] = s_counts[name];
}

// Treasurer Counter

var t_counts = {};

for(var i = 0; i< treasurer_array.length; i++) {
    var num = treasurer_array[i];
    t_counts[num] = t_counts[num] ? t_counts[num]+1 : 1;
}

for (var name of treasurer_array){
  voteCount.treasurer[name] = t_counts[name];
}

console.log(voteCount.president)
console.log(voteCount.vicePresident)
console.log(voteCount.secretary)
console.log(voteCount.treasurer)

for (var position in voteCount) {
  if (!voteCount.hasOwnProperty(position)) continue;
    var obj = voteCount[position];
    var min = Infinity, max = -Infinity, x;

var selectWinner = function(position) {
  var voteTally = [];
  for(var name in voteCount) {
    var number = voteCount[name]
    for(var arr in number) {
      if (name == position) {
        voteTally.push(voteCount[name][arr]);
      }
    }
  }

  for(var office in voteCount) {
    var number = voteCount[office];
    for(var name in number){
      if ((number[name]) === Math.max.apply(null, voteTally) && (office == position)) {
        console.log(number[name]);
        officers[position] = name;
      }
    }
  }
}


selectWinner('president')
selectWinner('vicePresident')
selectWinner('treasurer')
selectWinner('secretary')



// console.log(officers)
// console.log(voteCount['secretary'])


// __________________________________________
// Refactored Solution

var tally = function(position) {
  for (var voter in votes) {
      if ((voteCount[position]).hasOwnProperty(votes[voter][position])) {
        voteCount[position][votes[voter][position]]++;
      }
        else{
          voteCount[position][votes[voter][position]] = 1;
        }
   }
};

var selectWinner = function(position){
  var voteTally = [];
  for(var office in voteCount) {
    var number = voteCount[office]
    for(var name in number){
      if (office== position) {
        voteTally.push(voteCount[office][name]);
      }
      if ((number[name]) === Math.max.apply(null, voteTally) && (office == position)) {
      officers[position] = name;
      }
    }
  }
}

var position = ['president','vicePresident','treasurer','secretary']

for (var n in position){
  tally(position[n]);
  selectWinner(position[n]);
}

// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// It's annoying, but not really any different than iterating over nested objects in Ruby.

// Were you able to find useful methods to help you with this?

// Kind of.  We used some math methods that made our lives easier that I literally don't know how we would've written out without those methods.

// What concepts were solidified in the process of working through this challenge?

// How to access a value when passing an argument in a fuction.


// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)