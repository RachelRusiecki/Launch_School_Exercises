// What will the following code log to the console and why?

function someFunction() {
  myVar = 'This is global';
}

someFunction();
console.log(myVar);

// 'This is global' b/c declaring assigning a variable that does not yet exist in the current scope, reassigns it to the variable that is next found in the subsequent outer scopes OR declares a new global variable
