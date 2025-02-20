// Write a function logUnknown that takes a parameter of type unknown. Inside the function, use a type guard to check if the parameter is a string, and if so, log it to the console.

// Expected output:

// If the passed parameter is a string, it should be logged; otherwise, nothing happens.

function logUnknown(input: unknown): void {
  if (typeof input === 'string') console.log(input);
}

logUnknown('hello');
logUnknown(1);
