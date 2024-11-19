// Write a function that combines two arrays passed as arguments, and returns a new array that contains all elements from both array arguments, with each element taken in alternation.
// You may assume that both input arrays are non-empty, and that they have the same number of elements.

function interleave(array1, array2) {
  const result = [];
  for (let index = 0; index < array1.length; index += 1) {
    result.push(array1[index], array2[index]);
  }

  return result;
}

console.log(interleave([1, 2, 3], ['a', 'b', 'c']));
