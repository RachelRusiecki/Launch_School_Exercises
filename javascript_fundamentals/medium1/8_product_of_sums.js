// The productOfSums function shown below is expected to return the product of the sums of two arrays of numbers. Read through the following code. Will it produce the expected result? Why or why not?

function productOfSums(array1, array2) {
  let result = total(array1) * total(array2);
  return result;
}

function total(numbers) {
  let sum;

  for (let i = 0; i < numbers.length; i += 1) {
    sum += numbers[i];
  }

  sum;
}

console.log(productOfSums([1, 2, 3], [4, 5, 6]));

// No, b/c the total function just returns undefined b/c it does not have an explicit return keyword, even if it did, sum is assigned to NaN b/c it was declared but not initialized, this will return NaN
