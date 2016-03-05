// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Brittney Braxton.

// Pseudocode
// Create a method with an argument that takes a number
// Convert number into a string
// Check the length of the string
// IF lenght of string is less than 4, it will just return number
// ELSE reverse the string and split it into an array
// Count backward for each of the three zeros
// Insert a comma IF c to a string



// Initial Solution
function separateComma(x) {
  var stringConverter = x.toString();
  var splitString = stringConverter.split("");
  var reverseString = splitString.reverse();
  var commaIndex = 3
  while (commaIndex < reverseString.length) {
      reverseString[commaIndex] += ",";
      commaIndex += 3
    }
  reverseString.reverse();
  var comma = reverseString.join("")

  return comma
};

console.log(separateComma(100000000))

// Refactored Solution
var num = 100000000000; 
console.log(num.toLocaleString());


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We approach the problem basically the same we would approach 
What did you learn about iterating over arrays in JavaScript?
What was different about solving this problem in JavaScript?
What built-in methods did you find to incorporate in your refactored solution?
*/