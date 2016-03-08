 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: It's late at night and you're hungry! There's foods all over the house but you must find it without waking your mom up or you will be caught and food will be taken away!
// Overall mission: Find foods and eat it!
// Goals: Find and eat till you're full without getting caught
// Characters: Hungry character, mom
// Objects: Hungry character, mom, food?
// Functions: move.up(), move.left(), move.right(), move.down()

// Pseudocode
/*
1. DEFINE hungry character, mom
2. Hungry character will have 2 properties: fullness, noise 
3. Mom will have 2 property: awake, noise
4. Hungry character can move up, down, left, and right
5. Each time the character moves, a random number (1-5) for noise will be added
    - IF noise number reaches to 100 mom will wake up 
6. Each food found will give character a random number between 1 - 10
    - Those numbers will be added to fullness 
    - When fullness = 100 character win! 
*/
// Initial Code
var hungryKid = {
    fullness: 0,
    noise: 0,
}

var mom = {
    awake: 100
}

var good = {
    points: Math.floor((Math.random()*10)+1)
}

var bad = {
    points: Math.floor((Math.random()*10)+1)
}

function moves() {
  var fSum = 0
  var nSum = 0
  var move = prompt("Which way?", "Up/Down/Left/Right)")
  if (move === "Up") {
    hungryKid.fullness = fSum + good.points;
    hungryKid.noise = nSum + bad.points;
  }
  else if (move === "Down") {
    hungryKid.fullness = fSum + good.points;
    hungryKid.noise = nSum + bad.points;
  }
  else if (move === "Left") {
    hungryKid.fullness = fSum + good.points;
    hungryKid.noise = nSum + bad.points;
  }
  else if (move === "Right") {
    hungryKid.fullness = fSum + good.points;
    hungryKid.noise = nSum + bad.points;
  }
  else {
    window.alert("FOCUS!! WE NEED TO FIND THE FOODS!");
  }
}

function game() {
  if (hungryKid.fullness === 100) {
    window.alert("I'm so full! Thank you!");
  }
  else if (hungryKid.noise === mom.awake) {
    window.alert("You got caught! Better luck next time!");
  }
  else {
    window.alert("What happened? I'm starving!!")
  }
}


// Reflection
/*
What was the most difficult part of this challenge?
The most difficult was trying to have the prompt print out and test to see if numbers are adding. At the end, I've tried many different ways but couldn't get it right. I checked on W3 and it seemed that I'm doing it correctly and should work on a site. I beleived that I can do more with this game but I've spend too long and since it got the basic stuff down I'll just end it like this.

What did you learn about creating objects and functions that interact with one another?
Object can be used anytime for any functions and functions are able to manipulate the properties of an object. 

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I learned how to the random method along with the floor method. If just using the random method alone, it will give me random decimal number but if floor method is used along with it than an integer will be returned.

How can you access and manipulate properties of objects?
We can access and manipulate properties of objects by calling it like this:  object.properties
*/