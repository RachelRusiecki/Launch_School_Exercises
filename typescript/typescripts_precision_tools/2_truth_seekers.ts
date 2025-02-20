// Define a function isStringArray that takes an array of unknown elements and uses a type predicate to check if the array only contains strings.

function isStringArray(array: unknown[]): array is string[] {
  return array.every(value => typeof value === 'string');
}

console.log(isStringArray([1, 2, 3]));
console.log(isStringArray(["test", "string"]));
