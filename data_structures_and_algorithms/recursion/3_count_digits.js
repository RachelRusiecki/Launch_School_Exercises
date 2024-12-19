// Create a recursive function that counts the number of digits in a given integer. The function should accept an integer and return the count of its digits. For instance, if the input is 12345, the function should return 5.

// function countDigits(integer) {
//   if (String(integer).length === 0) return 0;
//   return 1 + countDigits(String(integer).slice(1));
// }

function countDigits(integer) {
  if (integer < 10) return 1;
  return 1 + countDigits(Math.floor(integer / 10));
}

console.log(countDigits(12345) === 5);
console.log(countDigits(7) === 1);
console.log(countDigits(100000) === 6);
console.log(countDigits(99999) === 5);
console.log(countDigits(0) === 1);
