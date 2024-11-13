// Read through the code shown below. What does it log to the console at lines 6 and 10?

let myArray = [1, 2, 3, 4];
const myOtherArray = myArray;

myArray.pop();
console.log(myArray);
console.log(myOtherArray);

myArray = [1, 2];
console.log(myArray);
console.log(myOtherArray);

// [1, 2, 3] both times b/c on at first both variables are referencing the same array and are both mutated by the pop function, but by Line 10, myArray has been reassigned
