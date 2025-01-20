/*

In this problem, you're presented with a nested array, matrix, which has two key characteristics:

Each subarray in the matrix is sorted in ascending order.
The first element of each subarray is larger than the final element of the preceding subarray.
Your task is to determine whether a given integer, target, exists within this nested array.

The time complexity of your solution should be O(log(M*N)).

*/

function findInNestedArray(matrix, target) {
  let left = 0;
  let right = matrix.length - 1;
  let nestedArray;

  while (left <= right) {
    let mid = Math.floor((left + right) / 2);
    if (matrix[mid][0] <= target && matrix[mid][matrix.length - 1] >= target) {
      nestedArray = mid;
      break;
    } else if (matrix[mid][0] > target) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }

  if (nestedArray === undefined) return false;

  left = 0;
  right = matrix[nestedArray].length - 1;

  while (left <= right) {
    let mid = Math.floor((left + right) / 2);
    if (matrix[nestedArray][mid] === target) {
      return true;
    } else if (matrix[nestedArray][mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return false;
}

console.log(findInNestedArray([[4, 8, 12], [16, 20, 24], [28, 32, 36]], 20) === true);
console.log(findInNestedArray([[3, 6, 9], [12, 15, 18], [21, 24, 27]], 27) === true);
console.log(findInNestedArray([[1, 3, 5], [7, 9, 11], [13, 15, 17]], 19) === false);
console.log(findInNestedArray([[10, 20, 30], [40, 50, 60], [70, 80, 90]], 10) === true);
console.log(findInNestedArray([[15, 25, 35], [45, 55, 65], [75, 85, 95]], 5) === false);