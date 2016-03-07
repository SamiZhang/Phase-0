// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Sami"
console.log("Hello " + name + "!")

//Favorite food
var favFood = prompt("What's your favorite food?")
console.log ("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FizzBuzz
for (var i = 1; i <= 100; i++) {
    if (i % 3 === 0 && i % 5 === 0) {
        console.log ("FizzBuzz");
    }
    else if (i % 3 === 0) {
        console.log ("Fizz");
    }
    else if (i % 5 === 0) {
        console.log ("Buzz");
    }
    else {
        console.log (i);
    }
}
    


// Functions

// Complete the `minimum` exercise.
console.log(Math.min(0,10))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
    name: "Sami",
    age: 25,
    favoriteFoods: ["sushi", "pasta", "fried chicken"],
    quirk: "I don't like sweets."
}
