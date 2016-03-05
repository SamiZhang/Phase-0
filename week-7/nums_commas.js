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
We approach this problem basically the same as Ruby for this problem, except that we translated the code into Javascript.

What did you learn about iterating over arrays in JavaScript?
Iterating over arrays in JavaScript is similar to to the idea of iteratin arrays in Ruby, but the coding is different. For example, to interate in Ruby we can use IF/ELSE and we type the condition next to IF/ELSE. As for JavaScript, we can also use IF/ELSE but we type the condition inside a parentheses after IF/ELSE.

What was different about solving this problem in JavaScript?
One thing I noticed was that we created more varialbes to solve this problem compare with Ruby. We tried to squeeze some of the methods into one variable but it kept returning "undefine" or "no such method".

What built-in methods did you find to incorporate in your refactored solution?
My partner found this method called tolocaleString and it automatically placed the commas into any numbers. We both still not sure how exactly this method was able to do it and it seems like this method can be used on many different conditions. It's a very useful and powerful method!
*/