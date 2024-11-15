// Identify the bug in the following code. Don't run the code until after you've tried to answer.

const myObject = {
  a: 'name',
  'b': 'test',
  123: 'c',
  1: 'd',
};

console.log(myObject[1]);
console.log(myObject[a]);
console.log(myObject.a);

// a is a string, without quotes the program is expectinga variable.
