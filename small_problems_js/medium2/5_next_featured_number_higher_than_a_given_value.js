/*

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, with all of its digits occurring exactly once each. For example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a function that takes an integer as an argument and returns the next featured number greater than the integer. Issue an error message if there is no next featured number.

NOTE: The largest possible featured number is 9876543201.

*/

function featured(integer) {
  const MAX_FEATURED = 9876543201;
  let value = nextMultipleOf7(integer);

  while (value <= MAX_FEATURED) {
    if (isUnique(String(value))) return value;
    value += 14;
  }

  return 'There is no possible number that fulfills those requirements.';
}

function isUnique(value) {
  let checkedDigits = [];

  for (let index = 0; index < value.length; index += 1) {
    if (checkedDigits.includes(value[index])) return false;
    checkedDigits.push(value[index]);
  }

  return true;
}

function nextMultipleOf7(integer) {
  let value = integer + 1;
  while (value % 2 === 0 || value % 7 !== 0) value += 1;
  return value;
}

console.log(featured(12));           // 21
console.log(featured(20));           // 21
console.log(featured(21));           // 35
console.log(featured(997));          // 1029
console.log(featured(1029));         // 1043
console.log(featured(999999));       // 1023547
console.log(featured(999999987));    // 1023456987
console.log(featured(9876543186));   // 9876543201
console.log(featured(9876543200));   // 9876543201
console.log(featured(9876543201));   // "There is no possible number that fulfills those requirements."
