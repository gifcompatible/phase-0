// Pseudocode

// Create a new list
  // Make an empty grocery list object
// Add an item with a quantity to the list
  // add a new item property to the list with a quantity value
    // add the item and the quantity to the array
// Remove an item from the list
  // DELETE an item property from the list
// Update quantities for items in your list
  // make a function that takes an item and quantity
    // change the quantity of the specified item
// Print the list in a pretty way
  // access the key of the grocery list object
  // access the value of the grocery list object
  // print the key and value as "item" and "quantity" in a string

// Initial solution

var grocery_list = {}

// add an item and quantity
grocery_list.milk = 3
grocery_list.eggs = 12
grocery_list.butter = 2
grocery_list.cheese = 5
grocery_list.cereal = 2
grocery_list.pie = 9

// remove an item
delete grocery_list.milk

// update an item
grocery_list.cheese = 2

// print the contents of the list
var pretty = function(grocery_list) {
  for (var item_name in grocery_list) {
    var quantity = grocery_list[item_name]
    console.log("Item: " + item_name + ", quantity: " + quantity)
  }
}

pretty(grocery_list)olution

// Refactor
// new list
function groceries() {
  this.items = [];
// add item
  this.add = function(name, quantity) {
    this.items.push( {name: name, quantity: quantity} );
  }
// remove item
  this.remove = function(item) {
    for (var a in this.items) {
      if (this.items[a].name == item) {
        delete this.items[a]
      }
    }
  }
// update item
  this.update = function(item, quantity) {
    for (var a in this.items) {
      if (this.items[a].name == item) {
        this.items[a].quantity = quantity
      }
    }
  }
// print the content of the list
  this.print_pretty = function() {
    for (var i in this.items) {
    console.log("Item: " + this.items[i].name + ", quantity: " + this.items[i].quantity);
    }
  }
}

var target = new groceries()
target.add("shoes", 2)
target.add("boat", 4)
target.remove("shoes")
target.update("boat", 20)
target.print_pretty()

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Constructor fun!  And by that I mean, beating my head against the wall.  Constructors may be more "intelligent" in terms of how an object will be set up for "real world" use, but it's so weird to me how elements are accessed.  Variables.  Variables everywhere.

// What was the most difficult part of this challenge?
// Refactoring.  I feel like refactoring is usually easier (when it comes to Ruby, anyway) because there are built-in methods.  To me my refactor for this challenge seems less easy to read, and it was also hard to figure out how to make it more DRY.  I think that's mainly because my initial solution was already pretty DRY (for once)!

// Did an array or object make more sense to use and why?

// Object all the way!  I actually tried an array, and the things I was having to do to access the elements of the array were just redundant and confusing.  Not to mention that having a nested array structure for a grocery list seems absurd-good luck accessing anything easily in the list once its more than a few items long!