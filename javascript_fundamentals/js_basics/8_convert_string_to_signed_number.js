// The previous exercise mimics the parseInt function to a lesser extent. In this exercise, you're going to extend that function to work with signed numbers.
// Write a function that takes a string of digits and returns the appropriate number as an integer. The string may have a leading + or - sign; if the first character is a +, your function should return a positive number; if it is a -, your function should return a negative number. If there is no sign, return a positive number.
// You may assume the string will always contain a valid number.

function stringToSignedInteger(string) {
  const DIGITS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  let result = 0;
  for (let digit of string.split('')) {
    if (digit === '-' || digit === '+') continue;
    result = (result * 10) + DIGITS[digit];
  }

  return string.startsWith('-') ? -result : result;
}

console.log(stringToSignedInteger('4321'));      // 4321
console.log(stringToSignedInteger('-570'));      // -570
console.log(stringToSignedInteger('+100'));      // 100
