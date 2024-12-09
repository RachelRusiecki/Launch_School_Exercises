/*

Write a function that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

*/

function sumSquareDifference(integer) {
  let numbers = [];
  for (let counter = 1; counter <= integer; counter += 1) {
    numbers.push(counter);
  }

  let sumSquares = (numbers.reduce((sum, value) => sum + value))**2;
  let squareSums = numbers.reduce((sum, value) => sum + value**2);
  return sumSquares - squareSums;
}

console.log(sumSquareDifference(3));      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
console.log(sumSquareDifference(10));     // 2640
console.log(sumSquareDifference(1));      // 0
console.log(sumSquareDifference(100));    // 25164150
