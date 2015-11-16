// JavaScript Olympics

// I paired [with Bernice Chua] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up




// Bulk Up
// function addWinCondition(athletesArray) {
//   for (var i = 0; i < athletes_array.length; i++) {
//     athletes_array[i].win = athletes_array[i].name + " won the " + athletes_array[i].event + ".";
//   }

//   return athletes_array;
// };




// var athletes_array = [
//   {name: "Mary Waters", 
//    event: "100m"},
//   {name: "susie Jenkins", 
//    event: "200m"}
// ];



// var test = addWinCondition(athletes_array);
// console.log(test);
// // Jumble your words
// function stringReverser(myString) {
//   return myString.split("").reverse().join("");
// };

// console.log(stringReverser("Hello"));

// 2,4,6,8

// function evensOnly(numArray) {
  // var evensArray = [];
  // for (var i = 0; i < numArray.length; i++){
  //   if (numArray[i] % 2 === 0) {
  //     evensArray.push(numArray[i]);
  //   }
  //  }
  // return evensArray;
  
// // }

// var myArray = [1,2,4,5,6,7,8,9,10];
// // console.log(evensOnly(myArray));


// // Refactored Solution
// function evensOnly(eachNumber) {
//   return eachNumber % 2 === 0;
// }
// console.log([12, 5, 8, 130, 44].filter(evensOnly));
// // filtered is [12, 130, 44]

// // Refactored-again Solution
// myArray.filter(function(eachNumber) {
//     return eachNumber % 2 === 0;
//   }
// );


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Definitely helped to solidify some of the syntax for JS. It helped me get more comfortable with building functions. I am still switching between Ruby and JS too much, but that distinction will become clearer with time.

// What are constructor functions?

// Constructor functions are similar to classes in Ruby in that they use a keyword this in front of the properties and methods to allow a new instance to be made using this constructor. 

// How are constructors different from Ruby classes (in your research)?

// The only difference I can think of is using the prototype to make one object with certain properties and methods, instead of every instance having all of them, it will refer to the prototype object to look for these methods/properties.
