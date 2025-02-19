// Implement a generic function firstElement that takes an array of any type and returns the first element or undefined if the array is empty.

function firstElement<T>(array: T[]): T | undefined {
  return array[0];
}

console.log(firstElement([7, 9, 11]));
console.log(firstElement([]));
