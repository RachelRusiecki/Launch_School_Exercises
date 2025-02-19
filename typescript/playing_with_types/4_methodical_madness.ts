// Create a function named toUpperCaseArray that takes an array of strings, converts each string to uppercase, and returns a new array.

// Expected outcome:

// When given ['hello', 'world'], the function returns ['HELLO', 'WORLD'].

function toUpperCaseArray(strings: string[]): string[] {
  return strings.map(string => string.toUpperCase());
}

console.log(toUpperCaseArray(['hello', 'world']));
