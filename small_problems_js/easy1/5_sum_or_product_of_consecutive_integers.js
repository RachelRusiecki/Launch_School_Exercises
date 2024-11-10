// Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or the product of all numbers between 1 and the entered integer, inclusive.

let rlSync = require('readline-sync');
let num = Number(rlSync.question('Please enter an integer greater than 0: '));
let calculation = rlSync.question('Enter "s" to compute the sum, or "p" to compute the product. ');
let arr = [];

for (let counter = 1; counter <= num; counter += 1) {
  arr.push(counter);
}

if (calculation === 's') {
  let sum = computeSum(arr);
  console.log(`The sum of the integers between 1 and ${num} is ${sum}.`);
} else if (calculation === 'p') {
  let product = computeProduct(arr);
  console.log(`The product of the integers between 1 and ${num} is ${product}.`);
} else {
  console.log('Oops. Unknown operation.');
}

// What if the input was an array of integers instead of just a single integer? How would your computeSum and computeProduct functions change? Given that the input is an array, how might you make use of the Array.prototype.reduce() method?

function computeSum(numbers) {
  return numbers.reduce((total, num) => total + num);
}

function computeProduct(numbers) {
  return numbers.reduce((total, num) => total * num);
}
