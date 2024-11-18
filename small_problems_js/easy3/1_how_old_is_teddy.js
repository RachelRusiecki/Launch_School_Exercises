// Build a program that randomly generates Teddy's age, and logs it to the console. Have the age be a random number between 20 and 200 (inclusive).

function randomBetween(min, max) {
  if (min > max) [min, max] = [max, min];
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

const age = randomBetween(200, 20);
console.log(`Teddy is ${age} years old!`);

// The randomBetween function used the Math.floor() method. Would it make a difference if the Math.round() method was used instead?
// If using Math.round() the + 1 would have to be deleted or else the random number could be rounded up higher than the max

// Also, how can we make the function more robust? What if the user inadvertently gave the inputs in reverse order (i.e., the value passed to min was greater than max)?
// added if clause
