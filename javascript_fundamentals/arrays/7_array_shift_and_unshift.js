// In this exercise, you will implement your own versions of the Array.prototype.shift and Array.prototype.unshift methods. These methods manipulate the contents of an array starting from the first index.
// The shift method removes the first element from an array and returns that element; if the array is empty, shift returns undefined. The unshift method adds one or more elements to the start of an array and returns the new length of the array. Both methods mutate the original array.

function shift(arr) {
  return arr.splice(0, 1).pop();
}

function unshift(arr, ...values) {
  for (let idx = 0; idx < values.length; idx += 1) {
    arr.splice(idx, 0, values[idx]);
  }

  return arr.length;
}

console.log(shift([1, 2, 3]));                // 1
console.log(shift([]));                       // undefined
console.log(shift([[1, 2, 3], 4, 5]));        // [1, 2, 3]

console.log(unshift([1, 2, 3], 5, 6));        // 5
console.log(unshift([1, 2, 3]));              // 3
console.log(unshift([4, 5], [1, 2, 3]));      // 3

const testArray = [1, 2, 3];
console.log(shift(testArray));                // 1
console.log(testArray);                       // [2, 3]
console.log(unshift(testArray, 5));           // 3
console.log(testArray);                       // [5, 2, 3]

// If you haven't yet done so, reimplement the shift and unshift methods without using the splice method.

// function shift(arr) {
//   if (arr.length === 0) return undefined;
//   let result = arr[0];
//   for (let idx = 0; idx < arr.length - 1; idx += 1) arr[idx] = arr[idx + 1];
//   arr.length = arr.length - 1;
//   return result;
// }

// function unshift(arr, ...values) {
//   for (let idx = values.length; idx >= 0; idx -= 1) {
//     arr[idx + values.length] = arr[idx];
//   }

//   for (let idx = 0; idx < values.length; idx += 1) arr[idx] = values[idx];
//   return arr.length;
// }
