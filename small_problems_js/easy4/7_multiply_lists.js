// Write a function that takes two array arguments, each containing a list of numbers, and returns a new array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

function multiplyList(numbers1, numbers2) {
  let products = [];
  for (let index = 0; index < numbers1.length; index += 1) {
    products.push(numbers1[index] * numbers2[index]);
  }

  return products;
}

console.log(multiplyList([3, 5, 7], [9, 10, 11]));
