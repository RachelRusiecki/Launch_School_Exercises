// What will the following code log to the console and why?

let a = 7;

function myValue(b) {
  b += 10;
}

myValue(a);
console.log(a);

// 7 b/c what happens in a function to a primitive value has no effect on the global a variable
