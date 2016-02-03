// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 1:
var releaseOne = document.getElementById("release-0");
releaseOne.className = "done";



// Release 2:
var releaseTwo = document.getElementById('release-1');
releaseTwo.style.display = 'none';



// Release 3:
var releaseThree = document.querySelector('h1');
releaseThree.textContent = "I completed release 2.";




// Release 4:
var releaseFour = document.getElementById('release-3');
releaseFour.style.background = '#955251';



// Release 5:
var releaseFive = document.querySelectorAll(".release-4")
for (var i = 0; i < releaseFive.length; i++) {
  releaseFive[i].style.fontSize='2em';
}



// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));



// Reflection
// What did you learn about the DOM?
// The DOM is...pretty confusing.  I mean it makes sense what all is happening, but I guess at this point I don't see how it would be better to use DOM than just hacking through HTML and CSS.  It seems like it adds uneccesary complications to the code.  BUT I do see how you could easily target an element without messing up a bunch of other ones, which is easy to do in CSS.

// What are some useful methods to use to manipulate the DOM?
// querySelector, getElementById, getElementByClass, appendChild are all pretty great.  They are pretty self explanatory, and target exactly what you tell it to, just like in CSS.  We definitely did have some moments of confusion on when to use getElementById vs getElementByClass though-those divs are tricky!