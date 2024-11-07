// What will the following code log to the console and why?

logValue();

function logValue() {
  console.log('Hello, world!');
}

// 'Hello, world!' b/c when functions are declared using function, they are hoisted along w/ their bodies 

// Let's refactor the code a bit. What does it log now? What is the hoisted equivalent of this code?

var logValue = 'foo';

function logValue() {
  console.log('Hello, world!');
}

console.log(typeof logValue);

// 'string' b/c function declarations are hoisted above variable declarations
