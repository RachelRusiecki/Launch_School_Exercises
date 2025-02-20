// Create a function printLength that takes a parameter which could either be a string or an array of strings. Using type narrowing, print the length of the string or the count of elements in the array to the console along with what type of the element was passed in.

function printLength(input: string | string[]): void {
  if (typeof input === 'string') {
    console.log(`String length: ${input.length}`);
  } else {
    console.log(`Array count: ${input.length}`);
  }
}

printLength('hello');
printLength(['hello', 'world']);
