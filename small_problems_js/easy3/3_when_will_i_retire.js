// Build a program that logs when the user will retire and how many more years the user has to work until retirement.

const rlSync = require('readline-sync');

let age = rlSync.question('What is your age? ');
let retirementAge = rlSync.question('At what age would you like to retire? ');

age = Number(age);
retirementAge = Number(retirementAge);

let year = new Date().getFullYear();

console.log(`It's ${year}. You will retire in ${retirementAge - age + year}.`);
console.log(`You have only ${retirementAge - age} years of work to go!`);
