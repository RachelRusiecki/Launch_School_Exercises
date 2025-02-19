// Create a function named wrapInArray that takes a parameter that could either be a string or a number, and returns an array containing just that value.

function wrapInArray(input: string | number): Array<string | number> {
  return [input];
}

console.log(wrapInArray('hello'));
console.log(wrapInArray(100));
