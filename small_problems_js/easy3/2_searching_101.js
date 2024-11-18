// Write a program that solicits six numbers from the user and logs a message that describes whether the sixth number appears among the first five numbers.

const rlSync = require('readline-sync');
let nums = [];

nums.push(rlSync.question('Enter the 1st number: '));
nums.push(rlSync.question('Enter the 2nd number: '));
nums.push(rlSync.question('Enter the 3rd number: '));
nums.push(rlSync.question('Enter the 4th number: '));
nums.push(rlSync.question('Enter the 5th number: '));

let last = rlSync.question('Enter the last number: ');

if (nums.includes(last)) {
  console.log(`The number ${last} appears in [${nums.join(', ')}].`);
} else {
  console.log(`The number ${last} does not appear in [${nums.join(', ')}].`);
}

// What if the problem was looking for a number that satisfies some condition (e.g., a number greater than 25), instead of a specific number? Would the current solution still work? Why or why not?

function isIncluded(arr, val) {
  for (let i = 0; i < arr.length; i += 1) {
    if (arr[i] > val) {
      return true;
    }
  }

  return false;
}

// Explore the Array.prototype.some method, and see if you can change the possible solution shown above to make use of that method instead.

function isIncludedSome(arr, val) {
  return arr.some(number => number > val);
}

console.log(isIncludedSome([1, 2, 3], 10));
