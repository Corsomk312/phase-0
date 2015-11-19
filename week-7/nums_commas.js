// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Brian Wagner.

// Pseudocode



// Initial Solution
var addCommas = function(integer){
  var newArray = integer.toString().split("").reverse();
  for (var i = 3; i < newArray.length; i+= 4) {
  	newArray.splice(i, 0, ",");
  };
  newArray = newArray.reverse().join("");
  console.log(newArray);
};

addCommas(1234555556);



// Refactored Solution




// Your Own Tests (OPTIONAL)




/* Reflection
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

We didn't really approach the problem differently at all. You're trying to get to the same solution, so our intial steps and pseudocoding were similar to what I remember. 

What did you learn about iterating over arrays in JavaScript?

Logically it's very similar to Ruby. I am already a little more partial to Java but that might just be on this level of difficulty. I like having everything in one line in the for loops.

What was different about solving this problem in JavaScript?

Learning the different JavaScript methods. It wasn't all that different in my opinion.

What built-in methods did you find to incorporate in your refactored solution?

We didn't have a refactored solution, as we used multiple built-in methods for our initial solution. The ones we did use have methods mirrored in Ruby as well, so it was just learning the syntax for the .split that was new for me. I also learned about using .split to find spaces or periods in strings and split there. 

*/