// Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip, and then log both the tip and the total amount of the bill to the console. You can ignore input validation and assume that the user will put in numbers.

let rlSync = require('readline-sync');
let bill = Number(rlSync.question('What is the bill? '));
let tip = Number(rlSync.question('What is the tip percentage? '));

console.log(`The tip is $${(bill * (tip / 100)).toFixed(2)}`);
console.log(`The total is $${(bill + (bill * (tip / 100))).toFixed(2)}`);
