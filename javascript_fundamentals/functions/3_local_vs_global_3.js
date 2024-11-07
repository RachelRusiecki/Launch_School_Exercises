// What will the following code log to the console and why?

var myVar = 'This is global';

function someFunction() {
  myVar = 'This is local';
}

someFunction();
console.log(myVar);

// 'This is local' b/c myVar is reassigned to that new string, inner scope has access to global variables
