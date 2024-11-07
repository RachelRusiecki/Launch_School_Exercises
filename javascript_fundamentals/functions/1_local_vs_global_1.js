// What will the following code log to the console and why?

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
}

someFunction();
console.log(myVar);

// 'This is global' b/c the variable getting printed refers to the global variable declared on Line 3.
