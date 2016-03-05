 // JavaScript Olympics

// I paired with Ryan Wilkins on this challenge.

// This challenge took me [1] hours.


// Warm Up

// Bulk Up
var athletes = [
  {name: "Ryan Wilkins",
  event: "Ultimate Frisbee"},
  {name: "Sami Zhang",
  event: "Volleyball"}
]

function win (athletes){
  for (var i in athletes) {
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event + "!";
    console.log(athletes[i].win)
  }
}

win(athletes)


// Jumble your words
  var array = string.split("").reverse().join("");
  return array;
}

console.log(reverse("String"))


// 2,4,6,8
function even(numbers) {
  return numbers % 2 === 0;
}

var filter = [1, 2, 3, 4, 5, 6, 7, 8].filter(even);
console.log(filter)


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*

*/