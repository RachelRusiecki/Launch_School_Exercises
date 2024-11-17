// What does the following code log? Why is this so?

let startingBalance = 1;
const chicken = 5;
const chickenQuantity = 7;

function totalPayable(item, quantity) {
  return startingBalance + (item * quantity);
}

startingBalance = 5;
console.log(totalPayable(chicken, chickenQuantity)); // 40

startingBalance = 10;
console.log(totalPayable(chicken, chickenQuantity)); // 45

// Prints 40 & 45 b/c stringBalance variable (not value) is w/in the function's closure, it keeps up to date with the current value of that variable as it changes.
