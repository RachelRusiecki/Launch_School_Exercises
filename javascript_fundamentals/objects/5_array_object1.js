// What will the following code log to the console and why? Don't run the code until after you have tried to answer.

const myArray = ['a', 'b', 'c'];

console.log(myArray[0]);
console.log(myArray[-1]);

myArray[-1] = 'd';
myArray['e'] = 5;
myArray[3] = 'f';

console.log(myArray[-1]);
console.log(myArray['e']);
console.log(myArray);

// a b/c that is the first index of the array
// undefined because the -1 property is not set to anything yet
// d b/c that is the value of the -1 property
// 5 b/c that is the value of the e property
// [a, b, c, f, -1: d, e: 5] b/c all elements AND properties are included when logging arrays
