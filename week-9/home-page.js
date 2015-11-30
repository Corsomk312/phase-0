// DOM Manipulation Challenge


// I worked on this challenge [by myself: ].


// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className = "done";


// Release 1:

document.getElementById("release-1").style.display= 'none';


// Release 2:

document.getElementsByTagName('h1')[0].innerHTML = "I compeleted Release-2";



// Release 3:

document.getElementById("release-3").style.backgroundColor= '#955251';


// Release 4:

document.getElementsByClassName('release-4')[0].style.fontSize = '2em';


// Release 5:

var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));

// <!-- Add your reflection here -->

// <!-- What did you learn about the DOM?

// It kind of reiterated the importance of keeping your HTML organized as you write it. It was good to see how elements interact with each other within the DOM too, like having to put [0] for the children of the element you find. That took me a hot minute to figure out. 

// What are some useful methods to use to manipulate the DOM?

// Keeping organized within the HTML. Getting elements by ID and ClassName I think will end up being really useful. Also, being able to change the color of the element without using CSS was nice. -->

// <!-- # This challenge took me [1] hour. -->