// What will the following code log to the console and why?

var myVar = 'This is global';

function someFunction() {
  console.log(myVar);
}

someFunction();

// 'This is global' b/c inner scope of function has access to global variables, myVar is within the function's closure
