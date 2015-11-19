How can you use Chrome's DevTools inspector to help you format or position elements?
You can use chrome devtools to help highlight the element you are having trouble positioning. It also allows you to change the code temporarily without having to write it in your .html or .css file. This allows you to revert back if you don't like the changes.


How can you resize elements on the DOM using CSS?
You can adjust their height and width. You can adjust their margins to push them farther away from another element. You can adjust what display they are, allowing for other elements to be displayed on the same line or not.


What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?
Absolute positioning is where the element is positioned relative to its nearest ancestor element. So when you add margins it will add them against the nearest ancestor element, which is sometime the body.
Fixed positioning is fixed relative to the window. A fixed position will maintain that position as the user scrolls down the page. It does not care about other elements positioning.
Static positioning is the standard positioning. Anything not given a specific position will be static. It will ignore top/right/bottom/left properties and just run within the normal flow of the page.
Relative positioning is positioned relative to what it would normally be in the flow of the page. The element still takes up that normal space on the page, but it's content will be moved depending on the top, etc properties it has. No element will move into the gap left by where the element was originally.

I found that I left most static, but I think absolute has been the easiest for me to position when moving objects around. The most difficult for me to grasp was relative, mainly because I was confused how they interacted with each other, and when you throw in the block vs inline-block display properties I was having trouble getting them where I wanted.

What are the differences between Margin, Border, and Padding?
Margin is the space between the element and the other element. Border is the outline of where your element begins. Padding is the space inside the border before the content starts.

What was your impression of this challenge overall? (love, hate, and why?) 
I enjoyed the challenege. It was good to see the elements positioned like shapes instead of things such as paragraphs or tables. It made it simpler to comprehend. It was a new experience trying to get these divs where we wanted but we did a good job of getting things where we wanted them.