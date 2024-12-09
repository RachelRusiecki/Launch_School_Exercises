/*

Write a function that rotates an array by moving the first element to the end of the array. Do not modify the original array.

If the input is not an array, return undefined.
If the input is an empty array, return an empty array.
Review the test cases below, then implement the solution accordingly.

---- PROBLEM ----

Input: array
Output: NEW rotated array

Explicit Rules:
- Move first element to end of array
- Do NOT mutate original array
- If arg is not array, return undefined
- If input array is empty, return empty array

Implicit Rules / Questions:
- If array only has single element, array will be the same
- Elements can be of any data rype, even nested arrays & objects
- Return undefined if no arg given
- Will there ever be more than 1 arg provided?   Yes, ignore all but first
- Will array ever be sparse?   No

---- DATA STRUCTURES ----

- Arrays

---- ALGORITHM ----

- Check if input is array, if not, return undefined
  - Check if input is array, return undefined if not

- Make copy of array
  - Slice input array to create copy

- Transform copy array to new elements
  - Iterate through copy array w/ map w/ index
    - If index is last (length - 1):
      - Return original array index 0
    - Else
      - Return original array index + 1

- Return copy array
  - Return transformed array

*/

function rotateArray(array) {
  if (!Array.isArray(array)) return undefined;

  return array.slice().map((_, index) => {
    return index === array.length - 1 ? array[0] : array[index + 1];
  });
}

console.log(rotateArray([7, 3, 5, 2, 9, 1]));          // [3, 5, 2, 9, 1, 7]
console.log(rotateArray(['a', 'b', 'c']));             // ["b", "c", "a"]
console.log(rotateArray(['a']));                       // ["a"]
console.log(rotateArray([1, 'a', 3, 'c']));            // ["a", 3, "c", 1]
console.log(rotateArray([{ a: 2 }, [1, 2], 3]));       // [[1, 2], 3, { a: 2 }]
console.log(rotateArray([]));                          // []
console.log(rotateArray([7, 3, 5, 2, 9, 1], 1));       // [3, 5, 2, 9, 1, 7]

// return `undefined` if the argument is not an array
console.log(rotateArray());                         // undefined
console.log(rotateArray(1));                        // undefined

// the input array is not mutated
const array = [1, 2, 3, 4];
console.log(rotateArray(array));                    // [2, 3, 4, 1]
console.log(array);                                 // [1, 2, 3, 4]
