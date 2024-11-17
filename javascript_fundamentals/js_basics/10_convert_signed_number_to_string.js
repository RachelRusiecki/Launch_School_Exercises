// In the previous exercise, you reimplemented a function that converts non-negative numbers to strings. In this exercise, you're going to extend that function by adding the ability to represent negative numbers.
// You may not use any of the standard conversion functions available in JavaScript, such as String(), Number.prototype.toString, or an expression such as '' + number. You may, however, use the integerToString function from the previous exercise.

function signedIntegerToString(integer) {
  if (integer < 0) {
    return `-${integerToString(-integer)}`;
  } else if (integer > 0) {
    return `+${integerToString(integer)}`;
  } else {
    return '0';
  }
}

function integerToString(integer) {
  const STRING_DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  let result = [];
  do {
    result.unshift(STRING_DIGITS[integer % 10]);
    integer = Math.floor(integer / 10);
  } while (integer > 0);

  return result.join('');
}

console.log(signedIntegerToString(4321));      // "+4321"
console.log(signedIntegerToString(-123));      // "-123"
console.log(signedIntegerToString(0));         // "0"

// What happens if you try to run this code?

function signedIntegerToStringRevised(integer) {
  if (integer < 0) {
    return `-${integerToString(-integer)}`;
  } else if (integer > 0) {
    return `+${integerToString(integer)}`;
  } else if (Object.is(integer, -0)) {
    return '-0';
  } else {
    return '0';
  }
}

console.log(signedIntegerToStringRevised(-0) === "-0");
