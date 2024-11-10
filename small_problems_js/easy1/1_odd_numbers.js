// Log all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

for (let num = 1; num <= 99; num += 2) {
  console.log(num);
}

// Repeat this exercise with a technique different from the one that you used, and different from the one provided. Also consider adding a way for the user to specify the limits of the odd numbers logged to the console.

let rlSync = require('readline-sync');
let min = Number(rlSync.question('What is the starting number? '));
let max = Number(rlSync.question('What is the ending number? '));

for (let num = min; num <= max; num += 1) {
  if (num % 2 === 1) console.log(num);
}
