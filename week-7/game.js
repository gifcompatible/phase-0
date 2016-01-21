// Create at least 2 objects with properties
// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
// Call each function (invoke the function) Make sure the output is actually what you expect!

// Write an outline of your overall mission and the goals that will indicate you've completed your mission as comments in the game.js file.

// Potions Game!  You're a fifth student at Hogwarts trying to make a love potion to get another student to fall in love with you.  You need to add certain amounts of ingredients to the cauldron at certain times and mix them to create the potion.  The mission is complete when the potion has been brewed!

// create an object that has two properties, ingredients and full
  // set ingredients equal to an array containing the ingredients objects
  // set a value to false
// create indentical ingredient objects with properties name, ground, and mixed
  // name is equal to the ingrendient name
  // ground is set to false
  // mixed is set to false



// var ingredientOne = {
//   name: "Ashwinder eggs",
//   ground: false,
//   mixed: false
// }
// var ingredientTwo = {
//   name: "Rose thorns",
//   ground: false,
//   mixed: false
// }
// var ingredientThree = {
//   name: "Peppermint",
//   ground: false,
//   mixed: false
// }
// var ingredientFour = {
//   name: "Powdered moonstone",
//   ground: false,
//   mixed: false
// }

function Ingredient(name) {
  this.name = name;
  this.ground = false;
  this.grind = function() {
                this.ground = true;
                console.log("Your " + ingredients +  " have been ground!")
                };
  this.mixed = false
  this.mix = function() {
              this.mixed = true;
              console.log("Your " + ingredients +  " have been mixed!")
              };
}

var ingredients = []
ingredients.push(new Ingredient("Powedered moonstone"))
ingredients.push(new Ingredient("Peppermint"))
ingredients.push(new Ingredient("Rose thorns"))
ingredients.push(new Ingredient("Ashwinder eggs"))

var cauldron = {
  full: false,
  boiled: false,
  contents: []
  add: function(ingredient) {
        contents.push(ingredient),
        }
        if (contents.length === 4) {
            full: true,
            console.log("Your cauldron is full and the potion is starting to boil...")
        }
        var times = 10;
        for(var i=0; i < times; i++){
        console.log(".")
        }
        boiled: true,
        console.log("Your potion is done!")
}



if grind && mix && boild === true {
  console.log("Congratulations!  Your have successfully brewed Love Potion!")
} else {
  console.log("Whoops!  Looks like you f**ked it up.  Potion fail.")
}
}