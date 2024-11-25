// Write a function that takes two array arguments, each containing a list of numbers, and returns a new array containing the products of all combinations of number pairs that exist between the two arrays. The returned array should be sorted in ascending numerical order.
// You may assume that neither argument will be an empty array.

function multiplyAllPairs(list1, list2) {
  let result = [];
  list1.forEach(integer1 => {
    list2.forEach(integer2 => result.push(integer1 * integer2));
  });

  return result.sort((a, b) => a - b);
}

console.log(multiplyAllPairs([2, 4], [4, 3, 1, 2]));
