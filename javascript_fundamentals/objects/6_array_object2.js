// A user wrote a function that takes an array as an argument and returns its average. Given the code below, the user expects the average function to return 5. Is the user's expectation correct? Why or why not?

const myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;

function average(array) {
  let sum = 0;

  for (let i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / array.length;
}

console.log(average(myArray));

// No, b/c the function sums both the elements & non-element properties in the array but only divides by the amount of elements (the length), non-element properties are not included in length property

// Refactor the average function so that it returns the result that the user expected, 5.

function averageRevised(array) {
  let sum = 0;

  for (let i = 0; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / array.length;
}

console.log(averageRevised(myArray));
