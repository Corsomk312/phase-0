 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Rescue the prince -
// Goals: Move around and find the kidnapped prince in the labyrinth
// Characters: Heroine - Trolls - Prince
// Objects: Heroine
// Functions: Move - Dodge - Encounter Troll - encounter prince -

// Pseudocode
//Create a character 'Heroine' and assign her basic stats - life, position, 
//Have character be able to move around the maze, dodge if you encounter a troll, and win if you rescue the prince.
//IF encounter a troll, roll a random number. If number is below a range, you dodge, if it is above, you take a hit. 
//Troll will be roaming the dungeon, moving as you move. They are more limited in their movements.
// 
// WHEN you find the prince you win.
//

// Initial Code

// var heroine = {
//   life: 4,
//   posX: 0,
//   posY: 0, 
//   win: false,

//   move: function(direction){
//     if (direction === 'right'){
//       this.posX += 5;
//     } 
//     else if (direction === 'left'){
//       this.posX += -5;
//     }
//     else if (direction === 'up'){
//       this.posY += 5;
//     }
//     else if (direction === 'down'){
//       this.posY += -5;
//     }
//     else 
//       console.log("Please input a valid direction! **up down left right**")

// //Move the trolls to a random space 
//   troll.posX = Math.floor((Math.random()*100)+1);
//   troll.posY = Math.floor((Math.random()*100)+1);
//   troll.posX1 = Math.floor((Math.random()*100)+1);
//   troll.posY1 = Math.floor((Math.random()*100)+1);
//   troll.posX2 = Math.floor((Math.random()*100)+1);
//   troll.posY2 = Math.floor((Math.random()*100)+1);
//   console.log("Be careful! The trolls are located here: "); 
//   console.log("Troll 1 is at "+ troll.posX + "," + troll.posY);
//   console.log("Troll 2 is at "+ troll.posX1 + "," + troll.posY1);
//   console.log("Troll 3 is at "+ troll.posX2 + "," + troll.posY2);

// //Moves the prince to a random space
//   prince.posX = Math.floor((Math.random()*100)+1);
//     prince.posY = Math.floor((Math.random()*100)+1);
//   console.log("The not-as-handsome-as-you-remember-him prince is located at:");
//   console.log(prince.posX + "," + prince.posY);
  
// // tell the heroine where they are on the board.
//     console.log("You are at " + heroine.posX +"," + heroine.posY);
    
// //     Check if player is on space with a troll, IF yes, roll a random number and see if it falls within a range. If it removes a life point then subtract one. If not jump player to random place on board.
//     if ((heroine.posX === troll.posX && heroine.posY === troll.posY) ||
//     	(heroine.posX === troll.posX1 && heroine.posY === troll.posY1) ||
//     	(heroine.posX === troll.posX2 && heroine.posY === troll.posY2)){
//     	var hitMe = Math.floor((Math.random()*100)+1);
//     		if (hitMe < 51) {
//     			console.log("Woo! That was a close one. You dodged the nasty trolls rusty wooden club");
//     		}
//     		else {
//     			heroine.life += -1;
//     			console.log("Oh no! You got walloped. You only have " + heroine.life + " hits left!");
//     		}
//     }
//     else if (heroine.posX === prince.posX && heroine.posY === prince.posY){
//     	heroine.win = true;
//     	console.log("You have rescued the prince! Now you can collect your reward because, let's face it, you're in it for the money. CREAM!");
//     }
//     }
    
// }

// }

// var prince = {
//   posX: Math.floor((Math.random()*100)+1),
//   posY: Math.floor((Math.random()*100)+1)
// };

// var troll = {
//   posX: Math.floor((Math.random()*100)+1),
//   posY: Math.floor((Math.random()*100)+1),

//   posX1: Math.floor((Math.random()*100)+1),
//   posY1: Math.floor((Math.random()*100)+1),

//   posX2: Math.floor((Math.random()*100)+1),
//   posY2: Math.floor((Math.random()*100)+1)
// };

// heroine.move();


// Refactored Code

var heroine = {
  life: 4,
  posX: 0,
  posY: 0, 
  win: false,

  move: function(direction){
    if (direction === 'right'){
      this.posX += 5;
    } 
    else if (direction === 'left'){
      this.posX += -5;
    }
    else if (direction === 'up'){
      this.posY += 5;
    }
    else if (direction === 'down'){
      this.posY += -5;
    }
    else 
      console.log("Please input a valid direction! **up down left right**")

//Move the trolls to a random space 
  troll.posX = randomMove();
  troll.posY = randomMove();
  troll.posX1 = randomMove();
  troll.posY1 = randomMove();
  troll.posX2 = randomMove();
  troll.posY2 = randomMove();
  console.log("Be careful! The trolls are located here: "); 
  console.log("Troll 1 is at "+ troll.posX + "," + troll.posY);
  console.log("Troll 2 is at "+ troll.posX1 + "," + troll.posY1);
  console.log("Troll 3 is at "+ troll.posX2 + "," + troll.posY2);

//Moves the prince to a random space
  prince.posX = randomMove();
    prince.posY = randomMove();
  console.log("The not-as-handsome-as-you-remember-him prince is located at:");
  console.log(prince.posX + "," + prince.posY);
  
// tell the heroine where they are on the board.
    console.log("You are at " + heroine.posX +"," + heroine.posY);
    
//     Check if player is on space with a troll, IF yes, roll a random number and see if it falls within a range. If it removes a life point then subtract one. If not jump player to random place on board.
           if ((heroine.posX === troll.posX && heroine.posY === troll.posY) ||
      (heroine.posX === troll.posX1 && heroine.posY === troll.posY1) ||
      (heroine.posX === troll.posX2 && heroine.posY === troll.posY2)){
      var hitMe = randomMove();
        if (hitMe < 51) {
          console.log("Woo! That was a close one. You dodged the nasty trolls rusty wooden club");
        }
        else {
          heroine.life += -1;
          console.log("Oh no! You got walloped. You only have " + heroine.life + " hits left!");
        }
    }
    else if (heroine.posX === prince.posX && heroine.posY === prince.posY){
      heroine.win = true;
      console.log("You have rescued the prince! Now you can collect your reward because, let's face it, you're in it for the money. CREAM!");
    }

    if (heroine.life === 0){
      console.log("I'm sorry to say but you're done for! Guess this goes to show you what you get for being noble. Game over man. Game over");
    }
    
}

}

var randomMove = function(){
   return Math.floor((Math.random()*100)+1);
}

var prince = {
  posX: randomMove(),
  posY: randomMove()
};

var troll = {
  posX: randomMove(),
  posY: randomMove(),

  posX1: randomMove(),
  posY1: randomMove(),

  posX2: randomMove(),
  posY2: randomMove()
};

heroine.move("left");
heroine.move("up");
heroine.move("up");


// Reflection
//
//What was the most difficult part of this challenge?

// The most difficult part of the concept for me was coming up with a game idea. I'm not strongest when it comes to creating stories and missions. Once I got a very basic concept for a block-based adventure game, I found that I was using Ruby syntax WAY too much. It caused me a lot of errors and wasted time trying to figure out where the problems were. I think as I get more experience with JS and ruby it will be easier for me to differentiate the two syntaxes. 

// What did you learn about creating objects and functions that interact with one another?

// It felt good to be in and writing functions and objects that interacting with one another. So long as you have the object defined within the scope of whatever other object or function you need it to be interacting with you shouldn't have a problem. Just making sure that you are within the scope that you think you are in. 


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I didn't really learn any new built in methods. I got very comfortable using Math.Random which I hadn't used much before. Also realizing that I could just create a function to return a random number made my code (hopefully) a lot more DRY. 


// How can you access and manipulate properties of objects?

// I mainly used the dot notation to access and change the properties of the objects, it just flows easier. You can also use bracket notation, but you need to make sure that you have what's in the brack listed as a string. It will evaluate the string and then look for a corresponding key, which differs from the dot notation because that just takes exactly what you put into it and searched for the key. 
//
//
//
//
//