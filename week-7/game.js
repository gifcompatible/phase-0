// Potions Game mission:  You're a fifth student at Hogwarts trying to make a love potion to get another student to fall in love with you.  You need to add certain amounts of ingredients to the cauldron at certain times and mix them to create the potion.  The mission is complete when the potion has been brewed!
// goals:
  // grind up each of the four ingredients
  // add the ingredients to the cauldron
  // once all ingredients have been added, boil the ingredients
  // when everything is boiled, the love potion is done
//**for refactor**:
  // if the ingredient added doesn't match an ingredient on the recipe, the recipe is f**ked and the potion fails

// Pseudocode

// create an ingredient function that takes the name of an ingredient
 // build the object with a constructor
 // include a name property set to name
 // include a ground property set to false
  // make a grind function that changes the ground property to true when and object is ground

// create a cauldron object
  // include a full property set to false
  // include a boiled property set to false
  // include an empty array contents
  // include an added property set to false
    // make an add function that changes the added property to true when an ingredient is added to the cauldron
      // if there are 4 items in the contents array, don't add anything else
      // add the ingredient to the cauldron
      // print a period 3 times to show when ingredients get added using a loop
      // if the cauldron is full, change the full property to true
        // print out a message confirming that the cauldron is full
        // display the contents of the cauldron
      // make a boil function that changes the boiled property to true when all of the ingredients in the cauldron are boiled
        // change contents back to an empty array
        // create an love potion object
        // print a message confirming the love potion is complete
        // set the contents array equal to love potion
        // display the contents of the cauldron

// Initial Solution

function Ingredient(name) {
  this.name = name;
  this.ground = false;
  this.grind = function() {
                this.ground = true;
                console.log(this.name +  ": ground and ready to be added to the cauldron.")
              }
}

var cauldron = {
  full: false,
  boiled: false,
  contents: [],
  added: false,
  add: function(ingredient) {
        if (this.contents.length === 4) {
          return false
        }

        this.contents.push(ingredient)

        var times = 3;
        for (var i=0; i < times; i++) {
          console.log(".")
        }

        if (this.contents.length === 4) {
          this.full = true
          console.log("Your cauldron is full! The contents are as follows: ")
        }

        return this.contents.toString()
  },
  boil: function() {
          this.boiled = true
          this.contents = []
          var lovePotion = "Love Potion"
          console.log("Your " + lovePotion + " is done!")
          this.contents = lovePotion
          return this.contents
  }
}

// console.log( (new Ingredient("Rose thorns")).grind() )
// console.log(cauldron.add("Peppermint"))
// console.log(cauldron.add("Ashwinder eggs"))
// console.log(cauldron.add("Powdered moonstone"))
// console.log(cauldron.add("Rose thorns"))
// cauldron.boil()

// Refactor

var recipe = [];
    recipe.push(new Ingredient("Powdered moonstone"))
    recipe.push(new Ingredient("Peppermint"))
    recipe.push(new Ingredient("Rose thorns"))
    recipe.push(new Ingredient("Ashwinder eggs"))

function Ingredient(name) {
  this.name = name;
  this.ground = false;
  this.grind = function() {
                this.ground = true;
                console.log(this.name +  ": ground and ready to be added to the cauldron.")
                }
}

var cauldron = {
  full: false,
  boiled: false,
  contents: [],
  added: false,
  failed: false,
  add: function(ingredient) {
       var inRecipe = false
       for (var i in recipe) {
       if (recipe[i].name === ingredient.name) {
        inRecipe = true
       }

       }
       if (inRecipe === false) {
        console.log("That ingredient is not in the recipe!")
        this.failed = true
       }

       if (this.contents.length === 4) {
        this.failed = true
       }

       this.contents.push(ingredient)

       var times = 3;
       for(var i=0; i < times; i++) {
        console.log(".")
       }

       if (this.contents.length === 4) {
        this.full = true
        console.log("Your cauldron is full! The contents are as follows: ")
       }
       for (var x in this.contents) {
        console.log(this.contents[x].name)
       }

       },
  boil: function() {
        if (this.failed === true) {
          console.log("Your Love Potion has failed.")
          return false
        }
        this.boiled = true
        this.contents = []
        var lovePotion = "Love Potion"
        console.log("Your " + lovePotion + " is done!")
        this.contents = lovePotion
        return this.contents
  }
}

// cauldron.add(new Ingredient("Powdered moonstone"))
// cauldron.add(new Ingredient("Peppermint"))
// cauldron.add(new Ingredient("Ashwinder eggs"))
// cauldron.add(new Ingredient("Salt"))
// cauldron.add(new Ingredient("Rose thorns"))
// cauldron.boil()

// Reflect

// What was the most difficult part of this challenge?
// Trying to decide how a game is defined.

// What did you learn about creating objects and functions that interact with one another?
// You won't know what things are dependent on other things until you start running tests.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// .contain seemed pretty great, but didn't work for what I wanted to do so I didn't end up using it.

// How can you access and manipulate properties of objects?
// Call the function for the object, pass an argument to the object using the function.