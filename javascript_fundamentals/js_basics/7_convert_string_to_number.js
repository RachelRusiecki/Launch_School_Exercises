// For this exercise we're going to learn more about type conversion by implementing our own parseInt function that converts a string of numeric characters (including an optional plus or minus sign) to a number.

// The function takes a string of digits as an argument, and returns the appropriate number. Do not use any of the built-in functions for converting a string to a number type.

// For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

function stringToInteger(str) {
  const digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  for (let idx = str.length - 1; idx < str.length; idx += 1) {

  }
  return str.split()
}

console.log(stringToInteger('4321'));      // 4321
console.log(stringToInteger('570'));       // 570
