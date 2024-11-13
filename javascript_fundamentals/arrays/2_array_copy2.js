// In the previous exercise, the value of the reference gets copied. For this exercise, only the values of the array should be copied, but not the reference. Implement two alternative ways of doing this.

let myArray = [1, 2, 3, 4];
let myOtherArray = myArray.slice();
myArray.pop();

console.log(myOtherArray);
console.log(myArray);

myArray = [1, 2, 3, 4];
myOtherArray = [];
myArray.forEach(ele => myOtherArray.push(ele));
myArray.pop();

console.log(myOtherArray);
console.log(myArray);
