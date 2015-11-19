// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var dirt = "Go take a shower!";
// console.log(dirt);



// prompt("What's your favorite food?");
// console.log("Hey that's mine too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

function fizzBuzz(){
	for (var i = 1; i < 101; i++) {
		if (i % 3 ===0 && i % 5 === 0){
			console.log("FizzBuzz");
		}
		else if (i % 5 === 0){
			console.log("Buzz");
		}
		else if (i % 3 === 0){
			console.log("Fizz");
		}
		else 
			console.log(i)
	}
}

// Functions

// Complete the `minimum` exercise.

function min(num1, num2){
	return Math.min(num1 ,num2);
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Kevin",
	age: 28,
	fav_foods: ["Pizza", "Pizza", "Pizza"],
	quirk: "I get compliments on my nails, and I BITE THEM HAHA jokes on you."
};