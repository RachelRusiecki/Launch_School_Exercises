// Write a function that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the argument is a negative number, return it as-is.

function negative(number) {
  return -Math.abs(number);
}

console.log(negative(5));     // -5
console.log(negative(-3));    // -3
console.log(negative(0));     // -0

// An alternative solution would be to use the ternary operator (e.g., a ? b : c). If you haven't already used it, try refactoring the solution using the ternary operator.

function negativeTernary(number) {
  return number >= 0 ? -number : number;
}

console.log(negativeTernary(5));     // -5
console.log(negativeTernary(-3));    // -3
console.log(negativeTernary(0));     // -0
