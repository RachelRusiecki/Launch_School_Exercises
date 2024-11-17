// The doubler function in the code below takes two arguments: a number to double and return, and a string containing the name of the function's caller.

// function doubler(number, caller) {
//   console.log(`This function was called by ${caller}.`);
//   return number + number;
// }

// doubler(5, 'Victor');

// Write a makeDoubler function that takes a caller name as an argument, and returns a function that has the same behavior as doubler, but with a preset caller.

function makeDoubler(caller) {
  return number => {
    console.log(`This function was called by ${caller}.`);
    return number + number;
  };
}

const doubler = makeDoubler('Victor');
console.log(doubler(5));
