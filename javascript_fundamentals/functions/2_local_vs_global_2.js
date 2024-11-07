// What will the following code log to the console and why?

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
  console.log(myVar);
}

someFunction();

// 'This is local' b/c the variable getting printed refers to the local variable declared on Line 6.
