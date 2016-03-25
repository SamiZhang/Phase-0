//Pseudocode
/*
1. Create a new list with items and it's quantity
2. Create a function that can add a new item with quantity into the list
3. Create a function that can remove an item from the list
4. Create a function that will update the quantities for items
5. Create a function that will print the list out nicely
*/

//Initial Solution
//create a new list
var groceryList = {
  apple: 1,
  pear: 1,
  cake : 1,
}

//to add an item
function add_item(list, item, quantity) {
  list[item] = quantity;
  console.log(groceryList);
}

add_item(groceryList,"orange", 2)

//to remove an item
function remove_item(list, item) {
  delete list[item];
  console.log(groceryList);
}

remove_item(groceryList,"apple")

//update quantity
function update_quantity(groceryList, item, quantity) {
  groceryList[item] = quantity;
  console.log(groceryList);
}

update_quantity(groceryList, "cake", 4)

//print list
function list_print(list){
    console.log("What you need to buy:");
    console.log("---------------------");
    for (var i in list){
    console.log("You need " + list[i] + " " + [i] + "s.");
  }
}

list_print(groceryList)

//Refactor Solution
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

What was the most difficult part of this challenge?
Did an array or object make more sense to use and why?
*/
//


