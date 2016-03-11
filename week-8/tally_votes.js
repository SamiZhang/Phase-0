// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Erica Lloyd:
// This challenge took me [2.5] hours.

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
/*
1. Create a FOR/IN loop to call out voter IN variable vote
2. Contine with another FOR/IN loop to call out each position IN voteCount
3. Check to see if voteCount[position] has the position from variable votes
    - IF it does then += 1
    - ELSE = 1
4. Create a FOR/IN loop to call out position IN voteCount
5. Create var max = 0, var "" = voteCount[position], and var winner
6. Continue with another FOR/IN loop to call out the candidate IN voteCoutn[position]
7. Check to see if the number for each candidate is more than max
    - IF yes then replace max with new number for each position
8. Print out the name from each position with the max number.    
*/

// __________________________________________
// Initial Solution

for(var voter in votes){
  for(var position in voteCount){
    var candidates = votes[voter][position];
    if (voteCount[position].hasOwnProperty(candidates)) {
      voteCount[position][candidates] += 1;
    }
    else {
      voteCount[position][candidates] = 1;
    }
  }
}


for(var position in voteCount){
  var tallys = voteCount[position];
  var max = 0;
  var winner;
  
  for(var candidate in tallys){
    var numVotes = tallys[candidate];
    if(numVotes > max){
      max = numVotes;
      winner = candidate;      
    }
    
  }
  officers[position] = winner;  
}

// Driver code
// console.log(votes["Alex"]["president"]);
console.log(voteCount);
console.log(officers);


// __________________________________________
// Refactored Solution

for(var voter in votes){

 for(var position in voteCount){
   var candidate = votes[voter][position];
   var tallys = voteCount[position];
   var max = 0;
   var winner;

   tallys.hasOwnProperty(candidate)? tallys[candidate] += 1 : tallys[candidate] = 1;

   for(var candidate in tallys){
     var numVotes = tallys[candidate];
     
     if(numVotes > max){
       max = numVotes;
       winner = candidate;
     }
   }

   officers[position] = winner;
 }
}


// __________________________________________
// Reflection

/*
What did you learn about iterating over nested objects in JavaScript?
It's very similar to how Ruby would iterate over nested objects. We used FOR/IN loop to call out the property we want to work with and continue to create FOR/IN loops until we reach to the property we need. It's good to print out just to make sure that we are accessing the right data. 

Were you able to find useful methods to help you with this?
We used the "hasOwnProperty" method for the first part of the challenge. This method checks to see if an object has the properties you are looking for. We also thought about useing "Math.max" method for our second part but it will make things even more complicated than it needs to be so we dropped it.

What concepts were solidified in the process of working through this challenge?
The concept of interating nested objects in JavaScript is getting better for me. 
*/


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