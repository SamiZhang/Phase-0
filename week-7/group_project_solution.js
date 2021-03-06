// Add the finished solution here when you receive it.

// Person 2: Write Pseudocode (Dan Shapiro)
/*
Question 1 Steps:
1. define function: add
2. function should take two parameters, int1, and int2
3. add int1 to int2
4. print result of operation to console
Question 2 Steps:
1. define function odd
2. function should take an array as a parameter
3. use modulus operator to check if array has an odd number of values
4. If odd, add up each element in the array
  - create counter variable
  - add each subsequent value to counter variable with each iteration
5. Output value to console
Question 3 Steps:
1. define function even
2. function should take an array as a parameter
3. use modulus operator to check if array has an even number of values
4. If even, add up each element in the array
  - create counter variable
  - add each subsequent value to counter variable with each iteration
5. Output value to console.
Question 4 Steps:
1. define function mean
2. function should take an array as a parameter
3. initialize counter variable and incrementally add each value of array to counter variable
4. divide final value of counter variable by length of array
5. output value to console
Question 5 Steps:
1. define function meanOdd
2. function should take an array as a parameter
3. check to see if number of values in array is an odd number. If odd:
4. initialize counter variable and incrementally add each value of array to counter variable
5. divide final value of counter variable by length of array
6. output value to console
Question 6 Steps:
1. define function meanEven
2. function should take an array as a parameter
3. check to see if number of values in array is an even number. If even:
4. initialize counter variable and incrementally add each value of array to counter variable
5. divide final value of counter variable by length of array
6. output value to console
Question 7 Steps:
1. define function median
2. function should take array as a parameter
3. sort array by numerical value
4. find length of array and divide by 2 (this will find the midpoint)
5. output value at midpoint index
Question 8 Steps:
1. define function medianEven
2. function should take array as a parameter
3. sort array by numerical value
4. use modulus operator to check if even number of values
5. find length of array and divide by 2 (this will return a decimal value like 4.5)
6. return values at +0.5 and -0.5 of the midpont (the two nearest whole values)
7. add those two numbers and divide by 2
8. Output value to console.
Question 9 Steps:
1. define function medianOdd
2. function should take array as a parameter
3. Check to make sure even number of values in array
4.  sort array by numerical value
5. find length of array and divide by 2 (this will find the midpoint)
6. output value at midpoint index
*/

//Person 3: Pseudocode to code (Sami Zhang)
//Question 1
function add(int1, int2) {
    return int1 + int2;
}

console.log(add(1, 2))

//Question 2
var numbers = [1,2,3,4];

function odd (numbers) {
    var total = 0;
    for (var i in numbers) {
        if (i % 2 == 0){
            total += numbers[i];
        }
    }
    return total;
}  

console.log(odd(numbers))

//Question 3
var numbers = [1,2,3,4]

function even (numbers) {
    var total = 0;
    for (var i in numbers) {
        if (i % 2 == 1){
            total += numbers[i];
        }
    }
    return total;
}  

console.log(even(numbers))  

//Question 4
var numbers = [1,2,3,4];

function mean (numbers) {
    var total = 0;
    var i;
    for (i = 0; i < numbers.length; i += 1) {
        total += numbers[i];
    }
    return total / numbers.length;
}

console.log(mean(numbers))

//Question 5
var numbers = [1,2,3,4,3];

function meanOdd (numbers) {
    var total = 0;
    var i;
    for (i = 0; i < numbers.length; i += 1) {
        if (i % 2 == 0) {
            total += numbers[i];
        }
    }
    return total / numbers.length;
}

console.log(meanOdd(numbers))

//Question 6
var numbers = [1,2,3,4,3];

function meanEven (numbers) {
    var total = 0;
    var i;
    for (i = 0; i < numbers.length; i += 1) {
        if (i % 2 == 1) {
            total += numbers[i];
        }
    }
    return total / numbers.length;
}

console.log(meanEven(numbers))

//Question 7
var numbers = [1,2,3,4,3,5,7,9,1,5,4];

function median (numbers) {
    numbers.sort()
    var midpoint = numbers.length / 2 //I don't think this is the right way to find the median...
    return midpoint 
}    
  
console.log(median(numbers))

//Question 8
var numbers = [1,2,3,4,3,5,7,9,1,5,4];

function medianEven (numbers) {
    numbers.sort();
    var i;
    for (i = 0; i < numbers.length; i += 1) {
           if (i % 2 == 1) {
               var total = numbers.length / 2;
           }
       }
     return total;
}    
  
console.log(medianEven(numbers))

//Question 9
var numbers = [1,2,3,4,3,5,7,9,1,5,4];

function medianOdd (numbers) {
    numbers.sort();
    var i;
    for (i = 0; i < numbers.length; i += 1) {
           if (i % 2 == 0) {
               var total = numbers.length / 2;
           }
       }
     return total;
}    
  
console.log(medianOdd(numbers))
// __________________________________________
// Tests:  Do not alter code below this line.







// oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
// evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// // tests for sum
// assert(
//   (sum instanceof Function),
//   "sum should be a Function.",
//   "1. "
// )

// assert(
//   sum(oddLengthArray) === 27,
//   "sum should return the sum of all elements in an array with an odd length.",
//   "2. "
// )

// assert(
//   sum(evenLengthArray) === 43,
//   "sum should return the sum of all elements in an array with an even length.",
//   "3. "
// )

// // tests for mean
// assert(
//   (mean instanceof Function),
//   "mean should be a Function.",
//   "4. "
// )

// assert(
//   mean(oddLengthArray) === 3.857142857142857,
//   "mean should return the average of all elements in an array with an odd length.",
//   "5. "
// )

// assert(
//   mean(evenLengthArray) === 5.375,
//   "mean should return the average of all elements in an array with an even length.",
//   "6. "
// )

// // tests for median
// assert(
//   (median instanceof Function),
//   "median should be a Function.",
//   "7. "
// )

// assert(
//   median(oddLengthArray) === 4,
//   "median should return the median value of all elements in an array with an odd length.",
//   "8. "
// )

// assert(
//   median(evenLengthArray) === 5.5,
//   "median should return the median value of all elements in an array with an even length.",
//   "9. "
// )