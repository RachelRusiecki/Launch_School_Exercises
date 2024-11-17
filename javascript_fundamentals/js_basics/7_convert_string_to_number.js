// For this exercise we're going to learn more about type conversion by implementing our own parseInt function that converts a string of numeric characters (including an optional plus or minus sign) to a number.
// The function takes a string of digits as an argument, and returns the appropriate number. Do not use any of the built-in functions for converting a string to a number type.
// For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

function stringToInteger(string) {
  const DIGITS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  let result = 0;
  for (let digit of string.split('')) result = (result * 10) + DIGITS[digit];
  return result;
}

console.log(stringToInteger('4321'));      // 4321
console.log(stringToInteger('570'));       // 570
